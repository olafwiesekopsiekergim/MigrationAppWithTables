table 223 "Drop Shpt. Post. Buffer"
{
    Caption = 'Drop Shpt. Post. Buffer';

    fields
    {
        field(1; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(2; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
        }
        field(3; "Item Shpt. Entry No."; Integer)
        {
            Caption = 'Item Shpt. Entry No.';
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(5; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Order No.", "Order Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

