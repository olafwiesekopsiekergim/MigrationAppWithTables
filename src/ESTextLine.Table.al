table 14123520 "ES Text Line"
{
    Caption = 'Text Line';

    fields
    {
        field(1; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(4; "Text 1-250"; Text[250])
        {
            Caption = 'Text 1-250';
        }
        field(5; "Text 251-500"; Text[250])
        {
            Caption = 'Text 251-500';
        }
        field(6; "Text 501-750"; Text[250])
        {
            Caption = 'Text 501-750';
        }
        field(7; "Text 751-1000"; Text[250])
        {
            Caption = 'Text 751-1000';
        }
        field(8; Level; Integer)
        {
            Caption = 'Level';
        }
        field(9; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(10; "Text Overflow"; Boolean)
        {
            Caption = 'Text Overflow';
        }
        field(11; "Table Caption Text"; Text[250])
        {
            Caption = 'Table Caption Text';
        }
        field(12; "Primary Key Text"; Text[250])
        {
            Caption = 'Primary Key Text';
        }
        field(13; "Compare Status"; Option)
        {
            Caption = 'Compare Status';
            OptionCaption = ' ,Equal,Old,New';
            OptionMembers = " ",Equal,Old,New;
        }
        field(14; "FlowFields Text"; Text[250])
        {
            Caption = 'FlowFields Text';
        }
        field(15; "Include in Log"; Boolean)
        {
            Caption = 'Include in Log';
        }
    }

    keys
    {
        key(Key1; "Version Code", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

