table 5001915 "Application Account"
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

    Caption = 'Application Account';

    fields
    {
        field(1; Catchword; Code[30])
        {
            Caption = 'Catchword';
            NotBlank = true;
        }
        field(2; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            TableRelation = "G/L Account";
        }
        field(3; "Account Name"; Text[50])
        {
            Caption = 'Account Name';
        }
    }

    keys
    {
        key(Key1; Catchword)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

