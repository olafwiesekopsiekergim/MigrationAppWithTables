table 42014828 "Servotion License Setup"
{
    Caption = 'Servotion License Setup';
    DataPerCompany = false;

    fields
    {
        field(1; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = Company.Name;
        }
        field(2; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
        }
        field(21; "Licensed for Servotion"; Option)
        {
            Caption = 'Licensed for Servotion';
            OptionCaption = ' ,Yes,No';
            OptionMembers = " ",Yes,No;
        }
    }

    keys
    {
        key(Key1; "Company Name", "Resource No.")
        {
            Clustered = true;
        }
        key(Key2; "Licensed for Servotion")
        {
        }
    }

    fieldgroups
    {
    }
}

