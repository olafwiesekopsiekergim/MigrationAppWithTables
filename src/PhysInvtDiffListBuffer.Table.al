table 5005363 "Phys. Invt. Diff. List Buffer"
{
    Caption = 'Phys. Invt. Diff. List Buffer';

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Exp. Serial No."; Code[20])
        {
            Caption = 'Exp. Serial No.';
        }
        field(11; "Exp. Lot No."; Code[20])
        {
            Caption = 'Exp. Lot No.';
        }
        field(12; "Exp. Qty. (Base)"; Decimal)
        {
            Caption = 'Exp. Qty. (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(20; "Rec. No."; Integer)
        {
            Caption = 'Rec. No.';
        }
        field(21; "Rec. Line No."; Integer)
        {
            Caption = 'Rec. Line No.';
        }
        field(22; "Rec. Serial No."; Code[20])
        {
            Caption = 'Rec. Serial No.';
        }
        field(23; "Rec. Lot No."; Code[20])
        {
            Caption = 'Rec. Lot No.';
        }
        field(24; "Rec. Qty. (Base)"; Decimal)
        {
            Caption = 'Rec. Qty. (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(30; "Track. Serial No."; Code[20])
        {
            Caption = 'Track. Serial No.';
        }
        field(31; "Track. Lot No."; Code[20])
        {
            Caption = 'Track. Lot No.';
        }
        field(32; "Track. Qty. Neg. (Base)"; Decimal)
        {
            Caption = 'Track. Qty. Neg. (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(33; "Track. Qty. Pos. (Base)"; Decimal)
        {
            Caption = 'Track. Qty. Pos. (Base)';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

