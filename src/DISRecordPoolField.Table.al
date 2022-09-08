table 5100933 "DIS - Record Pool Field"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Field';
    DataPerCompany = false;

    fields
    {
        field(1; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool Code';
            TableRelation = "DIS - Record Pool";
        }
        field(5; "Rec. Field"; Text[250])
        {
            Caption = 'Field';
            NotBlank = true;
        }
        field(6; "Rec. Table No."; Integer)
        {
            CalcFormula = Lookup ("DIS - Record Pool"."Table No." WHERE (Code = FIELD ("Record Pool Code")));
            Caption = 'Table No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Rec. Field Caption"; Text[80])
        {
            Caption = 'Field Caption';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Record Pool Code", "Rec. Field")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

