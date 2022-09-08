table 5000213 "Overhead Distribution"
{
    Caption = 'Overhead Distribution';

    fields
    {
        field(1; "Schedule Name"; Code[10])
        {
            Caption = 'Schedule Name';
            TableRelation = "Cost Account Schedule Name";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(4; "Assignment Quantity"; Decimal)
        {
            Caption = 'Assignment Quantity';
        }
        field(6; "Assignment %"; Decimal)
        {
            Caption = 'Assignment %';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(7; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
    }

    keys
    {
        key(Key1; "Schedule Name", "Global Dimension 1 Code", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Assignment Quantity";
        }
    }

    fieldgroups
    {
    }
}

