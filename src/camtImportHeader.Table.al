table 5001929 "camt Import Header"
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

    Caption = 'camt Import Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Filename; Text[250])
        {
            Caption = 'Filename';
        }
        field(3; "No. of Entries"; Integer)
        {
            Caption = 'No. of Entries';
        }
        field(4; "Import Date"; Date)
        {
            Caption = 'Import Date';
        }
        field(5; Time; Time)
        {
            Caption = 'Time';
        }
        field(6; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(7; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

