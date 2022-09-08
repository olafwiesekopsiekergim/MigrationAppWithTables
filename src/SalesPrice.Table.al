table 7002 "Sales Price"
{
    // P0003 24.02.16 CCBIE.ARE New field 50000 "Proportion of freight"
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   New field 5012650 "Calculation No."
    // 
    // #RENW16.00:10-001  04.05.09 DEMSR.KHS
    //   New Field "Rent Unit of Measure Code"
    // 
    // #RENW16.00.01:R053 01.10.09 DEMSR.KHS
    //   Rate Parts
    // 
    // #RENW16.00.01:R065 20.10.09 DEMSR.KHS
    //   Operation Counters

    Caption = 'Sales Price';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Sales Code"; Code[20])
        {
            Caption = 'Sales Code';
            TableRelation = IF ("Sales Type" = CONST ("Customer Price Group")) "Customer Price Group"
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
        field(5; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(7; "Price Includes VAT"; Boolean)
        {
            Caption = 'Price Includes VAT';
        }
        field(10; "Allow Invoice Disc."; Boolean)
        {
            Caption = 'Allow Invoice Disc.';
            InitValue = true;
        }
        field(11; "VAT Bus. Posting Gr. (Price)"; Code[10])
        {
            Caption = 'VAT Bus. Posting Gr. (Price)';
            TableRelation = "VAT Business Posting Group";
        }
        field(13; "Sales Type"; Option)
        {
            Caption = 'Sales Type';
            OptionCaption = 'Customer,Customer Price Group,All Customers,Campaign';
            OptionMembers = Customer,"Customer Price Group","All Customers",Campaign;
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
        field(5400; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(5700; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
            InitValue = true;
        }
        field(50000; "Proportion of freight"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Proportion of freight';
            Description = 'P0003';
            MinValue = 0;
        }
        field(50001; Artikelrabattgruppe; Code[20])
        {
            CalcFormula = Lookup (Item."Item Disc. Group" WHERE ("No." = FIELD ("Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
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
        field(5072651; "Rate Component Type"; Option)
        {
            Caption = 'Rate Component Type';
            Description = '#RENW16.00.01:R053';
            OptionCaption = ' ,Rate Part,One-Time Invoicing';
            OptionMembers = " ","Rate Part","One-Time Invoicing";
        }
        field(5072652; "Rate Component No."; Code[20])
        {
            Caption = 'Rate Component No.';
            Description = '#RENW16.00.01:R053';
            TableRelation = "Item Rent Rate Component"."Rate Component No." WHERE ("Item No." = FIELD ("Item No."),
                                                                                   Type = FIELD ("Rate Component Type"));
        }
        field(5072653; "Free Operation Hours"; Integer)
        {
            Caption = 'Free Operation Hours';
            Description = '#RENW16.00.01:R065';
        }
        field(5072654; "Free Operation Miles"; Integer)
        {
            Caption = 'Free Operation Miles';
            Description = '#RENW16.00.01:R065';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Sales Type", "Sales Code", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity", "Rental Rate Code", "Rate Component Type", "Rate Component No.")
        {
            Clustered = true;
        }
        key(Key2; "Sales Type", "Sales Code", "Item No.", "Starting Date", "Currency Code", "Variant Code", "Unit of Measure Code", "Minimum Quantity", "Rental Rate Code", "Rate Component Type", "Rate Component No.")
        {
        }
    }

    fieldgroups
    {
    }
}

