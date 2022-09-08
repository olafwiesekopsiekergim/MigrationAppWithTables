table 5000212 "Project Account Budget Entry"
{
    Caption = 'Project Account Budget Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(3; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(7; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
        }
        field(8; "Amount Fix"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Fix';
        }
        field(9; "Amount Var"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Var';
        }
        field(11; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(15; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(16; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(20; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(21; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(22; "Budget Dimension 1 Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Budget Dimension 1 Code';
        }
        field(23; "Budget Dimension 2 Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Budget Dimension 2 Code';
        }
        field(24; "Budget Dimension 3 Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Budget Dimension 3 Code';
        }
        field(25; "Budget Dimension 4 Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Budget Dimension 4 Code';
        }
        field(26; "Budget Name"; Code[10])
        {
            Caption = 'Budget Name';
            TableRelation = "Cost Accounting Budget Name";
        }
        field(27; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
            TableRelation = "Business Unit";
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
        key(Key2; "Global Dimension 2 Code", Date)
        {
        }
        key(Key3; "Global Dimension 2 Code", "Project Account No.", "Reference Unit Code", "Global Dimension 1 Code", "Budget Name", Date)
        {
            SumIndexFields = Amount, "Amount Fix", "Amount Var", Quantity;
        }
        key(Key4; "Project Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", Date)
        {
            SumIndexFields = Amount, "Amount Fix", "Amount Var", Quantity;
        }
        key(Key5; "Budget Name", "Project Account No.", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Budget Dimension 1 Code", "Budget Dimension 2 Code", "Budget Dimension 3 Code", "Budget Dimension 4 Code", Date)
        {
            SumIndexFields = Amount, "Amount Fix", "Amount Var", Quantity;
        }
        key(Key6; "Budget Name", "Reference Unit Code", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Budget Dimension 1 Code", "Budget Dimension 2 Code", "Budget Dimension 3 Code", "Budget Dimension 4 Code", Date)
        {
            SumIndexFields = Quantity;
        }
        key(Key7; "Budget Name", "Allocation Header Code", Date)
        {
        }
        key(Key8; "Budget Name", "Project Account No.", Date)
        {
            SumIndexFields = Amount, "Amount Fix", "Amount Var", Quantity;
        }
        key(Key9; "Budget Name", "Reference Unit Code", Date)
        {
            SumIndexFields = Quantity;
        }
    }

    fieldgroups
    {
    }
}

