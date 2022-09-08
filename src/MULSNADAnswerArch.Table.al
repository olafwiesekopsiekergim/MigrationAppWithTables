table 42014865 "MUL SNAD Answer Arch."
{
    // 2022-02-18 SNAD2.0.0.18 HZS
    //   - Created

    Caption = 'Archived Servotion Answer';

    fields
    {
        field(1; "Answer Group No."; Code[20])
        {
            Caption = 'Answer Group No.';
            DataClassification = CustomerContent;
            TableRelation = "MUL SNAD Answer Group Arch.";
        }
        field(2; "Question No."; Code[20])
        {
            Caption = 'Question No.';
            DataClassification = CustomerContent;
            TableRelation = "Servotion Question";
        }
        field(3; Position; Integer)
        {
            Caption = 'Position';
            DataClassification = CustomerContent;
        }
        field(4; "Data Type"; Option)
        {
            Caption = 'Data Type';
            DataClassification = CustomerContent;
            OptionCaption = 'Text,Integer,Decimal,Date,DateTime,Time,Option,Caption';
            OptionMembers = Text,"Integer",Decimal,Date,DateTime,Time,Option,Caption;
        }
        field(5; Mandatory; Boolean)
        {
            Caption = 'Mandatory';
            DataClassification = CustomerContent;
        }
        field(6; Answer; Text[250])
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(7; "Answer DateTime"; DateTime)
        {
            Caption = 'Answer DateTime';
            DataClassification = CustomerContent;
        }
        field(8; "User ID"; Code[50])
        {
            Caption = 'User ID';
            DataClassification = CustomerContent;
        }
        field(9; Answer_Integer; Integer)
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(10; Answer_Decimal; Decimal)
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(11; Answer_Date; Date)
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(12; Answer_DT; DateTime)
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(13; Answer_Time; Time)
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(14; Answer_Option; Text[250])
        {
            Caption = 'Answer';
            DataClassification = CustomerContent;
        }
        field(15; "Valid Parent Answer Conditions"; Boolean)
        {
            Caption = 'Valid Parent Answer Conditions';
            DataClassification = CustomerContent;
        }
        field(21; "Use MobileNAV General Setup"; Boolean)
        {
            Caption = 'Use MobileNAV General Setup';
            DataClassification = CustomerContent;
        }
        field(22; "Caption Red"; Integer)
        {
            Caption = 'Red';
            DataClassification = CustomerContent;
            MaxValue = 255;
            MinValue = 0;
        }
        field(23; "Caption Green"; Integer)
        {
            Caption = 'Green';
            DataClassification = CustomerContent;
            MaxValue = 255;
            MinValue = 0;
        }
        field(24; "Caption Blue"; Integer)
        {
            Caption = 'Blue';
            DataClassification = CustomerContent;
            MaxValue = 255;
            MinValue = 0;
        }
        field(27; "Background Red"; Integer)
        {
            Caption = 'Red';
            DataClassification = CustomerContent;
            MaxValue = 255;
            MinValue = 0;
        }
        field(28; "Background Green"; Integer)
        {
            Caption = 'Green';
            DataClassification = CustomerContent;
            MaxValue = 255;
            MinValue = 0;
        }
        field(29; "Background Blue"; Integer)
        {
            Caption = 'Blue';
            DataClassification = CustomerContent;
            MaxValue = 255;
            MinValue = 0;
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
    }

    fieldgroups
    {
    }
}

