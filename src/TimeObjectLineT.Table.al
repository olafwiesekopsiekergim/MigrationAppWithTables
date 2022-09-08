table 5056301 "Time Object Line/T"
{
    Caption = 'Time Object Line';
    Description = 'GrTObjLine';

    fields
    {
        field(1; "Time Object No."; Code[10])
        {
            Caption = 'Time Object No.';
            NotBlank = true;
            TableRelation = "Time Object/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(3; Week; Integer)
        {
            Caption = 'Week';
            Editable = false;
        }
        field(4; Weekday; Text[10])
        {
            Caption = 'Weekday';
            Editable = false;
        }
        field(5; "Target Hrs. Day"; Decimal)
        {
            Caption = 'Target Hrs. Day';
            Editable = false;
        }
        field(6; "Target Hrs. Sum"; Decimal)
        {
            Caption = 'Target Hrs. Sum';
            Editable = false;
        }
        field(7; "Weekday Number"; Integer)
        {
            Caption = 'Weekday Number';
            Editable = false;
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
        field(12; "Alternative No."; Code[10])
        {
            Caption = 'Alternative No.';
            TableRelation = "Alternative/T"."No.";
        }
        field(13; "Alternative Description"; Text[50])
        {
            CalcFormula = Lookup ("Alternative/T".Description WHERE ("No." = FIELD ("Alternative No.")));
            Caption = 'Alternative Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Day Object No. Plan B"; Code[10])
        {
            Caption = 'Day Object No. Plan B';
            TableRelation = "Day Object/T"."No.";
        }
        field(15; "Day Object Description Plan B"; Text[50])
        {
            CalcFormula = Lookup ("Day Object/T".Description WHERE ("No." = FIELD ("Day Object No. Plan B")));
            Caption = 'Day Object Description Plan B';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Time Object No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

