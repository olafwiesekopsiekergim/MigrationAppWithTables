table 5034557 "User Test Location"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R254 27.10.10 DEMSR.KHS
    //   Split Test Orders to Test Locations - Object created
    // 
    // #QMW17.00:104 08.01.13 DEMSR.KHS
    //   Update Code structure for NAV2013
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'User Test Location';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Test Location Code"; Code[10])
        {
            Caption = 'Test Location Code';
            TableRelation = "Test Location";
        }
    }

    keys
    {
        key(Key1; "User ID", "Test Location Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

