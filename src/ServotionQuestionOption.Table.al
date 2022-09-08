table 42014842 "Servotion Question Option"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-11-29 SNAD1.0.0.69 HZS
    //   - BugFix onInsert
    //   - Delete option translations onDelete

    Caption = 'Servotion Question Option';

    fields
    {
        field(1; "Question No."; Code[20])
        {
            Caption = 'Question No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Option Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = "Servotion Option";
        }
        field(4; Description; Text[250])
        {
            CalcFormula = Lookup ("Servotion Option".Description WHERE (Code = FIELD ("Option Code")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Question No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

