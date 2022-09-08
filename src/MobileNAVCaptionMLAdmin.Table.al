table 42012833 "MobileNAV CaptionML Admin."
{

    fields
    {
        field(1; "Page ID"; Integer)
        {
        }
        field(2; "Control ID"; Integer)
        {
        }
        field(3; "Language Code"; Code[10])
        {
        }
        field(4; "Caption ML"; Text[250])
        {
        }
        field(5; "Option Caption ML"; Text[250])
        {
        }
        field(6; "Option Caption ML 2"; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; "Page ID", "Control ID", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

