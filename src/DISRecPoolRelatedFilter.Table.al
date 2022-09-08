table 5100938 "DIS - Rec. Pool Related Filter"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Relation Filter';
    DataPerCompany = false;

    fields
    {
        field(1; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool';
            TableRelation = "DIS - Record Pool";
        }
        field(2; "Target Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = "DIS - Rec. Pool Related Table"."Table No." WHERE ("Record Pool Code" = FIELD ("Record Pool Code"));
        }
        field(5; "Target Field"; Text[250])
        {
            Caption = 'Field';
            NotBlank = true;
        }
        field(15; "Target Field Caption"; Text[80])
        {
            Caption = 'Field Caption';
            Editable = false;
        }
        field(31; "From Table No."; Integer)
        {
            CalcFormula = Lookup ("DIS - Record Pool"."Table No." WHERE (Code = FIELD ("Record Pool Code")));
            Caption = 'From Table No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "From Field"; Text[250])
        {
            Caption = 'Reference Field';
            NotBlank = true;
        }
        field(36; "From Field Caption"; Text[50])
        {
            Caption = 'Reference Field Caption';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Record Pool Code", "Target Table No.", "Target Field")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

