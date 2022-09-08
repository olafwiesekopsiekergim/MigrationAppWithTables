table 5001944 "Service Table"
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

    Caption = 'Service Table';

    fields
    {
        field(1; "Index No."; Code[3])
        {
            Caption = 'Index No.';
        }
        field(2; Description; Text[42])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Index No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

