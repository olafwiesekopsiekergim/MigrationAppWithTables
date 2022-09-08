table 5013798 "Subcontracting Price"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW18.00.01:T107 03.06.15 DEMSR.SSZ
    //   #Created table

    Caption = 'Subcontracting Price';

    fields
    {
        field(1; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(11; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(12; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(13; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(14; "Price (FCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Price (FCY)';
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Work Center No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

