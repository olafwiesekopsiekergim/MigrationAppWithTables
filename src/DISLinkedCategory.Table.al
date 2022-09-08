table 5100906 "DIS - Linked Category"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Linked Category';

    fields
    {
        field(1; "Category Code"; Code[20])
        {
            Caption = 'Category Code';
            TableRelation = "DIS - Category";
        }
        field(5; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(6; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            TableRelation = "DIS - Partner";
        }
        field(7; "Sequence Code"; Code[20])
        {
            Caption = 'Sequence Code';
            TableRelation = "DIS - Sequence Header";
        }
        field(8; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool Code';
            TableRelation = "DIS - Record Pool";
        }
        field(20; "Category Name"; Text[50])
        {
            CalcFormula = Lookup("DIS - Category".Name WHERE(Code = FIELD("Category Code")));
            Caption = 'Category Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Category Code", "Mapping Code", "Partner Code", "Sequence Code", "Record Pool Code")
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
    }
}

