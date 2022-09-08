table 5072713 "Rental - Sales Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.01:R119 09.10.09 DEMSR.KHS
    //   Sales out of Rental
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   delete single primary key field from TableRelation
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental - Sales Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Entry No. of Rental Register"; Integer)
        {
            Caption = 'Entry No. of Rental Register';
            TableRelation = "Service Ledger Entry";
        }
        field(3; "Sales - Document Type"; Option)
        {
            Caption = 'Sales - Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(4; "Sales - Document No."; Code[20])
        {
            Caption = 'Sales - Document No.';
        }
        field(5; "Sales - Line No."; Integer)
        {
            Caption = 'Sales - Line No.';
        }
        field(6; Posted; Boolean)
        {
            Caption = 'Posted';
            Editable = false;
        }
        field(7; "Sold Quantity"; Decimal)
        {
            Caption = 'Sold Quantity';
        }
        field(8; "Sales - Date"; Date)
        {
            Caption = 'Sales - Date';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No. of Rental Register", Posted)
        {
            SumIndexFields = "Sold Quantity";
        }
    }

    fieldgroups
    {
    }
}

