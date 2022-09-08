table 5157826 "Token Buffer"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.01.16   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Token Buffer';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

