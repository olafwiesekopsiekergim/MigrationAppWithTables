table 5005360 "Phys. Invt. Tracking Buffer"
{
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."

    Caption = 'Phys. Invt. Tracking Buffer';

    fields
    {
        field(1; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(2; "Lot No"; Code[20])
        {
            Caption = 'Lot No';
        }
        field(10; "Qty. Recorded (Base)"; Decimal)
        {
            Caption = 'Qty. Recorded (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Qty. Expected (Base)"; Decimal)
        {
            Caption = 'Qty. Expected (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(20; "Qty. To Transfer"; Decimal)
        {
            Caption = 'Qty. To Transfer';
        }
        field(21; "Outstanding Quantity"; Decimal)
        {
            Caption = 'Outstanding Quantity';
        }
        field(22; Open; Boolean)
        {
            Caption = 'Open';
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
    }

    keys
    {
        key(Key1; "Serial No.", "Lot No")
        {
            Clustered = true;
        }
        key(Key2; Open)
        {
        }
    }

    fieldgroups
    {
    }
}

