table 5157921 "Bank Account Mandate Usage"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.01.16   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Bank Account Mandate Usage';

    fields
    {
        field(1; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate ID';
            TableRelation = "Bank Account Mandate";
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
        }
        field(4; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
        }
    }

    keys
    {
        key(Key1; "Mandate ID", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Mandate ID", "Journal Template Name", "Journal Batch Name")
        {
        }
        key(Key3; "Mandate ID", Date)
        {
        }
    }

    fieldgroups
    {
    }
}

