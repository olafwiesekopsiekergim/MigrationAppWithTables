table 9185 "Generic Chart Captions Buffer"
{
    Caption = 'Generic Chart Captions Buffer';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            NotBlank = true;
            TableRelation = Language.Code;
        }
        field(3; Caption; Text[250])
        {
            Caption = 'Caption';
        }
        field(4; "Language Name"; Text[50])
        {
            CalcFormula = Lookup (Language.Name WHERE (Code = FIELD ("Language Code")));
            Caption = 'Language Name';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

