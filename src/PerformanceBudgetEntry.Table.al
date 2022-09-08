table 5000083 "Performance Budget Entry"
{
    Caption = 'Performance Budget Entry';

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
        field(5; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(6; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(12; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(13; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User;
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(15; "Budget Dimension 1 Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Budget Dimension 1 Code';
        }
        field(16; "Budget Dimension 2 Code"; Code[20])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Budget Dimension 2 Code';
        }
        field(17; "Budget Dimension 3 Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Budget Dimension 3 Code';
        }
        field(18; "Budget Dimension 4 Code"; Code[20])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Budget Dimension 4 Code';
        }
        field(19; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(20; "Business Unit Code"; Code[10])
        {
            Caption = 'Business Unit Code';
        }
        field(21; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
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
        key(Key3; "Global Dimension 1 Code", "Reference Unit Code")
        {
        }
        key(Key4; "Budget Name", "Global Dimension 1 Code", "Reference Unit Code", Date)
        {
            SumIndexFields = Quantity;
        }
        key(Key5; "Budget Name", "Reference Unit Code", "Business Unit Code", "Global Dimension 1 Code", "Global Dimension 2 Code", "Budget Dimension 1 Code", "Budget Dimension 2 Code", "Budget Dimension 3 Code", "Budget Dimension 4 Code", Date)
        {
            SumIndexFields = Quantity;
        }
        key(Key6; "Budget Name", "Reference Unit Code", Date)
        {
            SumIndexFields = Quantity;
        }
    }

    fieldgroups
    {
    }
}

