table 5050281 "TE Webservice Connector DUMMY"
{
    // //Dummy Object used in NAV2009


    fields
    {
        field(1; "Code"; Code[10])
        {
            Description = 'DUMMY';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

