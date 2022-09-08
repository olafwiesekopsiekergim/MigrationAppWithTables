table 5100920 "DIS - Sequence Header"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Sequence Header';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; Active; Boolean)
        {
            Caption = 'Active';
            InitValue = true;
        }
        field(15; "Processing By"; Code[50])
        {
            Caption = 'Processing By';
            TableRelation = User."User Name";
        }
        field(80; Categories; Boolean)
        {
            CalcFormula = Exist("DIS - Linked Category" WHERE("Sequence Code" = FIELD(Code),
                                                               "Category Code" = FIELD("Category Filter")));
            Caption = 'Categories';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Category Filter"; Code[20])
        {
            Caption = 'Category Filter';
            FieldClass = FlowFilter;
        }
        field(95; "All Sequence Lines Active"; Boolean)
        {
            CalcFormula = - Exist("DIS - Sequence Line" WHERE("Sequence Code" = FIELD(Code),
                                                              Active = CONST(false)));
            Caption = 'All Sequence Lines Active';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Active)
        {
        }
    }
}

