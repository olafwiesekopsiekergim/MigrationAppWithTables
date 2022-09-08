table 42012838 "MobileNAV FlowFilters"
{

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Service Name"; Text[100])
        {
            Caption = 'Service Name';
        }
        field(3; "Field Name"; Text[75])
        {
            Caption = 'Field Name';
        }
        field(4; "Filter Text"; Text[250])
        {
            Caption = 'Filter Text';
        }
        field(5; "Field ID"; Integer)
        {
            Caption = 'Field ID';
        }
        field(6; "Filter Text Visible Value"; Text[250])
        {
            Caption = 'Filter Text Visible Value';
        }
    }

    keys
    {
        key(Key1; "User ID", "Service Name", "Field Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

