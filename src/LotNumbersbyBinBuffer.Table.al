table 7350 "Lot Numbers by Bin Buffer"
{
    Caption = 'Lot Numbers by Bin Buffer';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(2; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(3; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }
        field(4; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
        }
        field(5; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
        }
        field(6; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(7; "Qty. (Base)"; Decimal)
        {
            Caption = 'Qty. (Base)';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Location Code", "Zone Code", "Bin Code", "Lot No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

