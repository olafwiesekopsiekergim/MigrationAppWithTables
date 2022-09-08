table 5001945 "Payment Type"
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

    Caption = 'Payment Type';

    fields
    {
        field(1; "Code"; Code[2])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[70])
        {
            Caption = 'Description';
        }
        field(3; Check; Boolean)
        {
            Caption = 'Check';
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
        fieldgroup(DropDown; "Code", Description)
        {
        }
    }
}

