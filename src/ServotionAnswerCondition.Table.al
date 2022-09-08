table 42014846 "Servotion Answer Condition"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-12-14 SNAD1.0.0.69 HZS
    //   - Copy parent question GUID for data transfer
    // 
    // 2018-01-09 SNAD1.0.0.70 HZS
    //   - Validate Option Code instead of Description to Condition Value

    Caption = 'Servotion Answer Condition';

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
        field(3; "Question Group Code"; Code[20])
        {
            Caption = 'Question Group Code';
            TableRelation = "Servotion Question Group";
        }
        field(4; "Parent Question No."; Code[20])
        {
            Caption = 'Parent Question No.';
            TableRelation = "Servotion Question" WHERE ("Question Group Code" = FIELD ("Question Group Code"));
        }
        field(5; "Condition Comparsion Type"; Option)
        {
            Caption = 'Condition Comparsion Type';
            OptionCaption = '=,<>,<,<=,>,>=';
            OptionMembers = Equal,NotEqual,Less,LessOrEqual,Greater,GreaterOrEqual;
        }
        field(6; "Condition Value"; Text[250])
        {
            Caption = 'Condition Value';
        }
        field(108; "Parent Question GUID"; Guid)
        {
            Caption = 'Parent Question GUID';
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

