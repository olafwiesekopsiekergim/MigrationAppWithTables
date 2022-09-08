table 5292371 "PR - Guarantee"
{
    Caption = 'Guarantee';

    fields
    {
        field(1; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Table" = CONST (18)) Customer
            ELSE
            IF ("Source Table" = CONST (23)) Vendor
            ELSE
            IF ("Source Table" = CONST (167)) Job
            ELSE
            IF ("Source Table" = CONST (38)) "Purchase Header"."No."
            ELSE
            IF ("Source Table" = CONST (270)) "Bank Account";
        }
        field(2; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(5; "Source Table"; Integer)
        {
            Caption = 'Source Table';
        }
        field(6; "Source Description"; Text[50])
        {
            Caption = 'Source Description';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(20; "Guarantee Type"; Code[20])
        {
            Caption = 'Guarantee Type';
            TableRelation = "PR - Guarantee Type";
        }
        field(21; "Guarantee Type Description"; Text[80])
        {
            CalcFormula = Lookup ("PR - Guarantee Type".Description WHERE (Code = FIELD ("Guarantee Type")));
            Caption = 'Guarantee Type Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Guarantee Channel"; Option)
        {
            Caption = 'Guarantee Channel';
            Description = ' ,Holder,Surety';
            OptionCaption = ' ,Holder,Surety';
            OptionMembers = " ",Holder,Surety;
        }
        field(26; "Guarantee No."; Text[30])
        {
            Caption = 'Guarantee No.';
        }
        field(30; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(31; Duration; DateFormula)
        {
            Caption = 'Duration';
        }
        field(35; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(36; "Return Notation"; Text[50])
        {
            Caption = 'Return Notation';
        }
        field(40; "Contact Type"; Option)
        {
            Caption = 'Contact Type';
            Description = ' ,Contact,Customer,Vendor';
            OptionCaption = ' ,Contact,Customer,Vendor';
            OptionMembers = " ",Contact,Customer,Vendor;
        }
        field(41; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = 'MTR';
            TableRelation = IF ("Contact Type" = CONST (Contact)) Contact
            ELSE
            IF ("Contact Type" = CONST (Customer)) Customer
            ELSE
            IF ("Contact Type" = CONST (Vendor)) Vendor;
        }
        field(42; "Contact Name"; Text[50])
        {
            Caption = 'Contact Name';
        }
        field(45; "Contact Bank"; Text[50])
        {
            Caption = 'Contact Bank';
        }
        field(50; "Date Approval"; Date)
        {
            Caption = 'Date Approval';
        }
        field(60; "Date Release"; Date)
        {
            Caption = 'Date Release';
        }
        field(65; "Date Claimed back"; Date)
        {
            Caption = 'Date Claimed back';
        }
        field(70; "Date Obtained"; Date)
        {
            Caption = 'Date Obtained';
        }
        field(75; "Date Back to Bank"; Date)
        {
            Caption = 'Date Back to Bank';
        }
        field(80; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = "Bank Account";
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(100; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Description = 'TR Currency';
            TableRelation = Currency;
        }
        field(101; "Original Amount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Original Amount';
            DecimalPlaces = 2 : 2;
        }
        field(110; "Guarantee Amount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Guarantee Amount';
            DecimalPlaces = 2 : 2;
        }
        field(120; "Remaining Amount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Remaining Amount';
            DecimalPlaces = 2 : 2;
        }
        field(130; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
        }
        field(140; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292371),
                                                               Code1 = FIELD ("Source No."),
                                                               Int1 = FIELD ("No.")));
            Caption = 'Job Comment';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(150; "Drawer Type"; Option)
        {
            Caption = 'Drawer Type';
            OptionCaption = ' ,Contact,Customer,Vendor';
            OptionMembers = "  ",Contact,Customer,Vendor;
        }
        field(160; "Drawer No."; Code[20])
        {
            Caption = 'Drawer No.';
            TableRelation = IF ("Drawer Type" = CONST (Contact)) Contact
            ELSE
            IF ("Drawer Type" = CONST (Customer)) Customer
            ELSE
            IF ("Drawer Type" = CONST (Vendor)) Vendor;
        }
        field(170; "Date Drawing"; Date)
        {
            Caption = 'Date Drawing';
        }
    }

    keys
    {
        key(Key1; "Source Table", "Source No.", "No.")
        {
            Clustered = true;
        }
        key(Key2; "Contact Type", "Contact No.")
        {
        }
        key(Key3; "Bank Account No.")
        {
        }
    }

    fieldgroups
    {
    }
}

