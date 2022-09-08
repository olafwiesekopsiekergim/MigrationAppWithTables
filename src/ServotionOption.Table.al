table 42014847 "Servotion Option"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-12-14 SNAD1.0.0.69 HZS
    //   - New flowfield "Related Questions" added to see how many questions are using this option.


    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(3; "Related Questions"; Integer)
        {
            CalcFormula = Count ("Servotion Question Option" WHERE ("Option Code" = FIELD (Code)));
            Caption = 'Related Questions';
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

