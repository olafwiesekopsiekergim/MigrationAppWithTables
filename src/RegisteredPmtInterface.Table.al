table 5158000 "Registered Pmt. Interface"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.12   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Registered Pmt. Interface';
    DataPerCompany = false;

    fields
    {
        field(1; GUIDCode; Guid)
        {
            Caption = 'Registration Key';
            Editable = false;
        }
        field(2; "Is in Company"; Text[30])
        {
            Caption = 'Is in Company';
            Editable = false;
            TableRelation = Company;
        }
        field(3; "Goes to Company"; Text[30])
        {
            Caption = 'Goes to Company';
            Editable = false;
            TableRelation = Company;
        }
        field(4; "Code"; Code[20])
        {
            Caption = 'Code';
            Editable = false;
        }
        field(5; "Prefix Document No."; Code[10])
        {
            Caption = 'Prefix Document No.';
        }
        field(6; "Interface Account No."; Code[50])
        {
            Caption = 'Interface Account No.';
        }
        field(7; "Import to Company"; Text[30])
        {
            Caption = 'Import to Company';
            TableRelation = Company;
        }
        field(8; "Interface Bank-ID"; Code[50])
        {
            Caption = 'Interface Bank-ID';
        }
        field(9; "Interface Currency-ID"; Code[3])
        {
            Caption = 'Interface Currency-ID';
        }
        field(10; "Convert ANSI To ASCII"; Boolean)
        {
            Caption = 'Convert ANSI To ASCII';
        }
        field(11; "Import to Account Type"; Option)
        {
            Caption = 'Import to Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(12; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
        }
        field(13; "General Interface"; Code[20])
        {
            Caption = 'General Interface';
            Enabled = false;
        }
        field(14; "Import via MT940"; Boolean)
        {
            Caption = 'Import via MT940';
        }
        field(15; "Unstructured Purposes"; Boolean)
        {
            Caption = 'Unstructured Purposes';
        }
        field(16; "Last Statement"; Integer)
        {
            Caption = 'Last Statement';
        }
        field(17; "Import to Template"; Code[10])
        {
            Caption = 'Import to Journal Template Name';
        }
        field(18; "Import to Batch"; Code[10])
        {
            Caption = 'Import to Journal Batch Name';
        }
        field(19; "Imported as"; Option)
        {
            BlankZero = true;
            Caption = 'Imported as';
            InitValue = "Bal. Account";
            OptionCaption = ',Account,Bal. Account';
            OptionMembers = ,Account,"Bal. Account";
        }
        field(20; "Fill Description as"; Option)
        {
            BlankZero = true;
            Caption = 'Fill description with';
            InitValue = Purpose;
            OptionCaption = ' ,Orderer,Posting Description,Purpose';
            OptionMembers = " ",Orderer,"Posting Description",Purpose;
        }
        field(21; "Last Statement No."; Code[10])
        {
            Caption = 'Last Statement No.';
        }
        field(22; "One Bal. Account per Register"; Boolean)
        {
            Caption = 'One Bal. Account per Register';
        }
        field(23; "Disable Application"; Boolean)
        {
            Caption = 'Disable Application';
        }
        field(24; "Treat as Bank Statement"; Boolean)
        {
            Caption = 'Treat as Bank Statement';
        }
        field(25; "Delete Entries after Posting"; Boolean)
        {
            Caption = 'Delete Entries after Posting';
        }
        field(26; "Mark MT942 as Statement"; Boolean)
        {
            Caption = 'Mark MT942 as Statement';
        }
        field(27; "Import Interim Entries"; Boolean)
        {
            Caption = 'Import Interim Entries';
        }
        field(28; "Process MBS"; Boolean)
        {
            Caption = 'Process 940b/CAMT54 Files';
        }
        field(29; "Check Payment Sign"; Boolean)
        {
            Caption = 'Check sign';
        }
        field(30; "Use Declared Amounts"; Boolean)
        {
            Caption = 'Use "Declared" Amounts';
        }
        field(31; "Created At"; DateTime)
        {
            Caption = 'Created on';
        }
        field(32; "Created From"; Code[50])
        {
            Caption = 'Created by';
        }
        field(33; "Last Statement Date"; Date)
        {
            Caption = 'Last Statement Date';
        }
        field(34; "Import in two Lines"; Boolean)
        {
            Caption = 'Import in two Lines';
        }
        field(35; "Use Orig. Curr. Code"; Boolean)
        {
            Caption = 'Use Orig. Curr. Code in Bank Import';
        }
        field(36; "SVWZ-Tag not Provided"; Boolean)
        {
            Caption = 'SVWZ-Tag not Provided';
        }
        field(38; New; Boolean)
        {
            Caption = 'New';
        }
        field(45; "Preallocation Statement No."; Option)
        {
            Caption = 'Preallocation Statement No.';
            OptionCaption = 'Counter,Date';
            OptionMembers = Counter,Date;
        }
        field(46; "Find Statement No. first"; Option)
        {
            Caption = 'Find Statement No. first';
            OptionCaption = 'LglSeqNb,ElctrncSeqNb';
            OptionMembers = LglSeqNb,ElctrncSeqNb;
        }
    }

    keys
    {
        key(Key1; GUIDCode)
        {
            Clustered = true;
        }
        key(Key2; "Code", "Goes to Company")
        {
        }
    }

    fieldgroups
    {
    }
}

