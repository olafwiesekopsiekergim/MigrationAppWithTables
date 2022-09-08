table 5001961 "Service Code"
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

    Caption = 'Service Table Z4';

    fields
    {
        field(1; "Code"; Code[3])
        {
            Caption = 'Index No.';
        }
        field(2; "Document Type"; Option)
        {
            OptionCaption = ' ,Incoming Payment (Service),Outgoing Payment (Service),Incoming Payment (Capital Movements),Outgoing Payment (Capital Movements),Incoming Payment (Transitl),Outgoing Payment (Transit)';
            OptionMembers = " ","1","2","3","4","5","6";
        }
        field(3; Description; Text[140])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Code", "Document Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

