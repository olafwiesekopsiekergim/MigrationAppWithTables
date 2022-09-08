table 5848 "Cost Share Buffer"
{
    Caption = 'Cost Share Buffer';

    fields
    {
        field(1; "Item Ledger Entry No."; Integer)
        {
            Caption = 'Item Ledger Entry No.';
        }
        field(2; "Capacity Ledger Entry No."; Integer)
        {
            Caption = 'Capacity Ledger Entry No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(4; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }
        field(5; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(6; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Purchase,Sale,Positive Adjmt.,Negative Adjmt.,Transfer,Consumption,Output, ,Assembly Consumption,Assembly Output';
            OptionMembers = Purchase,Sale,"Positive Adjmt.","Negative Adjmt.",Transfer,Consumption,Output," ","Assembly Consumption","Assembly Output";
        }
        field(7; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(21; "Direct Cost"; Decimal)
        {
            Caption = 'Direct Cost';
        }
        field(22; "Indirect Cost"; Decimal)
        {
            Caption = 'Indirect Cost';
        }
        field(23; Revaluation; Decimal)
        {
            Caption = 'Revaluation';
        }
        field(24; Rounding; Decimal)
        {
            Caption = 'Rounding';
        }
        field(25; Variance; Decimal)
        {
            Caption = 'Variance';
        }
        field(26; "Purchase Variance"; Decimal)
        {
            Caption = 'Purchase Variance';
        }
        field(27; "Material Variance"; Decimal)
        {
            Caption = 'Material Variance';
        }
        field(28; "Capacity Variance"; Decimal)
        {
            Caption = 'Capacity Variance';
        }
        field(29; "Capacity Overhead Variance"; Decimal)
        {
            Caption = 'Capacity Overhead Variance';
        }
        field(30; "Mfg. Overhead Variance"; Decimal)
        {
            Caption = 'Mfg. Overhead Variance';
        }
        field(31; "Subcontracted Variance"; Decimal)
        {
            Caption = 'Subcontracted Variance';
        }
        field(32; Material; Decimal)
        {
            Caption = 'Material';
        }
        field(34; Capacity; Decimal)
        {
            Caption = 'Capacity';
        }
        field(35; "Capacity Overhead"; Decimal)
        {
            Caption = 'Capacity Overhead';
        }
        field(36; "Material Overhead"; Decimal)
        {
            Caption = 'Material Overhead';
        }
        field(37; Subcontracted; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'Subcontracted';
        }
        field(40; "New Quantity"; Decimal)
        {
            Caption = 'New Quantity';
        }
        field(41; "New Direct Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'New Direct Cost';
        }
        field(42; "New Indirect Cost"; Decimal)
        {
            Caption = 'New Indirect Cost';
        }
        field(43; "New Revaluation"; Decimal)
        {
            Caption = 'New Revaluation';
        }
        field(44; "New Rounding"; Decimal)
        {
            Caption = 'New Rounding';
        }
        field(45; "New Variance"; Decimal)
        {
            Caption = 'New Variance';
        }
        field(46; "New Purchase Variance"; Decimal)
        {
            Caption = 'New Purchase Variance';
        }
        field(47; "New Material Variance"; Decimal)
        {
            Caption = 'New Material Variance';
        }
        field(48; "New Capacity Variance"; Decimal)
        {
            Caption = 'New Capacity Variance';
        }
        field(49; "New Capacity Overhead Variance"; Decimal)
        {
            Caption = 'New Capacity Overhead Variance';
        }
        field(50; "New Mfg. Overhead Variance"; Decimal)
        {
            Caption = 'New Mfg. Overhead Variance';
        }
        field(51; "New Subcontracted Variance"; Decimal)
        {
            AccessByPermission = TableData "Machine Center" = R;
            Caption = 'New Subcontracted Variance';
        }
        field(52; "Share of Cost in Period"; Decimal)
        {
            Caption = 'Share of Cost in Period';
        }
        field(54; "New Material"; Decimal)
        {
            Caption = 'New Material';
        }
        field(56; "New Capacity"; Decimal)
        {
            Caption = 'New Capacity';
        }
        field(57; "New Capacity Overhead"; Decimal)
        {
            Caption = 'New Capacity Overhead';
        }
        field(58; "New Material Overhead"; Decimal)
        {
            Caption = 'New Material Overhead';
        }
        field(59; "New Subcontracted"; Decimal)
        {
            Caption = 'New Subcontracted';
        }
        field(60; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(90; "Order Type"; Option)
        {
            Caption = 'Order Type';
            OptionCaption = ' ,Production,Transfer,Service,Assembly';
            OptionMembers = " ",Production,Transfer,Service,Assembly;
        }
        field(91; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(92; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
        }
    }

    keys
    {
        key(Key1; "Item Ledger Entry No.", "Capacity Ledger Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Location Code", "Variant Code", "Entry Type")
        {
        }
        key(Key3; "Order Type", "Order No.", "Order Line No.", "Entry Type")
        {
        }
    }

    fieldgroups
    {
    }
}

