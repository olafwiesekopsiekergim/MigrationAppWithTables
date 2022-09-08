table 5103608 "Condition Entry Detail"
{
    Caption = 'Condition Entry Fields';

    fields
    {
        field(1; "Condition No."; Code[20])
        {
            Caption = 'Condition No.';
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(5; Value; Text[250])
        {
            Caption = 'Value';
        }
        field(6; "Previous Value"; Text[250])
        {
            Caption = 'Previous Value';
        }
        field(8; "Field Caption"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

