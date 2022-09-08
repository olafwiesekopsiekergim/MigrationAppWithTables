table 42014851 "Servotion Service Duration"
{
    Caption = 'Servotion Service Duration';

    fields
    {
        field(1; "Symptom Code"; Code[10])
        {
            Caption = 'Symptom Code';
            NotBlank = true;
            TableRelation = "Servotion Symptom Code";
        }
        field(2; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Item,Service Item Group';
            OptionMembers = " ",Item,"Service Item Group";
        }
        field(3; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            TableRelation = IF ("Source Type" = CONST (Item)) Item
            ELSE
            IF ("Source Type" = CONST ("Service Item Group")) "Service Item Group";
        }
        field(21; "Default Service Dur. (Hours)"; Decimal)
        {
            Caption = 'Default Service Duration (Hours)';
            MinValue = 1;
            NotBlank = true;
        }
        field(22; "Calculated Serv. Dur.(Hours)"; Decimal)
        {
            Caption = 'Calculated Service Duration (Hours)';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Symptom Code", "Source Type", "Source Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

