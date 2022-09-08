table 5001921 "Mandate Archive"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================


    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(3; "Bank Account"; Code[10])
        {
            Caption = 'Bank Account';
            TableRelation = IF (Type = CONST (Customer)) "Customer Bank Account".Code
            ELSE
            IF (Type = CONST (Vendor)) "Vendor Bank Account".Code;
        }
        field(4; "Mandate valid after"; Date)
        {
            Caption = 'Mandate valid after';
        }
        field(5; "Mandate valid to"; Date)
        {
            Caption = 'Mandate valid to';
        }
        field(6; "Mandate valid to (manually)"; Date)
        {
            Caption = 'Mandate valid to (manually)';
        }
        field(7; "Mandate valid"; Boolean)
        {
            Caption = 'Mandate valid';
            InitValue = false;
        }
        field(8; "Withdrawel date"; Date)
        {
            Caption = 'Withdrawel date';
        }
        field(9; "Withdrawel Reason"; Code[10])
        {
            Caption = 'Withdrawel Reason';
        }
        field(10; "Single Mandate"; Boolean)
        {
            Caption = 'Single Mandate';
        }
        field(11; "Mandate type"; Option)
        {
            Caption = 'Mandate type';
            OptionCaption = ' ,Core,B2B,Cor1';
            OptionMembers = " ",Core,B2B,Cor1;
        }
        field(12; "Date last debit"; Date)
        {
            Caption = 'Date last debit';
        }
        field(13; "Debit type"; Option)
        {
            Caption = 'Debit type';
            OptionMembers = " ",FRST,RCUR,FNAL,OOFF;
        }
        field(14; "Dispatch type Pre-Notification"; Option)
        {
            Caption = 'Dispatch type Pre-Notification';
            OptionCaption = 'Invoice,Post,Fax,SMS,E-MMail';
            OptionMembers = Invoice,Post,Fax,SMS,"E-Mail";
        }
        field(15; "Date of mandate grant"; Date)
        {
            Caption = 'Date of mandate grant';
        }
        field(17; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(18; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Customer)) Customer."No."
            ELSE
            IF (Type = CONST (Vendor)) Vendor."No.";
        }
        field(20; "Mandate Delegation Code"; Code[10])
        {
            Caption = 'Mandate Delegation Code';
            TableRelation = "Mandate Delegation";
        }
        field(21; "Automatically created"; Boolean)
        {
            Caption = 'Automatically created';
        }
        field(22; "Last Due Date last SEPA"; Date)
        {
            Caption = 'Last Due Date SEPA';
        }
        field(23; "Applies-to Cust. Ledg. Entry"; Integer)
        {
            Caption = 'Applies-to Cust. Ledg. Entry';
            TableRelation = "Cust. Ledger Entry";
        }
        field(24; "Next debit is last"; Boolean)
        {
            Caption = 'Next debit is last';
        }
        field(25; "Last debit done"; Boolean)
        {
            Caption = 'Last debit done';
        }
        field(26; "Creditor-ID Vendor"; Code[35])
        {
            Caption = 'Creditor-ID (Vendor)';
        }
        field(29; "Transfererd to Mandate"; Code[20])
        {
            Caption = 'Transfererd to Mandate';
            Editable = false;
            TableRelation = Mandate WHERE (Code = FIELD ("Transfererd to Mandate"));
        }
        field(30; "Transfered at Date"; Date)
        {
            Caption = 'Transfered at Date';
            Editable = false;
        }
        field(31; "Transfered by User ID"; Code[50])
        {
            Caption = 'Transfered by User ID';
            Editable = false;
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(32; "Blocked by"; Option)
        {
            Caption = 'Blocked by';
            OptionCaption = ' ,Retoure';
            OptionMembers = " ",Retoure;
        }
        field(33; "Blocked by Cust. Ledg. Entry"; Integer)
        {
            Caption = 'Blocked by Cust. Ledg. Entry';
            TableRelation = "Cust. Ledger Entry";
        }
        field(100; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(101; "Archived by"; Code[50])
        {
            Caption = 'Archived By';
        }
        field(102; "Manual Change"; Boolean)
        {
            Caption = 'Manual Change';
        }
    }

    keys
    {
        key(Key1; "Code", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

