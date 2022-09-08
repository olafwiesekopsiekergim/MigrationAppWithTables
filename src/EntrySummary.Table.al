table 338 "Entry Summary"
{
    // :PMW14.01:2457:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."
    // 
    // :PMW15.01.01:107:1
    //   # 5012500 "Lot No. Trading Unit" set to Editable = No
    //   # 5012501 "Trading Unit No." set to Editable = No
    // 
    // #PMW16.00.01:105 04.11.09 DEMSR.IST
    //   New field 5012600 "QC Status"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management

    Caption = 'Entry Summary';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(3; "Summary Type"; Text[80])
        {
            Caption = 'Summary Type';
        }
        field(4; "Total Quantity"; Decimal)
        {
            Caption = 'Total Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(5; "Total Reserved Quantity"; Decimal)
        {
            Caption = 'Total Reserved Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(6; "Total Available Quantity"; Decimal)
        {
            Caption = 'Total Available Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(7; "Current Reserved Quantity"; Decimal)
        {
            Caption = 'Current Reserved Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(8; "Source Subtype"; Integer)
        {
            Caption = 'Source Subtype';
        }
        field(15; "Qty. Alloc. in Warehouse"; Decimal)
        {
            Caption = 'Qty. Alloc. in Warehouse';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Res. Qty. on Picks & Shipmts."; Decimal)
        {
            Caption = 'Res. Qty. on Picks & Shipmts.';
            DecimalPlaces = 0 : 5;
        }
        field(6500; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
            Editable = false;
        }
        field(6501; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
            Editable = false;
        }
        field(6502; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
            Editable = false;
        }
        field(6503; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
            Editable = false;
        }
        field(6504; "Total Requested Quantity"; Decimal)
        {
            Caption = 'Total Requested Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(6505; "Selected Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Selected Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(6506; "Current Pending Quantity"; Decimal)
        {
            Caption = 'Current Pending Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(6507; "Current Requested Quantity"; Decimal)
        {
            Caption = 'Current Requested Quantity';
        }
        field(6508; "Bin Content"; Decimal)
        {
            AccessByPermission = TableData "Warehouse Source Filter" = R;
            Caption = 'Bin Content';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(6509; "Bin Active"; Boolean)
        {
            Caption = 'Bin Active';
            Editable = false;
        }
        field(6510; "Non-specific Reserved Qty."; Decimal)
        {
            Caption = 'Non-specific Reserved Qty.';
            Editable = false;
        }
        field(6511; "Double-entry Adjustment"; Decimal)
        {
            Caption = 'Double-entry Adjustment';
            Editable = false;
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = ':PMW14.01:2457:1';
            Editable = false;
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = ':PMW14.01:2457:1';
            Editable = false;
        }
        field(5012600; "QC Status"; Code[10])
        {
            Caption = 'QC Status';
            Description = '#PMW16.00.01:105';
            Editable = false;
            TableRelation = "QC Status";
        }
        field(5034623; Status; Code[20])
        {
            Caption = 'Status';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            TableRelation = "Lot-/ Serial No. Status";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Lot No.", "Serial No.")
        {
        }
        key(Key3; "Expiration Date")
        {
        }
    }

    fieldgroups
    {
    }
}

