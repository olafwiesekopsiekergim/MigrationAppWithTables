table 310 "No. Series Relationship"
{
    Caption = 'No. Series Relationship';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "No. Series";
        }
        field(2; "Series Code"; Code[10])
        {
            Caption = 'Series Code';
            NotBlank = true;
            TableRelation = "No. Series";
        }
        field(3; Description; Text[50])
        {
            CalcFormula = Lookup ("No. Series".Description WHERE (Code = FIELD (Code)));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Series Description"; Text[50])
        {
            CalcFormula = Lookup ("No. Series".Description WHERE (Code = FIELD ("Series Code")));
            Caption = 'Series Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code", "Series Code")
        {
            Clustered = true;
        }
        key(Key2; "Series Code", "Code")
        {
        }
    }

    fieldgroups
    {
    }
}

