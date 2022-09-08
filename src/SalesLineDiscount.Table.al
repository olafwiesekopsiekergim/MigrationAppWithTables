table 7004 "Sales Line Discount"
{
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   New field 5012650 "Calculation No."
    // 
    // #RENW16.00  New Field: Rental Rate Code
    //   Keys extended

    Caption = 'Sales Line Discount';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("Item Disc. Group")) "Item Discount Group";
        }
        field(2; "Sales Code"; Code[20])
        {
            Caption = 'Sales Code';
            TableRelation = IF ("Sales Type" = CONST ("Customer Disc. Group")) "Customer Discount Group"
            ELSE
            IF ("Sales Type" = CONST (Customer)) Customer
            ELSE
            IF ("Sales Type" = CONST (Campaign)) Campaign;
            ValidateTableRelation = false;
        }
        field(3; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(4; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(5; "Line Discount %"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Line Discount %';
            MaxValue = 100;
            MinValue = 0;
        }
        field(13; "Sales Type"; Option)
        {
            Caption = 'Sales Type';
            OptionCaption = 'Customer,Customer Disc. Group,All Customers,Campaign';
            OptionMembers = Customer,"Customer Disc. Group","All Customers",Campaign;
        }
        field(14; "Minimum Quantity"; Decimal)
        {
            Caption = 'Minimum Quantity';
            MinValue = 0;
        }
        field(15; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(21; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Item,Item Disc. Group';
            OptionMembers = Item,"Item Disc. Group";
        }
        field(5400; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD (Code));
        }
        field(5700; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD (Code));
        }
        field(5012650; "Calculation No."; Code[20])
        {
            Caption = 'Calculation No.';
            Description = '#CAW16.00:T100';
            Editable = false;
            TableRelation = "Calculation Header"."No.";
        }
        field(5072650; "Rental Rate Code"; Code[10])
        {
            Caption = 'Rental Rate Code';
            Description = '#RENW16.00:10-001';
            TableRelation = "Capacity Unit of Measure".Code WHERE ("Rental Rate Code" = CONST (true));
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Sales Type", "Sales Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity", "Rental Rate Code")
        {
            Clustered = true;
        }
        key(Key2; "Sales Type", "Sales Code", Type, "Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity", "Rental Rate Code")
        {
        }
    }

    fieldgroups
    {
    }
}

