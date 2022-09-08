table 5832 "Capacity Ledger Entry"
{
    // #PXW16.00:104 28.01.09 DEMSR.IG
    //   New field 5012700 "Order Type Code"
    //   New field 5012701 "Standstill Type Code"
    //   New key <"Work Center No.", "Order Type Code", "Standstill Type Code">
    // 
    // #PXW17.00:T101 02.01.13 DEMSR.IST
    //   Field "Standstill Type Code" changed to "Standstill Reason Code"
    // 
    // #PXW17.00.00.04:T501 07.10.13 DEMSR.KHS
    //   Add Key Group PX to Key:
    //     "Work Center No.","Order Type Code","Standstill Type Code"
    // 
    // :PMW13.71:1:1
    //   New key <"No.", "Item No.", "Unit of Measure Code"
    // 
    // :PMW16.00:156:1
    //   Changed fields for Maintenance and Setup Orders --> #PXW16.00:104
    // 
    // #PMW17.00.00.04:T502 07.10.13 DEMSR.KHS
    //   Add Key Group PM to key:
    //     "No.","Item No.","Unit of Measure Code"
    // 
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)

    Caption = 'Capacity Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Machine Center")) "Machine Center"
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST (Resource)) Resource;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Work Center,Machine Center, ,Resource';
            OptionMembers = "Work Center","Machine Center"," ",Resource;
        }
        field(6; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
        }
        field(9; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center";
        }
        field(10; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Stop Time"; Decimal)
        {
            Caption = 'Stop Time';
            DecimalPlaces = 0 : 5;
        }
        field(15; "Invoiced Quantity"; Decimal)
        {
            Caption = 'Invoiced Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Output Quantity"; Decimal)
        {
            Caption = 'Output Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(17; "Scrap Quantity"; Decimal)
        {
            Caption = 'Scrap Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(19; "Concurrent Capacity"; Decimal)
        {
            Caption = 'Concurrent Capacity';
        }
        field(28; "Cap. Unit of Measure Code"; Code[10])
        {
            Caption = 'Cap. Unit of Measure Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(29; "Qty. per Cap. Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Cap. Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(33; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(34; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(39; "Last Output Line"; Boolean)
        {
            Caption = 'Last Output Line';
        }
        field(42; "Completely Invoiced"; Boolean)
        {
            Caption = 'Completely Invoiced';
        }
        field(43; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(44; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(52; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header";
        }
        field(53; "Routing Reference No."; Integer)
        {
            Caption = 'Routing Reference No.';
        }
        field(56; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(57; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(58; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(59; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(60; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(61; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(65; "Stop Code"; Code[10])
        {
            Caption = 'Stop Code';
            TableRelation = Stop;
        }
        field(66; "Scrap Code"; Code[10])
        {
            Caption = 'Scrap Code';
            TableRelation = Scrap;
        }
        field(68; "Work Center Group Code"; Code[10])
        {
            Caption = 'Work Center Group Code';
            TableRelation = "Work Center Group";
        }
        field(69; "Work Shift Code"; Code[10])
        {
            Caption = 'Work Shift Code';
            TableRelation = "Work Shift";
        }
        field(71; "Direct Cost"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Value Entry"."Cost Amount (Actual)" WHERE ("Capacity Ledger Entry No." = FIELD ("Entry No."),
                                                                          "Entry Type" = CONST ("Direct Cost")));
            Caption = 'Direct Cost';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Overhead Cost"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Value Entry"."Cost Amount (Actual)" WHERE ("Capacity Ledger Entry No." = FIELD ("Entry No."),
                                                                          "Entry Type" = CONST ("Indirect Cost")));
            Caption = 'Overhead Cost';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76; "Direct Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Value Entry"."Cost Amount (Actual) (ACY)" WHERE ("Capacity Ledger Entry No." = FIELD ("Entry No."),
                                                                                "Entry Type" = CONST ("Direct Cost")));
            Caption = 'Direct Cost (ACY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77; "Overhead Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Value Entry"."Cost Amount (Actual) (ACY)" WHERE ("Capacity Ledger Entry No." = FIELD ("Entry No."),
                                                                                "Entry Type" = CONST ("Indirect Cost")));
            Caption = 'Overhead Cost (ACY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; Subcontracting; Boolean)
        {
            Caption = 'Subcontracting';
        }
        field(90; "Order Type"; Option)
        {
            Caption = 'Order Type';
            Editable = false;
            OptionCaption = ' ,Production,Transfer,Service,Assembly';
            OptionMembers = " ",Production,Transfer,Service,Assembly;
        }
        field(91; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            Editable = false;
            TableRelation = IF ("Order Type" = CONST (Production)) "Production Order"."No." WHERE (Status = FILTER (Released ..));
        }
        field(92; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
            Editable = false;
            TableRelation = IF ("Order Type" = CONST (Production)) "Prod. Order Line"."Line No." WHERE (Status = FILTER (Released ..),
                                                                                                     "Prod. Order No." = FIELD ("Order No."));
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5012700; "Order Type Code"; Code[20])
        {
            Caption = 'Order Type Code';
            Description = '#PXW16.00:104';
            TableRelation = "MS Order Type";
        }
        field(5012701; "Standstill Reason Code"; Code[20])
        {
            Caption = 'Standstill Reason Code';
            Description = '#PXW16.00:104';
            TableRelation = "MS Standstill Reason";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Posting Date")
        {
        }
        key(Key3; "Order Type", "Order No.", "Order Line No.", "Routing No.", "Routing Reference No.", "Operation No.", "Last Output Line")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Quantity, "Output Quantity";
        }
        key(Key4; "Work Center No.", "Work Shift Code", "Posting Date")
        {
        }
        key(Key5; Type, "No.", "Work Shift Code", "Item No.", "Posting Date")
        {
        }
        key(Key6; "Work Center No.", "Order Type Code", "Standstill Reason Code")
        {
            SumIndexFields = Quantity, "Setup Time";
        }
        key(Key7; "No.", "Item No.", "Unit of Measure Code")
        {
            SumIndexFields = "Output Quantity";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, Type, "No.", "Posting Date", "Document No.")
        {
        }
    }
}

