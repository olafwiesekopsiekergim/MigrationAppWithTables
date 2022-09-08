table 5138355 "Exp Atlas Export Error Prot"
{
    Caption = 'Atlas Export Error Protocol';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(9; errType; Text[30])
        {
            Caption = 'Error Type';
        }
        field(10; clazz; Text[50])
        {
            Caption = 'Class';
        }
        field(11; errCode; Text[50])
        {
            Caption = 'Error Code';
        }
        field(12; errPosition; Text[50])
        {
            Caption = 'Position';
        }
        field(13; errText; Text[250])
        {
            Caption = 'Error Text';
        }
        field(14; id; Integer)
        {
            Caption = 'ID';
        }
        field(15; nachricht; Text[250])
        {
            Caption = 'Message';
        }
        field(16; objectid; Integer)
        {
            Caption = 'Objekt ID';
        }
        field(17; posNr; Integer)
        {
            Caption = 'Position No.';
        }
        field(18; property; Text[50])
        {
            Caption = 'Error Field';
        }
        field(19; "record type"; Text[30])
        {
            Caption = 'Record';
        }
        field(20; "field"; Text[50])
        {
            Caption = 'Field';
        }
        field(21; errText2; Text[250])
        {
            Caption = 'Error Text 2';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

