table 3 "Payment Terms"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.05.12   - New Field added
    // MP   01.12.06   Multiple Payment Discount
    //                 - New Fields added
    // -----------------------------------------------------
    // P0004 15.02.16 DEBIE.ARE NAV2015 Modus changes
    // 
    // +--------------------------------------------------------------+
    // |                  Copyright MODUS Consult AG                  |
    // |                          Customizing                         |
    // +--------------------------------------------------------------+
    // Modul     Date      User      Description
    // MC        29.09.15  DT        Fields 50000 - 50010 valid

    Caption = 'Payment Terms';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Due Date Calculation"; DateFormula)
        {
            Caption = 'Due Date Calculation';
        }
        field(3; "Discount Date Calculation"; DateFormula)
        {
            Caption = 'Discount Date Calculation';
        }
        field(4; "Discount %"; Decimal)
        {
            Caption = 'Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(6; "Calc. Pmt. Disc. on Cr. Memos"; Boolean)
        {
            Caption = 'Calc. Pmt. Disc. on Cr. Memos';
        }
        field(50000; "Gültig für"; Option)
        {
            OptionCaption = 'Always,Customer,Vendor';
            OptionMembers = Immer,Debitor,Kreditor;
        }
        field(50005; "Gültig von"; Date)
        {
            Caption = 'Valid from';
        }
        field(50010; "Gültig bis"; Date)
        {
            Caption = 'Valid until';
        }
        field(5157802; "Immediate Annuity Credit Disc."; Boolean)
        {
            Caption = 'Immediate Annuity Credit Disc./Refund';
            Description = 'EA';
        }
        field(5483212; "Discount Date Calculation 2"; DateFormula)
        {
            Caption = 'Discount Date Calculation 2';
            Description = 'MP';
        }
        field(5483213; "Discount % 2"; Decimal)
        {
            Caption = 'Discount % 2';
            DecimalPlaces = 0 : 5;
            Description = 'MP';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5483214; "Discount Date Calculation 3"; DateFormula)
        {
            Caption = 'Discount Date Calculation 3';
            Description = 'MP';
        }
        field(5483215; "Discount % 3"; Decimal)
        {
            Caption = 'Discount % 3';
            DecimalPlaces = 0 : 5;
            Description = 'MP';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5483216; "Value Date Calculation"; DateFormula)
        {
            Caption = 'Value Date Calculation';
            Description = 'MP';
        }
        field(5483217; "Discount Date Calculation 4"; DateFormula)
        {
            Caption = 'Discount Date Calculation 4';
            Description = 'MP';
        }
        field(5483218; "Discount % 4"; Decimal)
        {
            Caption = 'Discount % 4';
            DecimalPlaces = 0 : 5;
            Description = 'MP';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5483219; "Discount Date Calculation 5"; DateFormula)
        {
            Caption = 'Discount Date Calculation 5';
            Description = 'MP';
        }
        field(5483220; "Discount % 5"; Decimal)
        {
            Caption = 'Discount % 5';
            DecimalPlaces = 0 : 5;
            Description = 'MP';
            MaxValue = 100;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Description, "Due Date Calculation")
        {
        }
        fieldgroup(Brick; "Code", Description, "Due Date Calculation")
        {
        }
    }
}

