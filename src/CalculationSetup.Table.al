table 5012650 "Calculation Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Calculation Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Calculation Schedule Nos."; Code[10])
        {
            Caption = 'Calculation Schedule Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Calculation Nos."; Code[10])
        {
            Caption = 'Calculation Nos.';
            TableRelation = "No. Series";
        }
        field(4; "Concurrent Calculation Nos."; Code[10])
        {
            Caption = 'Concurrent Calculation Nos.';
            TableRelation = "No. Series";
        }
        field(5; "Standard Calc. Schedule No."; Code[20])
        {
            Caption = 'Standard Calc. Schedule No.';
            TableRelation = "Calculation Schedule Header"."No." WHERE (Status = CONST (Certified));
        }
        field(6; "Price Source in Calculation"; Option)
        {
            Caption = 'Price Source in Calculation';
            OptionCaption = 'Item Unit Cost,Purchase Pricing';
            OptionMembers = "Item Unit Cost","Purchase Pricing";
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

