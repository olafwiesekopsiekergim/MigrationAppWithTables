table 5000205 "Proj. Acc. Journal Assignment"
{
    Caption = 'Project Acc. Journal Assignment';
    DataCaptionFields = "Journal Line No.";

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Cost Account Journal Template";
        }
        field(2; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Project Account Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(3; "Journal Line No."; Integer)
        {
            Caption = 'Journal Line No.';
            TableRelation = "Gen. Journal Line"."Line No." WHERE ("Journal Template Name" = FIELD ("Journal Template Name"),
                                                                  "Journal Batch Name" = FIELD ("Journal Batch Name"));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            Description = 'necessary for base functions';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(7; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(8; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(9; "Assignment Quantity"; Decimal)
        {
            Caption = 'Assignment Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(10; "Assignment %"; Decimal)
        {
            Caption = 'Assignment %';
            DecimalPlaces = 2 : 2;
        }
        field(11; "Allocated Operational Amount"; Decimal)
        {
            Caption = 'Allocated Operational Amount';
        }
        field(12; "All. Operational Amount Fix"; Decimal)
        {
            Caption = 'All. Operational Amount Fix';
        }
        field(13; "All. Operational Amount Var"; Decimal)
        {
            Caption = 'All. Operational Amount Var';
        }
        field(14; "Allocated Tax Amount"; Decimal)
        {
            Caption = 'Allocated Tax Amount';
        }
        field(15; "Allocated Tax Amount Fix"; Decimal)
        {
            Caption = 'Allocated Tax Amount Fix';
        }
        field(16; "Allocated Tax Amount Var"; Decimal)
        {
            Caption = 'Allocated Tax Amount Var';
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
        key(Key1; "Journal Template Name", "Journal Batch Name", "Journal Line No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = "Allocated Operational Amount", "All. Operational Amount Fix", "All. Operational Amount Var", "Allocated Tax Amount", "Allocated Tax Amount Fix", "Allocated Tax Amount Var";
        }
    }

    fieldgroups
    {
    }
}

