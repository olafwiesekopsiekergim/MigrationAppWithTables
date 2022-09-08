table 5370407 "dynamo Setup"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'dynamo Setup';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; "Use Payment Module"; Boolean)
        {
            Caption = 'Use Payment Module';
        }
        field(3; "Use Foreign Payment"; Boolean)
        {
            Caption = 'Use Foreign Payment';
        }
        field(5; "Use Open G/L"; Boolean)
        {
            Caption = 'Use Open G/L';
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

