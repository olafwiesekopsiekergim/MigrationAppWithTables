table 1235 "XML Buffer"
{
    Caption = 'XML Buffer';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Element,Attribute';
            OptionMembers = " ",Element,Attribute;
        }
        field(3; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(4; Path; Text[250])
        {
            Caption = 'Path';
        }
        field(5; Value; Text[250])
        {
            Caption = 'Value';
        }
        field(6; Depth; Integer)
        {
            Caption = 'Depth';
        }
        field(7; "Parent Entry No."; Integer)
        {
            Caption = 'Parent Entry No.';
        }
        field(9; "Data Type"; Option)
        {
            Caption = 'Data Type';
            OptionCaption = 'Text,Date,Decimal,DateTime';
            OptionMembers = Text,Date,Decimal,DateTime;
        }
        field(13; "Node Number"; Integer)
        {
            Caption = 'Node Number';
        }
        field(14; Namespace; Text[250])
        {
            Caption = 'Namespace';
        }
        field(15; "Import ID"; Guid)
        {
            Caption = 'Import ID';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Parent Entry No.", Type, "Node Number")
        {
        }
    }

    fieldgroups
    {
    }
}

