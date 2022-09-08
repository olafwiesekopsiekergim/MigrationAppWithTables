table 5034554 "My Test Device"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00 13.04.12 DEMSR.KHS
    //   Updated to NAV 2013
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   Change VAR name count to counter
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'My Item';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Test Device"; Code[20])
        {
            Caption = 'Test Device';
            NotBlank = true;
            TableRelation = "Test Device";
        }
    }

    keys
    {
        key(Key1; "User ID", "Test Device")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

