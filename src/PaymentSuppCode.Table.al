table 5157902 "Payment Supp. Code"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // AZV  13.01.10   OPplus DTAZV
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Supp. Code';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Federal State,Pmt. Instruction';
            OptionMembers = Bundesland,Instruction;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(3; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(4; "Code 2"; Code[20])
        {
            Caption = 'Code 2';
            TableRelation = "Country/Region";
        }
        field(5; Marked; Boolean)
        {
            Caption = 'Marked';
        }
        field(6; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            TableRelation = "Payment Type Code" WHERE (Inactive = CONST (false));
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Payment Type Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

