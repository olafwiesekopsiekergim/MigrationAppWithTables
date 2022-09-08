table 5001936 "MT940 Line"
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

    Caption = 'MT940 Journal Lines';

    fields
    {
        field(1; "Journal Entry No."; Integer)
        {
            Caption = 'Journal lfd Nr.';
            TableRelation = "MT940 Journal";
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; TextField; Text[250])
        {
            Caption = 'TextField';
        }
        field(4; "Record Type"; Code[10])
        {
            Caption = 'Satzart';
        }
        field(5; "Main Record"; Boolean)
        {
            Caption = 'Hauptsatz';
        }
        field(7; "Record Group"; Code[10])
        {
            Caption = 'Satzgruppe';
        }
        field(8; "Interim Transaction"; Boolean)
        {
            Caption = 'Disponierter Umsatz';
        }
    }

    keys
    {
        key(Key1; "Journal Entry No.", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

