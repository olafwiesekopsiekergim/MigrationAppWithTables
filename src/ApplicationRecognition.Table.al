table 5001916 "Application Recognition"
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

    Caption = 'Application Recognition';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Customer/Vendor No.,Document No.';
            OptionMembers = "Customer/Vendor No.","Document No.";
        }
        field(2; Catchword; Code[20])
        {
            Caption = 'Catchword';
        }
    }

    keys
    {
        key(Key1; Type, Catchword)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

