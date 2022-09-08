table 5157810 "Pmt. Import Interface"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Pmt. Import Interface';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(4; "Prefix Document No."; Code[10])
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
        field(10; "Interface Currency-ID"; Code[3])
        {
            Caption = 'Interface Currency-ID';
        }
        field(11; "Convert ANSI To ASCII"; Boolean)
        {
            Caption = 'Convert ANSI To ASCII';
        }
        field(12; "Import to Account Type"; Option)
        {
            Caption = 'Import to Account Type';
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(13; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
        }
        field(14; "General Interface"; Code[20])
        {
            Caption = 'General Interface';
            Enabled = false;
        }
        field(16; "Import via MT940"; Boolean)
        {
            Caption = 'Import via MT940';
        }
        field(17; "Unstructured Purposes"; Boolean)
        {
            Caption = 'Unstructured Purposes';
        }
        field(18; "Last Statement"; Integer)
        {
            Caption = 'Last Statement';
        }
        field(19; "Import to Template"; Code[10])
        {
            Caption = 'Import to Journal Template Name';
        }
        field(20; "Import to Batch"; Code[10])
        {
            Caption = 'Import to Journal Batch Name';
        }
        field(21; "Imported as"; Option)
        {
            BlankZero = true;
            Caption = 'Imported as';
            InitValue = "Bal. Account";
            OptionCaption = ',Account,Bal. Account';
            OptionMembers = ,Account,"Bal. Account";
        }
        field(22; "Fill Description as"; Option)
        {
            BlankZero = true;
            Caption = 'Fill description with';
            InitValue = Purpose;
            OptionCaption = ' ,Orderer,Posting Description,Purpose';
            OptionMembers = " ",Orderer,"Posting Description",Purpose;
        }
        field(23; "Last Statement No."; Code[10])
        {
            Caption = 'Last Statement No.';
        }
        field(24; "One Bal. Account per Register"; Boolean)
        {
            Caption = 'One Bal. Account per Register';
        }
        field(25; "Disable Application"; Boolean)
        {
            Caption = 'Disable Application';
        }
        field(26; "Treat as Bank Statement"; Boolean)
        {
            Caption = 'Treat as Bank Statement';
        }
        field(27; "Delete Entries after Posting"; Boolean)
        {
            Caption = 'Delete Entries after Posting';
        }
        field(28; "Mark MT942 as Statement"; Boolean)
        {
            Caption = 'Mark MT942 as Statement';
        }
        field(29; "Import Interim Entries"; Boolean)
        {
            Caption = 'Import Interim Entries';
        }
        field(30; "Process MBS"; Boolean)
        {
            Caption = 'Process 940b/CAMT54 Files';
        }
        field(35; "Check Payment Sign"; Boolean)
        {
            Caption = 'Check sign';
        }
        field(36; GUIDCode; Guid)
        {
            Caption = 'GUIDCode';
            Editable = false;
        }
        field(37; "Use Declared Amounts"; Boolean)
        {
            Caption = 'Use "Declared" Amounts';
        }
        field(38; "Created At"; DateTime)
        {
            Caption = 'Created on';
        }
        field(39; "Created From"; Code[50])
        {
            Caption = 'Created by';
        }
        field(40; "Last Statement Date"; Date)
        {
            Caption = 'Last Statement Date';
        }
        field(41; "Import in two Lines"; Boolean)
        {
            Caption = 'Import in two Lines';
        }
        field(42; "Use Orig. Curr. Code"; Boolean)
        {
            Caption = 'Use Orig. Curr. Code in Bank Import';
        }
        field(43; "SVWZ-Tag not Provided"; Boolean)
        {
            Caption = 'SVWZ-Tag not Provided';
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
        field(10000; New; Boolean)
        {
            Caption = 'New';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Interface Currency-ID", "Interface Bank-ID", "Interface Account No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Interface Currency-ID", "Interface Bank-ID", "Interface Account No.")
        {
        }
    }
}

