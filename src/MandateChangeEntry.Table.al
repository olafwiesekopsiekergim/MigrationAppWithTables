table 5001932 "Mandate Change Entry"
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

    Caption = 'Mandate Change Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(3; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(4; "Mandate No."; Code[20])
        {
            Caption = 'Mandate No.';
        }
        field(5; "Type of Change"; Option)
        {
            Caption = 'Type of Change';
            OptionCaption = 'Creditor ID,Company Name,Mandate No.,IBAN';
            OptionMembers = "Creditor ID","Company Name","Mandate No.",IBAN;
        }
        field(6; "Old Value"; Text[50])
        {
            Caption = 'Old Value';
        }
        field(7; "New Value"; Text[50])
        {
            Caption = 'New Value';
        }
        field(8; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(9; "Submission Date"; Date)
        {
            Caption = 'Submission Date';
        }
        field(10; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
            Editable = false;
        }
        field(11; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(12; "Blocked by User ID"; Code[50])
        {
            Caption = 'Blocked by User ID';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(13; "Bank Account No."; Code[20])
        {
            Caption = 'Bank Account No.';
            TableRelation = "Bank Account";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Mandate No.", Open)
        {
        }
        key(Key3; "Payment No.")
        {
        }
    }

    fieldgroups
    {
    }
}

