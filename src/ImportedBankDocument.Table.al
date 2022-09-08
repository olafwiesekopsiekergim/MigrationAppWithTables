table 5001913 "Imported Bank Document"
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

    Caption = 'Imported Bank Document';

    fields
    {
        field(1; "Import Entry No."; Integer)
        {
            Caption = 'Import Entry No.';
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Posting Decription"; Text[27])
        {
            Caption = 'Posting Decription';
        }
        field(4; Primanota; Code[10])
        {
            Caption = 'Primanota';
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(6; "Value Date"; Date)
        {
            Caption = 'Value Date';
        }
        field(7; Amount; Decimal)
        {
            Caption = 'Amount';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

