table 42014845 "Servotion Answer"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-12-14 SNAD1.0.0.69 HZS
    //   - Add new DataType "Caption" for empty question to act as a header of answers
    //   - New fields to set caption and background colors for answers
    // 
    // 2018-01-09 SNAD1.0.0.70 HZS
    //   - Set Option Code to Answer instead of Description
    // 2019-05-08 SNAD1.0.0.74 HZS
    //   - New FlowField Archived added
    //   - Omit SetValidParentdAnswerCondition() in case of offline MobileNAV calls.
    // 
    // 2019-10-16 MNDU5.0 MAJORT
    //   - Resource No added
    // 
    // 2022-03-04 MNDU7.0 MAJORT
    //   - Resource No. 2 added

    Caption = 'Servotion Answer';

    fields
    {
        field(1; "Answer Group No."; Code[20])
        {
            Caption = 'Answer Group No.';
            TableRelation = "Servotion Answer Group";
        }
        field(2; "Question No."; Code[20])
        {
            Caption = 'Question No.';
            TableRelation = "Servotion Question";
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
        field(6; Answer; Text[250])
        {
            Caption = 'Answer';
        }
        field(7; "Answer DateTime"; DateTime)
        {
            Caption = 'Answer DateTime';
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(9; Answer_Integer; Integer)
        {
            Caption = 'Answer';
        }
        field(10; Answer_Decimal; Decimal)
        {
            Caption = 'Answer';
        }
        field(11; Answer_Date; Date)
        {
            Caption = 'Answer';
        }
        field(12; Answer_DT; DateTime)
        {
            Caption = 'Answer';
        }
        field(13; Answer_Time; Time)
        {
            Caption = 'Answer';
        }
        field(14; Answer_Option; Text[250])
        {
            Caption = 'Answer';
        }
        field(15; "Valid Parent Answer Conditions"; Boolean)
        {
            Caption = 'Valid Parent Answer Conditions';
        }
        field(21; "Use MobileNAV General Setup"; Boolean)
        {
            Caption = 'Use MobileNAV General Setup';
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
        field(30; Archived; Boolean)
        {
            CalcFormula = Lookup ("Servotion Answer Group".Archived WHERE ("Answer Group No." = FIELD ("Answer Group No.")));
            Caption = 'Archived';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50000; "Resource No."; Code[20])
        {
            CalcFormula = Lookup ("Servotion Answer Group"."Resource No." WHERE ("Answer Group No." = FIELD ("Answer Group No.")));
            FieldClass = FlowField;
        }
        field(50001; "Resource No. 2"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; "Answer Group No.", "Question No.")
        {
            Clustered = true;
        }
        key(Key2; Position)
        {
        }
        key(Key3; "Resource No. 2", Position)
        {
        }
    }

    fieldgroups
    {
    }
}

