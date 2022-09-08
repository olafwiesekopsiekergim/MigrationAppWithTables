table 5371 "Service Connection Error"
{
    Caption = 'Service Connection Error';

    fields
    {
        field(1; "Code"; Guid)
        {
            Caption = 'Code';
        }
        field(2; "Server Address"; Text[250])
        {
            Caption = 'Dynamics CRM URL';
            TableRelation = "CRM Connection Setup"."Server Address";
        }
        field(3; "Last Occurrence"; DateTime)
        {
            Caption = 'Last Occurrence';
        }
        field(4; Error; BLOB)
        {
            Caption = 'Error';
        }
        field(5; Hash; Integer)
        {
            Caption = 'Hash';
        }
        field(6; "First Occurrence"; DateTime)
        {
            Caption = 'First Occurrence';
        }
        field(7; "Occurrence Count"; Integer)
        {
            Caption = 'Occurrence Count';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; Hash)
        {
        }
    }

    fieldgroups
    {
    }
}

