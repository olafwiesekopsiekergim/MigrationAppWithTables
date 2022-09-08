table 5171677 "CMN Comment"
{

    fields
    {
        field(1; "Table ID"; Integer)
        {
        }
        field(2; "Unique Record Identifier"; Integer)
        {
        }
        field(5; "Line No."; Integer)
        {
        }
        field(10; Comment; Text[80])
        {
        }
        field(11; Date; Date)
        {
        }
        field(12; "Code"; Code[10])
        {
        }
    }

    keys
    {
        key(Key1; "Table ID", "Unique Record Identifier", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

