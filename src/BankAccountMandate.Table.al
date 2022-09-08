table 5157913 "Bank Account Mandate"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    // -----------------------------------------------------

    Caption = 'Bank Account Mandate';
    Permissions = TableData "Customer Bank Account" = rm,
                  TableData "Vendor Bank Account" = rm;

    fields
    {
        field(1; "Account Type"; Option)
        {
            Caption = 'Account Type';
            NotBlank = true;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            NotBlank = true;
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(4; "Code"; Code[10])
        {
            Caption = 'Code';
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Bank Account".Code WHERE ("Vendor No." = FIELD ("Account No."));
        }
        field(5; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate Id';
        }
        field(6; IBAN; Code[50])
        {
            Caption = 'IBAN';
            Editable = false;
        }
        field(7; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
            Editable = false;
        }
        field(10; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
        }
        field(11; "Mandate Type"; Option)
        {
            Caption = 'SEPA Type';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(12; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            InitValue = "Recurrent Payment";
            OptionCaption = 'One-off Payment,Recurrent Payment';
            OptionMembers = "One-off Payment","Recurrent Payment";
        }
        field(14; "Mandate On Behalf of Owner"; Boolean)
        {
            Caption = 'On Behalf of Owner';
        }
        field(15; "Mandate Is Electronic"; Boolean)
        {
            Caption = 'e-Mandate';
        }
        field(16; "Mandate Last Used"; Date)
        {
            Caption = 'Last Used';
        }
        field(17; "Mandate Status"; Option)
        {
            BlankZero = true;
            Caption = 'Status of Mandate';
            InitValue = FRST;
            OptionCaption = ' ,First,Recurring,Final';
            OptionMembers = " ",FRST,RCUR,FNAL;
        }
        field(20; "Maximum Amount"; Decimal)
        {
            Caption = 'Maximum Amount';
        }
        field(21; "Maximum Usage"; Integer)
        {
            Caption = 'Maximum Usage';
        }
        field(22; "Valid from Date"; Date)
        {
            Caption = 'Valid from Date';
        }
        field(23; "Valid to Date"; Date)
        {
            Caption = 'Valid to Date';
        }
        field(24; Usage; Integer)
        {
            Caption = 'Usage';
            Editable = false;
        }
        field(25; "Single Payment"; Boolean)
        {
            Caption = 'Single Payment';
        }
        field(26; Comment; Boolean)
        {
            CalcFormula = Exist ("Payment Comment Line" WHERE ("Table Name" = CONST ("Bank Account Mandat"),
                                                              "No." = FIELD ("Mandate ID")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; OrgnlMndtId; Code[35])
        {
            Caption = 'OrgnlMndtId';
            Editable = false;
        }
        field(28; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
        }
    }

    keys
    {
        key(Key1; "Mandate ID")
        {
            Clustered = true;
        }
        key(Key2; "Account Type", "Account No.", "Code", "Mandate ID")
        {
        }
    }

    fieldgroups
    {
    }
}

