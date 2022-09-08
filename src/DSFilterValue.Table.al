table 2087626 "DS Filter Value"
{
    Caption = 'DS Filter Value';
    DataCaptionFields = GroupName, FilterName;

    fields
    {
        field(1; GroupName; Text[50])
        {
            Caption = 'GroupName';
            TableRelation = "DS Filter Group".GroupName WHERE (Type = FIELD (Type));
        }
        field(2; FilterName; Text[100])
        {
            Caption = 'FilterName';
        }
        field(10; "Do not sync"; Boolean)
        {
            Caption = 'Do not sync';
        }
        field(11; Delete; Boolean)
        {
            Caption = 'Delete';
        }
        field(12; Type; Option)
        {
            OptionMembers = FilterGroup,Category,TimeMarker;
        }
        field(20; Color; Text[11])
        {
        }
        field(21; "Color-R"; Integer)
        {
        }
        field(22; "Color-G"; Integer)
        {
        }
        field(23; "Color-B"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; Type, GroupName, FilterName)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

