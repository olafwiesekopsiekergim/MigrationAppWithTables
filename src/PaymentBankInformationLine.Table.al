table 5001918 "Payment Bank Information Line"
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

    Caption = 'Payment Bank Information Line';

    fields
    {
        field(1; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
            Editable = false;
            TableRelation = "Payment Line";
        }
        field(2; "Bank Info Entry No."; Integer)
        {
            Caption = 'Bank Info Entry No.';
            Editable = false;
        }
        field(4; "Account Type"; Option)
        {
            Caption = 'Account Type';
            Editable = false;
            OptionCaption = 'G/L Account,Customer,Vendor,Bank Account';
            OptionMembers = "G/L Account",Customer,Vendor,"Bank Account";
        }
        field(5; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST ("G/L Account")) "G/L Account"."No." WHERE ("No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Customer)) Customer."No." WHERE ("No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor."No." WHERE ("No." = FIELD ("Account No."));
        }
        field(6; "Bank Code"; Code[10])
        {
            Caption = 'Bank Code';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST (Customer)) "Customer Bank Account".Code WHERE ("Customer No." = FIELD ("Account No."))
            ELSE
            IF ("Account Type" = CONST (Vendor)) "Vendor Bank Account".Code WHERE ("Vendor No." = FIELD ("Account No."));
        }
        field(7; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
            Editable = false;
        }
        field(8; "Bank Branch No."; Text[20])
        {
            Caption = 'Bank Branch No.';
            Editable = false;
            TableRelation = "Bank Branch No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Bank Account No."; Text[34])
        {
            Caption = 'Bank Account No.';
            Editable = false;
        }
        field(10; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
            Editable = false;
        }
        field(11; IBAN; Code[50])
        {
            Caption = 'IBAN';
            Editable = false;
        }
        field(12; "Numeric Bank Branch No."; Decimal)
        {
            Caption = 'Numeric Bank Branch No.';
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(13; "Numeric Bank Account No."; Decimal)
        {
            Caption = 'Numeric Bank Account No.';
            DecimalPlaces = 0 : 0;
            Editable = false;
        }
        field(14; "Bank Name 2"; Text[50])
        {
            Caption = 'Bank Name 2';
        }
        field(15; "Bank Address"; Text[50])
        {
            Caption = 'Bank Address';
        }
        field(16; "Bank Address 2"; Text[50])
        {
            Caption = 'Bank Address 2';
        }
        field(17; "Bank City"; Text[30])
        {
            Caption = 'Bank City';
        }
        field(18; "Bank Post Code"; Code[20])
        {
            Caption = 'Bank Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(19; "Bank Country Code"; Code[10])
        {
            Caption = 'Bank Country Code';
            TableRelation = "Country/Region";
        }
        field(20; OrderNo; Integer)
        {
        }
        field(5001902; "Alternative Account Owner"; Text[50])
        {
            Caption = 'Alternative Account Owner';
        }
    }

    keys
    {
        key(Key1; "Payment No.", "Bank Info Entry No.", "Account Type", "Account No.", OrderNo)
        {
            Clustered = true;
            SumIndexFields = "Numeric Bank Branch No.", "Numeric Bank Account No.";
        }
    }

    fieldgroups
    {
    }
}

