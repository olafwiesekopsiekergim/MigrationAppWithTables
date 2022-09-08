table 50053 "Acceptance Protocol Line"
{
    // P0036 06.04.16 CCBIE.ARE New object

    Caption = 'Acceptance Protocol Line';

    fields
    {
        field(1; "Test Certificate No."; Code[20])
        {
            Caption = 'Test Certificate Code';
            TableRelation = "Acceptance Protocol Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Header,Line,Footer,Hint';
            OptionMembers = " ",Header,Line,Footer,Hint;
        }
        field(5; "Show Checkbox"; Boolean)
        {
            Caption = 'Show checkbox';
        }
        field(6; Hint; Text[80])
        {
            Caption = 'Hint';
        }
        field(7; "Show Underline"; Boolean)
        {
            Caption = 'Show underline';
        }
        field(8; "Yes/No Field"; Boolean)
        {
            Caption = 'Yes/No';
        }
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Production Order';
            OptionMembers = " ","Production Order";
        }
        field(12; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(13; "Replaceable Line No."; Integer)
        {
            Caption = 'Ersetzbar durch Zeilennummer';
            Description = 'Mitgeben, durch welche Zeilennr. die Zeile ersetzt werden kann.';
        }
        field(14; "Place beside Head"; Integer)
        {
            Caption = 'Line beside header';
            Description = 'Soll die Zeile auf dem Report neben dem Kopf (Line No) erscheinen';
        }
    }

    keys
    {
        key(Key1; "Test Certificate No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

