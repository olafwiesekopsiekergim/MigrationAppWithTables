table 42014843 "Servotion Question Translation"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.

    Caption = 'Servotion Question Translation';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Question Group,Question,Option';
            OptionMembers = QuestionGroup,Question,Option;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

