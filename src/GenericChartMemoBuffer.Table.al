table 9186 "Generic Chart Memo Buffer"
{
    Caption = 'Generic Chart Memo Buffer';

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
        field(4; "Language Name"; Text[50])
        {
            CalcFormula = Lookup (Language.Name WHERE (Code = FIELD ("Language Code")));
            Caption = 'Language Name';
            FieldClass = FlowField;
        }
        field(11; Memo1; Text[250])
        {
            Caption = 'Memo1';
        }
        field(12; Memo2; Text[250])
        {
            Caption = 'Memo2';
        }
        field(13; Memo3; Text[250])
        {
            Caption = 'Memo3';
        }
        field(14; Memo4; Text[250])
        {
            Caption = 'Memo4';
        }
        field(15; Memo5; Text[250])
        {
            Caption = 'Memo5';
        }
        field(16; Memo6; Text[250])
        {
            Caption = 'Memo6';
        }
        field(17; Memo7; Text[250])
        {
            Caption = 'Memo7';
        }
        field(18; Memo8; Text[250])
        {
            Caption = 'Memo8';
        }
        field(19; Memo9; Text[250])
        {
            Caption = 'Memo9';
        }
        field(20; Memo10; Text[250])
        {
            Caption = 'Memo10';
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

