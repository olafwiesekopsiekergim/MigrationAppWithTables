table 5483212 "Multiple Pmt. Discount Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // MP   01.06.16   Multiple Pmt. Discount
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Multiple Pmt. Discount Setup';

    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; "Enable Multiple Pmt. Discount"; Boolean)
        {
            Caption = 'Enable Multiple Pmt. Discount';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

