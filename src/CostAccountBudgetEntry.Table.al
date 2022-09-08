table 5000082 "Cost Account Budget Entry"
{
    Caption = 'Cost Account Budget Entry';
    DataCaptionFields = "Budget Name", "Global Dimension 1 Code", "Cost Account No.", "Reference Unit Code";

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Budget Name"; Code[10])
        {
            Caption = 'Budget Name';
            TableRelation = "Cost Accounting Budget Name";
        }
        field(3; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(6; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(7; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(8; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Reference Unit';
            OptionMembers = " ",Item,"Reference Unit";
        }
        field(9; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Reference Unit")) "Reference Unit"
            ELSE
            IF (Type = CONST (Item)) Item;
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Bal. Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Bal. Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(14; "Balance Cost Account No."; Code[20])
        {
            Caption = 'Balance Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(15; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(16; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(17; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(21; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(22; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(23; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(24; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
        }
        field(25; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(26; "Cost Rate Fix"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Cost Rate Fix';
        }
        field(27; "Cost Rate Var"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Cost Rate Var';
        }
        field(28; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(29; "Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Var';
        }
        field(30; "Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Fix';
        }
        field(31; "Budget Dimension 1 Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Budget Dimension 1 Code';
        }
        field(32; "Budget Dimension 2 Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Budget Dimension 2 Code';
        }
        field(33; "Budget Dimension 3 Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Budget Dimension 3 Code';
        }
        field(34; "Budget Dimension 4 Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Budget Dimension 4 Code';
        }
        field(35; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            TableRelation = "Allocation Header";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Reference Unit Code")
        {
        }
        key(Key3; "Cost Account No.", "Global Dimension 1 Code", "Reference Unit Code", "Budget Name", Date)
        {
            SumIndexFields = Quantity, Amount, "Amount Var", "Amount Fix";
        }
        key(Key4; "Global Dimension 1 Code", "Cost Account No.", "Reference Unit Code", "Budget Name", Date, "Global Dimension 2 Code")
        {
            SumIndexFields = Quantity, Amount, "Amount Var", "Amount Fix";
        }
        key(Key5; "Allocation Header Code", Date, "Budget Name")
        {
        }
        key(Key6; "Budget Name")
        {
        }
        key(Key7; "Budget Name", "Cost Account No.", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Budget Dimension 1 Code", "Budget Dimension 2 Code", "Budget Dimension 3 Code", "Budget Dimension 4 Code", Date)
        {
            SumIndexFields = Amount, "Amount Var", "Amount Fix";
        }
        key(Key8; "Budget Name", "Cost Account No.", Description, Date)
        {
        }
        key(Key9; "Budget Name", "Cost Account No.", Date)
        {
            SumIndexFields = Amount, "Amount Var", "Amount Fix";
        }
    }

    fieldgroups
    {
    }
}

