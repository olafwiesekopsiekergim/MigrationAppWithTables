table 904 "Assemble-to-Order Link"
{
    // #CAW17.00:109 19.12.12 DEMSR.KHS
    //   Update Concurrent Calculation from Assembly
    // 
    // #CAW17.00.00.01:T501 06.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #PMW17.00:T109 08.01.13 DEMSR.KHS
    //   Add Lot No. Trading Unit and Trading Unit No.
    //   in function RemoveTrackingFromReservation
    // 
    // #PMW17.10:T101 08.01.13 DEMSR.IST
    //   Updates for change in reservation functions

    Caption = 'Assemble-to-Order Link';

    fields
    {
        field(1; "Assembly Document Type"; Option)
        {
            Caption = 'Assembly Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(2; "Assembly Document No."; Code[20])
        {
            Caption = 'Assembly Document No.';
            TableRelation = "Assembly Header" WHERE ("Document Type" = FIELD ("Assembly Document Type"),
                                                     "No." = FIELD ("Assembly Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Sale';
            OptionMembers = " ",Sale;
        }
        field(12; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(13; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = IF (Type = CONST (Sale)) "Sales Line"."Document No." WHERE ("Document Type" = FIELD ("Document Type"),
                                                                                     "Document No." = FIELD ("Document No."),
                                                                                     "Line No." = FIELD ("Document Line No."));
        }
        field(14; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(20; "Assembled Quantity"; Decimal)
        {
            Caption = 'Assembled Quantity';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Assembly Document Type", "Assembly Document No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "Document Type", "Document No.", "Document Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

