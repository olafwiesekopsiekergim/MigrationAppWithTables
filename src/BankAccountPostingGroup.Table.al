table 277 "Bank Account Posting Group"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'Bank Account Posting Group';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "G/L Bank Account No."; Code[20])
        {
            Caption = 'G/L Bank Account No.';
            TableRelation = "G/L Account";
        }
        field(5001901; "G/L Bank Account Transit No."; Code[20])
        {
            Caption = 'G/L Bank Account Transit No.';
            Description = 'DYNPMT';
            TableRelation = "G/L Account";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "G/L Bank Account No.")
        {
        }
        fieldgroup(Brick; "Code")
        {
        }
    }
}

