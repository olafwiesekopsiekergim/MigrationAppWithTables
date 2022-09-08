table 5138364 "Exp Atlas Table Reference"
{
    Caption = 'Atlas Table Reference';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(5; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(10; "Relation Table"; Integer)
        {
            BlankZero = true;
            Caption = 'Relation Table';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(50; "No. of Codes"; Integer)
        {
            CalcFormula = Count ("Exp Atlas Table Code" WHERE ("Table Code" = FIELD (Code)));
            Caption = 'No. of Codes';
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

