table 5100950 "DIS - Mapping"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Mapping';
    DataPerCompany = false;

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
        field(80; Categories; Boolean)
        {
            CalcFormula = Exist ("DIS - Linked Category" WHERE ("Mapping Code" = FIELD (Code),
                                                               "Category Code" = FIELD ("Category Filter")));
            Caption = 'Categories';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Category Filter"; Code[20])
        {
            Caption = 'Category Filter';
            FieldClass = FlowFilter;
        }
        field(85; "Mapping Versions"; Integer)
        {
            CalcFormula = Count ("DIS - Mapping Version" WHERE ("Mapping Code" = FIELD (Code)));
            Caption = 'Versions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(86; "Open Mapping Versions"; Integer)
        {
            CalcFormula = Count ("DIS - Mapping Version" WHERE ("Mapping Code" = FIELD (Code),
                                                               Status = CONST (Open)));
            Caption = 'Open Versions';
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
    }
}

