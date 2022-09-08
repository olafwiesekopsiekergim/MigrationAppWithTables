table 5933 "Service Order Posting Buffer"
{
    Caption = 'Service Order Posting Buffer';

    fields
    {
        field(1; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(2; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Usage,Sale';
            OptionMembers = Usage,Sale;
        }
        field(3; "Posting Group Type"; Option)
        {
            Caption = 'Posting Group Type';
            OptionCaption = ' ,Resource,Item,Service Cost,Service Contract';
            OptionMembers = " ",Resource,Item,"Service Cost","Service Contract";
        }
        field(4; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(6; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(7; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(8; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(9; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(10; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
        }
        field(11; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(13; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(14; "Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost';
        }
        field(15; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
        }
        field(16; "Appl.-to Service Entry"; Integer)
        {
            Caption = 'Appl.-to Service Entry';
        }
        field(17; "Service Contract No."; Code[20])
        {
            Caption = 'Service Contract No.';
        }
        field(18; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
        }
        field(21; "Qty. to Invoice"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Qty. to Invoice';
        }
        field(22; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
        }
        field(23; "Dimension Entry No."; Integer)
        {
            Caption = 'Dimension Entry No.';
        }
        field(24; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
    }

    keys
    {
        key(Key1; "Service Order No.", "Entry Type", "Posting Group Type", "No.", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "Global Dimension 1 Code", "Global Dimension 2 Code", "Unit of Measure Code", "Service Item No.", "Location Code", "Appl.-to Service Entry")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

