table 6502 "Item Tracking Code"
{
    // :PMW14.02.01:126:1
    //   # New field 5012400 "QC Standard Status"
    // 
    // :PMW14.02.01:98:1
    //   # New field 5012600 "Lot QC Template No."
    // 
    // #PMW16.00.01:103 30.10.09 DEMSR.IST
    //   New field 5012401 "Exp. Date unique per Lot No"
    // 
    // #PMW17.10.00.01:T101 11.12.13 DEMSR.KHS
    //   Delete "Unique Exp. Date per Lot No."  field
    // 
    // #QMW16.00.02:X001 27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.02.06:T501 16.02.11 DEMSR.KHS
    //   Force Info Required with Lot handling
    // 
    // #QMW16.00.03:T513 07.10.11 DEMSR.KHS
    //   Serial No. Info. was not created on item posting
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW16.00.03.01:T517 23.01.12 DEMSR.KHS
    //   Set "SN Info. Inbound Must Exist" and "SN Info. Outbound Must Exist" on validate of
    //   "SN Specific Tracking"
    // 
    // #QMW17.10.00.01:T101 16.12.13 DEMSR.KHS
    //   New field: "Transfer Comments on Rename"
    // 
    // #QMW17.10.00.01:T509 08.01.14 DEMSR.KHS
    //   Test on Warehouse Tracking when Status is in use
    // 
    // #QMW18.00.01.02:T500 06.10.15 DEMSR.KHS
    //   "SN Info. must exists" could be deactivated with "SN specific tracking" active

    Caption = 'Item Tracking Code';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Warranty Date Formula"; DateFormula)
        {
            Caption = 'Warranty Date Formula';
        }
        field(5; "Man. Warranty Date Entry Reqd."; Boolean)
        {
            Caption = 'Man. Warranty Date Entry Reqd.';
        }
        field(6; "Man. Expir. Date Entry Reqd."; Boolean)
        {
            Caption = 'Man. Expir. Date Entry Reqd.';
        }
        field(8; "Strict Expiration Posting"; Boolean)
        {
            Caption = 'Strict Expiration Posting';
        }
        field(11; "SN Specific Tracking"; Boolean)
        {
            Caption = 'SN Specific Tracking';
        }
        field(13; "SN Info. Inbound Must Exist"; Boolean)
        {
            Caption = 'SN Info. Inbound Must Exist';
        }
        field(14; "SN Info. Outbound Must Exist"; Boolean)
        {
            Caption = 'SN Info. Outbound Must Exist';
        }
        field(15; "SN Warehouse Tracking"; Boolean)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'SN Warehouse Tracking';
        }
        field(21; "SN Purchase Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'SN Purchase Inbound Tracking';
        }
        field(22; "SN Purchase Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            Caption = 'SN Purchase Outbound Tracking';
        }
        field(23; "SN Sales Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'SN Sales Inbound Tracking';
        }
        field(24; "SN Sales Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'SN Sales Outbound Tracking';
        }
        field(25; "SN Pos. Adjmt. Inb. Tracking"; Boolean)
        {
            Caption = 'SN Pos. Adjmt. Inb. Tracking';
        }
        field(26; "SN Pos. Adjmt. Outb. Tracking"; Boolean)
        {
            Caption = 'SN Pos. Adjmt. Outb. Tracking';
        }
        field(27; "SN Neg. Adjmt. Inb. Tracking"; Boolean)
        {
            Caption = 'SN Neg. Adjmt. Inb. Tracking';
        }
        field(28; "SN Neg. Adjmt. Outb. Tracking"; Boolean)
        {
            Caption = 'SN Neg. Adjmt. Outb. Tracking';
        }
        field(29; "SN Transfer Tracking"; Boolean)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'SN Transfer Tracking';
        }
        field(30; "SN Manuf. Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'SN Manuf. Inbound Tracking';
        }
        field(31; "SN Manuf. Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'SN Manuf. Outbound Tracking';
        }
        field(32; "SN Assembly Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'SN Assembly Inbound Tracking';
        }
        field(33; "SN Assembly Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'SN Assembly Outbound Tracking';
        }
        field(41; "Lot Specific Tracking"; Boolean)
        {
            Caption = 'Lot Specific Tracking';
        }
        field(43; "Lot Info. Inbound Must Exist"; Boolean)
        {
            Caption = 'Lot Info. Inbound Must Exist';
        }
        field(44; "Lot Info. Outbound Must Exist"; Boolean)
        {
            Caption = 'Lot Info. Outbound Must Exist';
        }
        field(45; "Lot Warehouse Tracking"; Boolean)
        {
            Caption = 'Lot Warehouse Tracking';
        }
        field(51; "Lot Purchase Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Lot Purchase Inbound Tracking';
        }
        field(52; "Lot Purchase Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Lot Purchase Outbound Tracking';
        }
        field(53; "Lot Sales Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Lot Sales Inbound Tracking';
        }
        field(54; "Lot Sales Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Lot Sales Outbound Tracking';
        }
        field(55; "Lot Pos. Adjmt. Inb. Tracking"; Boolean)
        {
            Caption = 'Lot Pos. Adjmt. Inb. Tracking';
        }
        field(56; "Lot Pos. Adjmt. Outb. Tracking"; Boolean)
        {
            Caption = 'Lot Pos. Adjmt. Outb. Tracking';
        }
        field(57; "Lot Neg. Adjmt. Inb. Tracking"; Boolean)
        {
            Caption = 'Lot Neg. Adjmt. Inb. Tracking';
        }
        field(58; "Lot Neg. Adjmt. Outb. Tracking"; Boolean)
        {
            Caption = 'Lot Neg. Adjmt. Outb. Tracking';
        }
        field(59; "Lot Transfer Tracking"; Boolean)
        {
            Caption = 'Lot Transfer Tracking';
        }
        field(60; "Lot Manuf. Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Lot Manuf. Inbound Tracking';
        }
        field(61; "Lot Manuf. Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Lot Manuf. Outbound Tracking';
        }
        field(62; "Lot Assembly Inbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Lot Assembly Inbound Tracking';
        }
        field(63; "Lot Assembly Outbound Tracking"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Lot Assembly Outbound Tracking';
        }
        field(5012400; "QC Standard Status"; Code[10])
        {
            Caption = 'QC Standard Status';
            Description = ':PMW14.02.01:126:1';
            TableRelation = "QC Status";
        }
        field(5012600; "Lot QC Template No."; Code[20])
        {
            Caption = 'Lot QC Template No.';
            Description = ':PMW14.02.01:98:1';
            TableRelation = "QC Template Header";
        }
        field(5034620; "Inventory Status Mandatory"; Boolean)
        {
            Caption = 'Inventory Status Mandatory';
            Description = '#QMW16.00.02:X001';
        }
        field(5034621; "Quarantine Date Mandatory"; Boolean)
        {
            Caption = 'Quarantine Date Mandatory';
            Description = '#QMW16.00.02:X001';
        }
        field(5034622; "Retest Date Mandatory"; Boolean)
        {
            Caption = 'Retest Date Mandatory';
            Description = '#QMW16.00.02:X001';
        }
        field(5034623; "Initial Status"; Code[20])
        {
            Caption = 'Initial Status';
            Description = '#QMW16.00.02:X001';
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034636; "Expiration Date Mandatory"; Boolean)
        {
            Caption = 'Expiration Date Mandatory';
            Description = '#QMW16.00.02:X001';
        }
        field(5034637; "Transfer Comments on Rename"; Option)
        {
            Caption = 'Transfer Comments on Rename';
            Description = '#QMW17.10.00.01:T101';
            OptionCaption = ' ,Copy,Move,Copy+New,Move+New';
            OptionMembers = " ",Copy,Move,"Copy+New","Move+New";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

