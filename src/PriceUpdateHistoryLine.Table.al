table 5072659 "Price Update History Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW17.10.01.01:T500 26.11.14 DEMSR.KHS
    //   New fields: Previous Discount %, New Discount %

    Caption = 'Price Update History Line';

    fields
    {
        field(10; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(20; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
        }
        field(30; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
        }
        field(40; "Price Update Date"; Date)
        {
            Caption = 'Price Update Date';
        }
        field(50; "Price Update %"; Decimal)
        {
            Caption = 'Price Update %';
        }
        field(60; "Previous Rent Price"; Decimal)
        {
            Caption = 'Previous Rent Price';
        }
        field(70; "New Rent Price"; Decimal)
        {
            Caption = 'New Rent Price';
        }
        field(80; "Next Invoice Period Start"; Date)
        {
            Caption = 'Next Invoice Period Start';
        }
        field(90; "Next Invoice Period End"; Date)
        {
            Caption = 'Next Invoice Period End';
        }
        field(100; "Old Price Valid From"; Date)
        {
            Caption = 'Old Price Valid From';
        }
        field(110; "Old Price Valid To"; Date)
        {
            Caption = 'Old Price Valid To';
        }
        field(300; "Previous Discount %"; Decimal)
        {
            Caption = 'Previous Discount %';
            Description = '#RENW17.10.01.01:T500';
        }
        field(310; "New Discount %"; Decimal)
        {
            Caption = 'New Discount %';
            Description = '#RENW17.10.01.01:T500';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Rent Order No.", "Rent Order Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

