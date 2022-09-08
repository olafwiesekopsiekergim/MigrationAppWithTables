table 5157812 "Accounting Hint Text"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Accounting Hint Text';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Customer No.,Document No.,Vendor No.';
            OptionMembers = "Customer No.","Document No.","Vendor No.";
        }
        field(2; "Hint Text"; Code[20])
        {
            Caption = 'Hint Text';
        }
        field(3; Offset; Integer)
        {
            Caption = 'Offset';
        }
        field(4; Length; Integer)
        {
            Caption = 'Length';
        }
        field(5; Prefix; Code[20])
        {
            Caption = 'Prefix';
        }
        field(6; Suffix; Code[20])
        {
            Caption = 'Suffix';
        }
        field(7; "Pmt. Import Interface Code"; Code[20])
        {
            Caption = 'Pmt. Import Interface Code';
            TableRelation = "Pmt. Import Interface";
        }
    }

    keys
    {
        key(Key1; Type, "Hint Text", Prefix, Suffix)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

