table 5157821 "SEPA Error Code"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   25.03.14   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'SEPA Error Code';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(2; "Text Code Supplement"; Text[3])
        {
            Caption = 'Text Code Supplement';
        }
        field(3; "Import to Account No."; Code[20])
        {
            Caption = 'Import to Account No.';
            TableRelation = "Bank Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "SEPA Return Reason"; Text[50])
        {
            Caption = 'SEPA Return Reason';
        }
        field(5; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(6; "Create Follow Up"; Boolean)
        {
            Caption = 'Create Follow Up';
        }
    }

    keys
    {
        key(Key1; "Code", "Import to Account No.")
        {
            Clustered = true;
        }
        key(Key2; "Text Code Supplement")
        {
        }
    }

    fieldgroups
    {
    }
}

