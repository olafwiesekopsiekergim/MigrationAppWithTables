table 42012840 "MobileNAV Temporary Data"
{
    // 2018-09-24 MNCO4.8.0.4 MAJORT
    //   - "WhItTr Qty. (Base)", "WhItTr Qty. per Unit of Measur" caption changed


    fields
    {
        field(1; "User ID"; Code[50])
        {
        }
        field(2; "Line No."; Integer)
        {
        }
        field(15; "Profile Contact No."; Code[20])
        {
        }
        field(16; "Profile Contact Company No."; Code[20])
        {
        }
        field(17; "Profile Question Line Start"; Integer)
        {
        }
        field(18; "Profile Question Line End"; Integer)
        {
        }
        field(19; "Profile Questionnaire Code"; Code[20])
        {
        }
        field(20; "AdhocMov From Bin Code"; Code[20])
        {
            Caption = 'From Bin Code';
        }
        field(21; "AdhocMov To Bin Code"; Code[20])
        {
            Caption = 'To Bin Code';
        }
        field(22; "AdhocMov Location Code"; Code[20])
        {
            Caption = 'From Location Code';
        }
        field(23; "AdhocMov Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(24; "AdhocMov Description"; Text[50])
        {
            Caption = 'Description';
        }
        field(25; "AdhocMov Quantity"; Decimal)
        {
            Caption = 'Quantity';
        }
        field(26; "AdhocMov Unit of Measure Code"; Code[20])
        {
            Caption = 'Unit of Measure Code';
        }
        field(27; "AdhocMov Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(28; "AdhocMov Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(32; "WhItTr Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(33; "WhItTr Source SubType"; Option)
        {
            Caption = 'Source SubType';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(34; "WhItTr Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(35; "WhItTr Source Batch Name"; Code[20])
        {
            Caption = 'Source Batch Name';
        }
        field(36; "WhItTr Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(37; "WhItTr Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(38; "WhItTr Location Code"; Code[20])
        {
            Caption = 'Location Code';
        }
        field(39; "WhItTr Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(40; "WhItTr Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(41; "WhItTr Variant Code"; Code[20])
        {
            Caption = 'Variant Code';
        }
        field(42; "WhItTr Qty. (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
        }
        field(43; "WhItTr Qty. to Handle (Base)"; Decimal)
        {
            Caption = 'Qty. to Handle (Base)';
        }
        field(44; "WhItTr Reclass"; Boolean)
        {
            Caption = 'Reclass';
        }
        field(45; "WhItTr SN Required"; Boolean)
        {
            Caption = 'SN Required';
        }
        field(46; "WhItTr LN Required"; Boolean)
        {
            Caption = 'LN Required';
        }
        field(47; "WhItTr Handle"; Boolean)
        {
            Caption = 'Handle';
        }
        field(48; "WhItTr Description"; Text[50])
        {
            Caption = 'Description';
        }
        field(49; "WhItTr Qty. per Unit of Measur"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(50; "AdhocMov Variant Code"; Code[20])
        {
            Caption = 'Variant Code';
        }
        field(55; "Customer No."; Code[20])
        {
        }
        field(56; "AdhocMov To Location Code"; Code[20])
        {
            Caption = 'To Location Code';
        }
        field(57; "AdhocMov Location Directed"; Boolean)
        {
        }
        field(58; "AdhocMov Journal Template Name"; Code[20])
        {
        }
        field(59; "AdhocMov Journal Batch Name"; Code[20])
        {
        }
        field(60; "AdhocMov Journal Line No."; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "User ID", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

