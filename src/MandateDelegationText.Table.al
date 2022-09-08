table 5001924 "Mandate Delegation Text"
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

    Caption = 'Mandate Delegation Text';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            TableRelation = "Mandate Delegation".Code;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Text; Text[80])
        {
            Caption = 'Text';
        }
    }

    keys
    {
        key(Key1; "Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

