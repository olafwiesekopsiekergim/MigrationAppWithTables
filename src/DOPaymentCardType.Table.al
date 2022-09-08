table 830 "DO Payment Card Type"
{
    Caption = 'Dynamics Online Payment Card Type';

    fields
    {
        field(1; "Sort Order"; Integer)
        {
            AutoIncrement = false;
            Caption = 'Sort Order';
        }
        field(2; Name; Code[20])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; "Validation Rule"; Integer)
        {
            Caption = 'Validation Rule';
            NotBlank = true;
        }
        field(4; "Numeric Only"; Boolean)
        {
            Caption = 'Numeric Only';
            InitValue = true;
        }
        field(5; "Allow Spaces"; Boolean)
        {
            Caption = 'Allow Spaces';
            InitValue = true;
        }
        field(6; "Min. Length"; Integer)
        {
            Caption = 'Min. Length';
        }
        field(7; "Max. Length"; Integer)
        {
            Caption = 'Max. Length';
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
        key(Key2; "Sort Order")
        {
        }
    }

    fieldgroups
    {
    }
}

