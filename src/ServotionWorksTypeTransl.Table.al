table 42014849 "Servotion Works. Type Transl."
{
    // 2018-12-07 SNAD1.0.0.72 MAJORT
    //   - Status Verb added

    Caption = 'Worksheet Type Translation';

    fields
    {
        field(1; "Workshift Type Code"; Code[20])
        {
            Caption = 'Worksheet Type Code';
            TableRelation = "Servotion Workshift Type";
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(3; "Start Verb"; Text[30])
        {
            Caption = 'Start Verb';
        }
        field(4; "Finish Verb"; Text[30])
        {
            Caption = 'Finish Verb';
        }
        field(5; "Status Verb"; Text[30])
        {
        }
    }

    keys
    {
        key(Key1; "Workshift Type Code", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

