table 5747 "Transfer Receipt Line"
{
    // #TMW17.10.01:T100 10.09.14 DEMSR.SSZ new field "Text Set ID" (5060610) and new function

    Caption = 'Transfer Receipt Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(5; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(9; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(10; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(11; "Inventory Posting Group"; Code[10])
        {
            Caption = 'Inventory Posting Group';
            TableRelation = "Inventory Posting Group";
        }
        field(12; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(14; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(15; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(16; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DecimalPlaces = 0 : 5;
        }
        field(17; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Unit Volume"; Decimal)
        {
            Caption = 'Unit Volume';
            DecimalPlaces = 0 : 5;
        }
        field(21; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(22; "Units per Parcel"; Decimal)
        {
            Caption = 'Units per Parcel';
            DecimalPlaces = 0 : 5;
        }
        field(23; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(24; "Transfer Order No."; Code[20])
        {
            Caption = 'Transfer Order No.';
            TableRelation = "Transfer Header";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(25; "Receipt Date"; Date)
        {
            Caption = 'Receipt Date';
        }
        field(26; "Shipping Agent Code"; Code[10])
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(27; "Shipping Agent Service Code"; Code[10])
        {
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE ("Shipping Agent Code" = FIELD ("Shipping Agent Code"));
        }
        field(28; "In-Transit Code"; Code[10])
        {
            Caption = 'In-Transit Code';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (true));
        }
        field(29; "Transfer-from Code"; Code[10])
        {
            Caption = 'Transfer-from Code';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(30; "Transfer-to Code"; Code[10])
        {
            Caption = 'Transfer-to Code';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(31; "Item Rcpt. Entry No."; Integer)
        {
            Caption = 'Item Rcpt. Entry No.';
        }
        field(32; "Shipping Time"; DateFormula)
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Time';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5704; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5707; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code" = FIELD ("Item Category Code"));
        }
        field(7301; "Transfer-To Bin Code"; Code[20])
        {
            Caption = 'Transfer-To Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Transfer-to Code"),
                                            "Item Filter" = FIELD ("Item No."),
                                            "Variant Filter" = FIELD ("Variant Code"));
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Transfer Order No.", "Item No.", "Receipt Date")
        {
        }
    }

    fieldgroups
    {
    }
}

