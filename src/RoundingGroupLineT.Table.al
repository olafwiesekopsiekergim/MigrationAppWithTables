table 5056310 "Rounding Group Line/T"
{
    Caption = 'Rounding Group Line';
    Description = 'GrRoundGrLine';

    fields
    {
        field(1; "Rounding Group No."; Code[20])
        {
            Caption = 'Rounding Group No.';
            NotBlank = true;
            TableRelation = "Rounding Group/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; "Rounding Object No."; Code[20])
        {
            Caption = 'Rounding Object No.';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(11; "Rounding Object Description"; Text[50])
        {
            CalcFormula = Lookup ("Rounding Object/T".Description WHERE ("No." = FIELD ("Rounding Object No.")));
            Caption = 'Rounding Object Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Rounding Object Description 2"; Text[10])
        {
            CalcFormula = Lookup ("Rounding Object/T"."Description 2" WHERE ("No." = FIELD ("Rounding Object No.")));
            Caption = 'Rounding Object Description 2';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Rounding Group No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

