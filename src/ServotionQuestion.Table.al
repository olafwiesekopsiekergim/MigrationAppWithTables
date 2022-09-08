table 42014838 "Servotion Question"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-12-14 SNAD1.0.0.69 HZS
    //   - Allow to modify some fields in case of existing answers.
    //   - Create GUID for questions
    //   - Add new DataType "Caption" for empty question to act as a header of questions
    //   - New fields to set caption and background colors for questions
    //   - Filter out caption typed answers for answers and filled answers
    //   - Add key Position

    Caption = 'Servotion Question';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Question Group Code"; Code[20])
        {
            Caption = 'Question Group Code';
            TableRelation = "Servotion Question Group";
        }
        field(3; Position; Integer)
        {
            Caption = 'Position';
        }
        field(4; "Data Type"; Option)
        {
            Caption = 'Data Type';
            OptionCaption = 'Text,Integer,Decimal,Date,DateTime,Time,Option,Caption';
            OptionMembers = Text,"Integer",Decimal,Date,DateTime,Time,Option,Caption;
        }
        field(5; Mandatory; Boolean)
        {
            Caption = 'Mandatory';
        }
        field(6; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(7; Enabled; Boolean)
        {
            Caption = 'Enabled';
        }
        field(8; "Valid From"; Date)
        {
            Caption = 'Valid From';
        }
        field(9; "Valid To"; Date)
        {
            Caption = 'Valid To';
        }
        field(10; Conditions; Integer)
        {
            CalcFormula = Count ("Servotion Question Condition" WHERE ("Question No." = FIELD ("No.")));
            Caption = 'Conditions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; Options; Integer)
        {
            CalcFormula = Count ("Servotion Question Option" WHERE ("Question No." = FIELD ("No.")));
            Caption = 'Options';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; Translations; Integer)
        {
            CalcFormula = Count ("Servotion Question Translation" WHERE (Type = FILTER (Question),
                                                                        Code = FIELD ("No.")));
            Caption = 'Translations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; Answers; Integer)
        {
            CalcFormula = Count ("Servotion Answer" WHERE ("Question No." = FIELD ("No."),
                                                          "Data Type" = FILTER (<> Caption)));
            Caption = 'Answers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Answers (Filled)"; Integer)
        {
            CalcFormula = Count ("Servotion Answer" WHERE ("Question No." = FIELD ("No."),
                                                          Answer = FILTER (<> ''),
                                                          "Data Type" = FILTER (<> Caption)));
            Caption = 'Answers (Filled)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Answer Conditions"; Integer)
        {
            CalcFormula = Count ("Servotion Answer Condition" WHERE ("Question No." = FIELD ("No."),
                                                                    "Question Group Code" = FIELD ("Question Group Code")));
            Caption = 'Answer Conditions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Use MobileNAV General Setup"; Boolean)
        {
            Caption = 'Use MobileNAV General Setup';
            InitValue = true;
        }
        field(22; "Caption Red"; Integer)
        {
            Caption = 'Red';
            MaxValue = 255;
            MinValue = 0;
        }
        field(23; "Caption Green"; Integer)
        {
            Caption = 'Green';
            MaxValue = 255;
            MinValue = 0;
        }
        field(24; "Caption Blue"; Integer)
        {
            Caption = 'Blue';
            MaxValue = 255;
            MinValue = 0;
        }
        field(25; "Caption ColorPicture"; BLOB)
        {
            Caption = 'Color';
            SubType = Bitmap;
        }
        field(27; "Background Red"; Integer)
        {
            Caption = 'Red';
            MaxValue = 255;
            MinValue = 0;
        }
        field(28; "Background Green"; Integer)
        {
            Caption = 'Green';
            MaxValue = 255;
            MinValue = 0;
        }
        field(29; "Background Blue"; Integer)
        {
            Caption = 'Blue';
            MaxValue = 255;
            MinValue = 0;
        }
        field(30; "Background ColorPicture"; BLOB)
        {
            Caption = 'Color';
            SubType = Bitmap;
        }
        field(107; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(108; "Question GUID"; Guid)
        {
            Caption = 'Question GUID';
            Editable = false;
        }
        field(50000; alwaysPrint; Boolean)
        {
            Description = '#AT';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; Position)
        {
        }
    }

    fieldgroups
    {
    }
}

