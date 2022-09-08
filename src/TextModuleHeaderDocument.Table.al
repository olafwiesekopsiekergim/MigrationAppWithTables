table 5060612 "Text Module Header Document"
{
    // Copyright (Exclusive Rights): Cosmo Consult Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW17.10.01:T100 12.09.14 DEMSR.SSZ
    //   #Created Table


    fields
    {
        field(1; "Text ID"; Integer)
        {
        }
        field(10; "Hash Value"; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "Text ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

