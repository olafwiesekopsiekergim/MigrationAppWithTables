table 14123815 "ES Source Code Line"
{
    Caption = 'Source Code Line';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(11; "Text 1-250"; Text[250])
        {
            Caption = 'Text 1-250';
        }
        field(12; "Text 251-500"; Text[250])
        {
            Caption = 'Text 251-500';
        }
        field(13; "Text 501-750"; Text[250])
        {
            Caption = 'Text 501-750';
        }
        field(14; "Text 751-1000"; Text[250])
        {
            Caption = 'Text 751-1000';
        }
        field(15; "Follow Line No."; Integer)
        {
            Caption = 'Follow Line No.';
        }
        field(16; "Line Not Complete"; Boolean)
        {
            Caption = 'Line Not Complete';
        }
        field(17; "Line Length"; Integer)
        {
            Caption = 'Line Length';
        }
        field(18; "Control ID"; Integer)
        {
            Caption = 'Control ID';
        }
        field(19; "In Code"; Boolean)
        {
            Caption = 'In Code';
        }
        field(20; "First Line in Control"; Boolean)
        {
            Caption = 'First Line in Control';
        }
        field(21; "Last Line in Control"; Boolean)
        {
            Caption = 'Last Line in Control';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Follow Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

