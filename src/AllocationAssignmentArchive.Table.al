table 5000067 "Allocation Assignment Archive"
{
    Caption = 'Allocation Assignment Archiv';
    DataCaptionFields = "Allocation Header Code", "Allocation Line No.";

    fields
    {
        field(1; "Allocation Header Code"; Code[10])
        {
            Caption = 'Allocation Header Code';
            TableRelation = "Allocation Header";
        }
        field(2; "Allocation Line No."; Integer)
        {
            Caption = 'Allocation Line No.';
            TableRelation = "Allocation Line"."Line No." WHERE ("Allocation Header Code" = FIELD ("Allocation Header Code"));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(5; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(6; "Assignment Quantity"; Decimal)
        {
            Caption = 'Assignment Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(9; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(10; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(11; "Assignment %"; Decimal)
        {
            Caption = 'Assignment %';
            DecimalPlaces = 2 : 2;
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
    }

    keys
    {
        key(Key1; "Allocation Header Code", "Allocation Line No.", "Line No.", "Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

