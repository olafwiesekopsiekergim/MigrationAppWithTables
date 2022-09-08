table 5056303 "Alternative Line/T"
{
    Caption = 'Alternative Line';
    Description = 'GrAlterLine';

    fields
    {
        field(1; "Alternative No."; Code[10])
        {
            Caption = 'Alternative No.';
            NotBlank = true;
            TableRelation = "Alternative/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; "Day Object No."; Code[10])
        {
            Caption = 'Day Object No.';
            TableRelation = "Day Object/T"."No.";
        }
        field(11; "Day Object Description"; Text[50])
        {
            CalcFormula = Lookup ("Day Object/T".Description WHERE ("No." = FIELD ("Day Object No.")));
            Caption = 'Day Object Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Day Object Description 2"; Text[10])
        {
            CalcFormula = Lookup ("Day Object/T"."Description 2" WHERE ("No." = FIELD ("Day Object No.")));
            Caption = 'Day Object Description 2';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Alternative No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

