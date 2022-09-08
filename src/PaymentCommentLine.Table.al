table 5157918 "Payment Comment Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  05.05.15   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Comment Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Bank Account Mandat';
            OptionMembers = "Bank Account Mandat";
        }
        field(2; "No."; Code[35])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("Bank Account Mandat")) "Bank Account Mandate" WHERE ("Mandate ID" = FIELD ("No."));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(7; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

