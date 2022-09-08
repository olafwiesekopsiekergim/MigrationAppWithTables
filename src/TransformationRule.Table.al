table 1237 "Transformation Rule"
{
    Caption = 'Transformation Rule';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Transformation Type"; Option)
        {
            Caption = 'Transformation Type';
            OptionCaption = 'Uppercase,Lowercase,Title Case,Trim,Substring,Replace,Regular Expression,Remove Non-Alphanumeric Characters,Date and Time Formatting,Decimal Formatting';
            OptionMembers = Uppercase,Lowercase,"Title Case",Trim,Substring,Replace,"Regular Expression","Remove Non-Alphanumeric Characters","Date and Time Formatting","Decimal Formatting";
        }
        field(10; "Find Value"; Text[250])
        {
            Caption = 'Find Value';
        }
        field(11; "Replace Value"; Text[250])
        {
            Caption = 'Replace Value';
        }
        field(15; "Start Position"; Integer)
        {
            BlankZero = true;
            Caption = 'Start Position';
        }
        field(16; Length; Integer)
        {
            BlankZero = true;
            Caption = 'Length';
        }
        field(18; "Data Format"; Text[100])
        {
            Caption = 'Data Format';
        }
        field(20; "Data Formatting Culture"; Text[10])
        {
            Caption = 'Data Formatting Culture';
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

