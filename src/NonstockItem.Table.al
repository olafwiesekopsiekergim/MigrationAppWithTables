table 5718 "Nonstock Item"
{
    Caption = 'Nonstock Item';

    fields
    {
        field(1; "Entry No."; Code[20])
        {
            Caption = 'Entry No.';
            Editable = true;
        }
        field(2; "Manufacturer Code"; Code[10])
        {
            Caption = 'Manufacturer Code';
            TableRelation = Manufacturer.Code;
        }
        field(3; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor."No.";
        }
        field(4; "Vendor Item No."; Code[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
            Editable = true;
        }
        field(6; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = "Unit of Measure";
        }
        field(7; "Published Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Published Cost';
        }
        field(8; "Negotiated Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Negotiated Cost';
        }
        field(9; "Unit Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unit Price';
        }
        field(10; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(13; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE ("Item Category Code" = FIELD ("Item Category Code"));
        }
        field(14; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(15; "Bar Code"; Code[20])
        {
            Caption = 'Bar Code';
        }
        field(16; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item."No.";
        }
        field(53; Comment; Boolean)
        {
            CalcFormula = Exist ("Comment Line" WHERE ("Table Name" = CONST ("Nonstock Item"),
                                                      "No." = FIELD ("Entry No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Vendor Item No.", "Manufacturer Code")
        {
        }
        key(Key3; "Item No.")
        {
        }
        key(Key4; "Vendor No.", "Vendor Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}

