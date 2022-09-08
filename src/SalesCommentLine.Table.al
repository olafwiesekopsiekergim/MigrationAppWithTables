table 44 "Sales Comment Line"
{
    // #RENW16.00.01:R055 12.10.09 DEMSR.KHS
    //   3rd Party Rental
    // #RENW16.00.01:R087 15.10.09 DEMSR.KHS
    //   Checklist Templates for Machine Types

    Caption = 'Sales Comment Line';

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Description = '#RENW16.00.01:R055,#RENW16.00.01:R087';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,Shipment,Posted Invoice,Posted Credit Memo,Posted Return Receipt,,,,,Posted Rent Return,Check List';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",Shipment,"Posted Invoice","Posted Credit Memo","Posted Return Receipt",,,,,"Posted Rent Return","Check List";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
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
        field(7; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
    }

    keys
    {
        key(Key1; "Document Type", "No.", "Document Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

