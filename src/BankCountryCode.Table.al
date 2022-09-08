table 5001943 "Bank Country Code"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'Bank Country Code';

    fields
    {
        field(1; "Bank Country Code"; Code[3])
        {
            Caption = 'Bank Country Code';
        }
        field(2; "Bank Country Short Name"; Code[7])
        {
            Caption = 'Bank Country Short Name';
        }
    }

    keys
    {
        key(Key1; "Bank Country Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Bank Country Code", "Bank Country Short Name")
        {
        }
    }
}

