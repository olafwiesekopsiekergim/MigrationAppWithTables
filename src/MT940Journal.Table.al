table 5001935 "MT940 Journal"
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

    Caption = 'MT940 Journal';

    fields
    {
        field(1; "Entry No."; Integer)
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
        field(7; "Source Company"; Text[30])
        {
            Caption = 'Source Company';
        }
        field(8; "Target Company"; Text[30])
        {
            Caption = 'Target Company';
        }
        field(9; "Transaction No."; Integer)
        {
            Caption = 'Transacton No.';
        }
        field(10; "Interim Transaction"; Boolean)
        {
            Caption = 'Interim Transaction';
        }
        field(11; "File Format"; Option)
        {
            Caption = 'Auto,MT940-S,MT940-NS,MT942';
            OptionMembers = Auto,"MT940-S","MT940-NS",MT942;
        }
        field(12; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            NotBlank = true;
            TableRelation = "Bank Account";
        }
        field(13; "Statement No."; Code[20])
        {
            Caption = 'Statement No.';
            NotBlank = true;
        }
        field(14; "Statement Date"; Date)
        {
            Caption = 'Statement Date';
        }
        field(15; "Statement Ending Balance"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Statement Ending Balance';
        }
        field(16; "Balance Last Statement"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Balance Last Statement';
        }
        field(17; "Order Reference No."; Code[20])
        {
            Caption = 'Order Reference No.';
        }
        field(18; "Reference No."; Code[20])
        {
            Caption = 'Reference No.';
        }
        field(19; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(20; "Has Error"; Boolean)
        {
            Caption = 'Has Error';
        }
        field(30; "Bank No."; Code[20])
        {
            Caption = 'Bank No.';
        }
        field(32; "Bank Branch No."; Text[20])
        {
            Caption = 'Bank Branch No.';
            TableRelation = "Bank Branch No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(33; IBAN; Code[50])
        {
            Caption = 'IBAN';
        }
        field(34; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
        }
        field(35; "Page No."; Code[20])
        {
            Caption = 'Page No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Transaction No.")
        {
        }
    }

    fieldgroups
    {
    }
}

