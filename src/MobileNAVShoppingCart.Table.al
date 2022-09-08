table 42012841 "MobileNAV Shopping Cart"
{
    // 2016-12-12 MNCO4.6.0.2 MAJORT
    //   - Variant Code added
    //   - primary key changed


    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(5; "Unit of Measure Code"; Code[20])
        {
            Caption = 'Unit of Measure Code';
        }
        field(6; "Variant Code"; Code[20])
        {
        }
    }

    keys
    {
        key(Key1; "User ID", "Item No.", "Variant Code", "Unit of Measure Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

