table 370 "Excel Buffer"
{
    Caption = 'Excel Buffer';

    fields
    {
        field(1; "Row No."; Integer)
        {
            Caption = 'Row No.';
        }
        field(2; xlRowID; Text[10])
        {
            Caption = 'xlRowID';
        }
        field(3; "Column No."; Integer)
        {
            Caption = 'Column No.';
        }
        field(4; xlColID; Text[10])
        {
            Caption = 'xlColID';
        }
        field(5; "Cell Value as Text"; Text[250])
        {
            Caption = 'Cell Value as Text';
        }
        field(6; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(7; Formula; Text[250])
        {
            Caption = 'Formula';
        }
        field(8; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(9; Italic; Boolean)
        {
            Caption = 'Italic';
        }
        field(10; Underline; Boolean)
        {
            Caption = 'Underline';
        }
        field(11; NumberFormat; Text[30])
        {
            Caption = 'NumberFormat';
        }
        field(12; Formula2; Text[250])
        {
            Caption = 'Formula2';
        }
        field(13; Formula3; Text[250])
        {
            Caption = 'Formula3';
        }
        field(14; Formula4; Text[250])
        {
            Caption = 'Formula4';
        }
        field(15; "Cell Type"; Option)
        {
            Caption = 'Cell Type';
            OptionCaption = 'Number,Text,Date,Time';
            OptionMembers = Number,Text,Date,Time;
        }
        field(16; "Double Underline"; Boolean)
        {
            Caption = 'Double Underline';
        }
    }

    keys
    {
        key(Key1; "Row No.", "Column No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

