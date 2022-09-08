table 5005362 "Post. Exp. Ph. In. Track. Line"
{
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."

    Caption = 'Post. Exp. Ph. In. Track. Line';

    fields
    {
        field(1; "Order No"; Code[20])
        {
            Caption = 'Order No';
            TableRelation = "Post. Phys. Invt. Order Header";
        }
        field(2; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
            TableRelation = "Posted Phys. Invt. Order Line"."Line No." WHERE ("Document No." = FIELD ("Order No"));
        }
        field(3; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(4; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(30; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
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
        key(Key1; "Order No", "Order Line No.", "Serial No.", "Lot No.")
        {
            Clustered = true;
            SumIndexFields = "Quantity (Base)";
        }
    }

    fieldgroups
    {
    }
}

