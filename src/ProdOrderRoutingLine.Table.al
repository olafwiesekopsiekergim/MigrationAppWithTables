table 5409 "Prod. Order Routing Line"
{
    // #PXW16.00:101 27.01.09 DEMSR.IG
    //   New field 5012700 "Sequence Planning"
    //   New field 5012701 "Work Center Type"
    //   New field 5012702 "Not delete Relation"
    //   Undo operation assignment in DeleteRelations
    //   Set "Work Center Type" and "Sequence Planning"
    //   Update prod. order sequence in function "CalcStartingEndingDates" and "UpdateDateTime"
    //   Adjust prod. order line in OnValidate of "No."
    //   Change sequence routing status in OnValidate of "Routing Status"
    // 
    // #PXW16.00:103 28.01.09 DEMSR.IG
    //   New field 5012710 "Fixed-Step Prod. Rate Time"
    //   New field 5012711 "Fixed-Step Production Rate"
    //   Check work center production rate in function "WorkCenterTransferfields"
    // 
    // #PXW16.00:104 28.01.09 DEMSR.IG
    //   Check Maintenance-/Setup Job in OnValidate of "No."
    // 
    // #PXW16.00.03:T107 21.07.11 DEMSR.IST
    //   New field 5012713 "Work Center Prod. Rate No."
    // 
    // #PXW17.10.00.01:T504 23.12.13 DEMSR.IST
    //   Reservation Date Conflict, Sequence Planning must be updated to keep due date in recalculation, function CalcStartingEndingDates()
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW17.10.01.01:T501 02.12.14 DEMSR.IST
    //   Avoid error on adding a sequence work center to routing manually
    // 
    // #PXW18.00.01:T101 20.05.15 DEMSR.IST
    //   Field "Sequence Planning" set to Editable=False
    // 
    // #CAW16.00.01:T101 07.07.11 DEMSR.IST
    //   New field 5012650 "Calculation Group Code" added
    //   Transfer "Calculation Group Code" from Work Center/Machine Center
    // 
    // :DMW13.60.03:1:01 #neues Feld: Kalkulationsgruppe
    //  # neue Felder: "Konstruktionsnr."; "Konstruktionszeilennr."
    // 
    // :DMW13.70.01:1:01 #neues Feld Quelltyp: woher kommen die Arbeitsgänge: "Beleg Stückliste" oder Konstruktion
    //  # Felder: "Konstruktionsnr." und "Konstruktionszeilennr." umbenannt in
    //  # "Quellnr." und "Quellzeilennr."
    // 
    // :DMW13.71:1:01 #  Standardverbindungscode von WorkCenter-Karte übenehmen
    // :DMW14.03:1:01 #  neue Felder: 5013430 "Base Material" und 5013440 "Saw List"; Key für "Saw List" angelegt
    //                #  5013450 "Item No. Prod. Line", 5013460 "Unit of Measure Prod. Line"
    // :DMW14.04:1:01 #  corrected Table Relation in Field "Calculation Group"
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW16.00.00.01:6:01 #TableRelation in field "Calculation Group" corrected
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted calculation fields
    // #DMW16.00.03:T007 01.09.11 DEMSR.SSZ
    //   #New fields: 5013470, 5013480, 5013485, 5013490, 5013500
    //   #New functions: OpenPurchaseOrder, OpenPurchaseRcptOrder, GetTransferOrderNo, OpenTransferOrder, GetPostedTransferOrderNo,
    //   #               OpenPostedTransferOrder, ShowComponents
    // #DMW16.00.03.02:A020 23.02.12 DEMSR.SSZ
    //   #Solved a problem in the bundle database when using the function "Change Work Center" in the Sequence Planning by PM
    // #DMW17.00:A001 07.12.12 DEMSR.SSZ
    //   #Corrected table relation in field 5013440
    // #DMW17.10.00.02:T503 17.02.14 DEMSR.SSZ
    //   #Rename "Saw List" to "Work Package"
    // #DMW18.00.01:T107 03.06.15 DEMSR.SSZ
    //   #new fields: "Subcontracting Currency", "Unit Cost per (FCY)"
    // 
    // #DMW19.00:T101 02.10.15 DEMSR.KHS
    //   Set function "SubcontractPurchOrderExist" to Local = No
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM
    // 
    // #QMW17.00 License Check changed
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW17.00.00.02:T101 14.05.13 DEMSR.KHS
    //   Control IDs corrected
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // :PMW13.71:1:1
    //   Tool Management
    // 
    // :PMW14.02:28:1
    //   New field 5012408 "Routing TAN"
    //   New key <"Routing TAN">
    // 
    // :PMW14.02.01:84:1
    //   Correction of overloading in Work Center Load
    // 
    // :PMW14.02.01:103:1
    //   New field 5012409 "Insert att. to Operation No."
    //   New field 5012410 "Main Insert"
    //   New "Work Center Type" Insert
    // 
    // :PMW15.00:241:1
    //   Changes due to UI and programming standards
    // 
    // :PMW15.00.01:44:1
    //   Routing TAN for manually entered prod. order routing lines
    // 
    // :PMW15.00.01:45:1
    //   Check license permissions
    // 
    // :PMW16.00:155:1
    //   Redesign for Sequence Planning --> #PXW16.00:101
    // 
    // :PMW16.00:161:1
    //   Redesign for Production rates --> #PXW16.00:103
    // 
    // :PMW16.00:156:1
    //   Redesign for Maintenance and Setup Orders --> #PXW16.00:104
    // 
    // :PMW16.00:167:1
    //   Changes due to tool and insert handling
    // 
    // #PMW17.00.00.04:T502 02.10.13 DEMSR.KHS
    //   Add Key Group PM to Key: "Routing TAN"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T103 11.09.14 DEMSR.IST
    //   Check Note on Prod. Order Delay
    // 
    // #PMW17.10.01:T106 18.09.14 DEMSR.IST
    //   New function UpdateLastOperationinProdOrderLine
    //   Call on Routing Status change
    // 
    // #PMW19.00:T101 02.10.15 DEMSR.KHS
    //   Set Function "CalcStartingEndingDates" to Local = No
    // 
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List

    Caption = 'Prod. Order Routing Line';
    Permissions = TableData "Prod. Order Capacity Need" = rimd;

    fields
    {
        field(1; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header";
        }
        field(3; "Routing Reference No."; Integer)
        {
            Caption = 'Routing Reference No.';
            Editable = false;
        }
        field(4; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            NotBlank = true;
        }
        field(5; "Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
        }
        field(6; "Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Work Center,Machine Center';
            OptionMembers = "Work Center","Machine Center";
        }
        field(8; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(9; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            Editable = false;
            TableRelation = "Work Center";
        }
        field(10; "Work Center Group Code"; Code[10])
        {
            Caption = 'Work Center Group Code';
            Editable = false;
            TableRelation = "Work Center Group";
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(13; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(14; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(15; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(16; "Fixed Scrap Quantity"; Decimal)
        {
            Caption = 'Fixed Scrap Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(17; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Scrap Factor %"; Decimal)
        {
            Caption = 'Scrap Factor %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(19; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01.T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(20; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01.T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(21; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01.T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(22; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01.T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(27; "Minimum Process Time"; Decimal)
        {
            Caption = 'Minimum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(28; "Maximum Process Time"; Decimal)
        {
            Caption = 'Maximum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(30; "Concurrent Capacities"; Decimal)
        {
            Caption = 'Concurrent Capacities';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
        }
        field(31; "Send-Ahead Quantity"; Decimal)
        {
            Caption = 'Send-Ahead Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(34; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            Editable = false;
            TableRelation = "Routing Link";
        }
        field(35; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(40; "Unit Cost per"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost per';
            MinValue = 0;
        }
        field(41; Recalculate; Boolean)
        {
            Caption = 'Recalculate';
        }
        field(50; "Sequence No. (Forward)"; Integer)
        {
            Caption = 'Sequence No. (Forward)';
            Editable = false;
        }
        field(51; "Sequence No. (Backward)"; Integer)
        {
            Caption = 'Sequence No. (Backward)';
            Editable = false;
        }
        field(52; "Fixed Scrap Qty. (Accum.)"; Decimal)
        {
            Caption = 'Fixed Scrap Qty. (Accum.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(53; "Scrap Factor % (Accumulated)"; Decimal)
        {
            Caption = 'Scrap Factor % (Accumulated)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(55; "Sequence No. (Actual)"; Integer)
        {
            Caption = 'Sequence No. (Actual)';
            Editable = false;
        }
        field(56; "Direct Unit Cost"; Decimal)
        {
            Caption = 'Direct Unit Cost';
            DecimalPlaces = 2 : 5;
        }
        field(57; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
        }
        field(58; "Overhead Rate"; Decimal)
        {
            Caption = 'Overhead Rate';
            DecimalPlaces = 0 : 5;
        }
        field(70; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(71; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(72; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(73; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(74; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(75; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Production Order"."No." WHERE (Status = FIELD (Status));
        }
        field(76; "Unit Cost Calculation"; Option)
        {
            Caption = 'Unit Cost Calculation';
            OptionCaption = 'Time,Units';
            OptionMembers = Time,Units;
        }
        field(77; "Input Quantity"; Decimal)
        {
            Caption = 'Input Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(78; "Critical Path"; Boolean)
        {
            Caption = 'Critical Path';
            Editable = false;
        }
        field(79; "Routing Status"; Option)
        {
            Caption = 'Routing Status';
            OptionCaption = ' ,Planned,In Progress,Finished';
            OptionMembers = " ",Planned,"In Progress",Finished;
        }
        field(81; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            InitValue = Manual;
            OptionCaption = 'Manual,Forward,Backward';
            OptionMembers = Manual,Forward,Backward;
        }
        field(90; "Expected Operation Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Operation Cost Amt.';
            Editable = false;
        }
        field(91; "Expected Capacity Need"; Decimal)
        {
            Caption = 'Expected Capacity Need';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = Normal;
        }
        field(96; "Expected Capacity Ovhd. Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Capacity Ovhd. Cost';
            Editable = false;
        }
        field(98; "Starting Date-Time"; DateTime)
        {
            Caption = 'Starting Date-Time';
        }
        field(99; "Ending Date-Time"; DateTime)
        {
            Caption = 'Ending Date-Time';
        }
        field(100; "Schedule Manually"; Boolean)
        {
            Caption = 'Schedule Manually';
        }
        field(101; "Location Code"; Code[10])
        {
            AccessByPermission = TableData Location = R;
            Caption = 'Location Code';
            Editable = false;
        }
        field(7301; "Open Shop Floor Bin Code"; Code[20])
        {
            AccessByPermission = TableData "Warehouse Source Filter" = R;
            Caption = 'Open Shop Floor Bin Code';
            Editable = false;
        }
        field(7302; "To-Production Bin Code"; Code[20])
        {
            AccessByPermission = TableData "Warehouse Source Filter" = R;
            Caption = 'To-Production Bin Code';
            Editable = false;
        }
        field(7303; "From-Production Bin Code"; Code[20])
        {
            AccessByPermission = TableData "Warehouse Source Filter" = R;
            Caption = 'From-Production Bin Code';
            Editable = false;
        }
        field(88882; IncludeRecInExport; Boolean)
        {
        }
        field(5012405; "Tool attached to Operation No."; Code[10])
        {
            Caption = 'Tool attached to Operation No.';
            Description = ':PMW13.71:1:1';
        }
        field(5012406; "Main Tool"; Boolean)
        {
            Caption = 'Main Tool';
            Description = ':PMW13.71:1:1';
        }
        field(5012408; "Routing TAN"; Code[20])
        {
            Caption = 'Routing TAN';
            Description = ':PMW14.02:28:1';
        }
        field(5012409; "Insert att. to Operation No."; Code[10])
        {
            Caption = 'Insert att. to Operation No.';
            Description = ':PMW14.02.01:103:1';
            Editable = false;
        }
        field(5012410; "Main Insert"; Boolean)
        {
            Caption = 'Main Insert';
            Description = ':PMW14.02.01:103:1';
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00.01:T101';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(5012700; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = '#PXW16.00:101';
            Editable = false;
        }
        field(5012701; "Work Center Type"; Option)
        {
            Caption = 'Work Center Type';
            Description = '#PXW16.00:101';
            Editable = false;
            OptionCaption = ' ,Sequence Planning,Tool,Insert';
            OptionMembers = " ","Sequence Planning",Tool,Insert;
        }
        field(5012702; "Not delete Relation"; Boolean)
        {
            Caption = 'Not delete Relation';
            Description = '#PXW16.00:101';
            Editable = false;
        }
        field(5012710; "Fixed-Step Prod. Rate Time"; Boolean)
        {
            Caption = 'Fixed-Step Prod. Rate Time';
            Description = '#PXW16.00:103';
        }
        field(5012711; "Fixed-Step Production Rate"; Decimal)
        {
            Caption = 'Fixed-Step Production Rate';
            DecimalPlaces = 0 : 5;
            Description = '#PXW16.00:103';
            MinValue = 0;
        }
        field(5012712; "Original Lot Size"; Decimal)
        {
            Caption = 'Original Lot Size';
            DecimalPlaces = 0 : 5;
            Description = '#PXW16.00:103';
        }
        field(5012713; "Work Center Prod. Rate No."; Integer)
        {
            Caption = 'Work Center Prod. Rate Entry No.';
            Description = '#PXW16.00.03:T107';
            Editable = false;
        }
        field(5013405; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':DMW13.70.01:1:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Document BOM",Construction;
        }
        field(5013410; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013420; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013430; "Base Material"; Code[10])
        {
            CalcFormula = Lookup ("Prod. Order Line"."Base Material" WHERE (Status = FIELD (Status),
                                                                           "Prod. Order No." = FIELD ("Prod. Order No."),
                                                                           "Line No." = FIELD ("Routing Reference No.")));
            Caption = 'Base Material';
            Description = ':DMW14.03:1:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013440; "Work Package"; Code[20])
        {
            Caption = 'Work Package';
            Description = ':DMW14.03:1:01';
            Editable = false;
            TableRelation = "Work Package"."No.";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013450; "Item No. Prod. Line"; Code[20])
        {
            CalcFormula = Lookup ("Prod. Order Line"."Item No." WHERE (Status = FIELD (Status),
                                                                      "Prod. Order No." = FIELD ("Prod. Order No."),
                                                                      "Line No." = FIELD ("Routing Reference No.")));
            Caption = 'Item No. Prod. Line';
            Description = ':DMW14.03:1:01';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = Item;
        }
        field(5013460; "Unit of Measure Prod. Line"; Code[10])
        {
            CalcFormula = Lookup ("Prod. Order Line"."Unit of Measure Code" WHERE (Status = FIELD (Status),
                                                                                  "Prod. Order No." = FIELD ("Prod. Order No."),
                                                                                  "Line No." = FIELD ("Routing Reference No.")));
            Caption = 'Unit of Measure Prod. Line';
            Description = ':DMW14.03:1:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013468; "Subcontractor Currency"; Code[10])
        {
            Caption = 'Subcontractor Currency';
            Description = '#DMW18.00.01:T107';
            Editable = false;
            TableRelation = Currency;
        }
        field(5013469; "Unit Cost per (FCY)"; Decimal)
        {
            AutoFormatType = 2;
            BlankZero = true;
            Caption = 'Unit Cost per (FCY)';
            Description = '#DMW18.00.01:T107';
            MinValue = 0;
        }
        field(5013470; "Requisition Line Exists"; Boolean)
        {
            CalcFormula = Exist ("Requisition Line" WHERE ("Ref. Order No." = FIELD ("Prod. Order No."),
                                                          "Ref. Order Status" = FIELD (Status),
                                                          "Routing No." = FIELD ("Routing No."),
                                                          "Operation No." = FIELD ("Operation No."),
                                                          "Ref. Line No." = FIELD ("Routing Reference No.")));
            Caption = 'Requisition Line Exists';
            Description = '#DMW16.00.03:T007';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013480; "Purchase Line"; Code[20])
        {
            CalcFormula = Lookup ("Purchase Line"."Document No." WHERE ("Document Type" = CONST (Order),
                                                                       "Prod. Order No." = FIELD ("Prod. Order No."),
                                                                       "Routing No." = FIELD ("Routing No."),
                                                                       "Operation No." = FIELD ("Operation No."),
                                                                       "Prod. Order Line No." = FIELD ("Routing Reference No.")));
            Caption = 'Purchase Line';
            Description = '#DMW16.00.03:T007';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013485; "Purch. Rcpt. Line"; Code[20])
        {
            CalcFormula = Lookup ("Purch. Rcpt. Line"."Document No." WHERE ("Prod. Order No." = FIELD ("Prod. Order No."),
                                                                           "Routing No." = FIELD ("Routing No."),
                                                                           "Operation No." = FIELD ("Operation No."),
                                                                           "Prod. Order Line No." = FIELD ("Routing Reference No.")));
            Caption = 'Purch. Rcpt. Line';
            Description = '#DMW16.00.03:T007';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013490; "Enclosure Components"; Boolean)
        {
            CalcFormula = Exist ("Prod. Order Component" WHERE (Status = FIELD (Status),
                                                               "Prod. Order No." = FIELD ("Prod. Order No."),
                                                               "Prod. Order Line No." = FIELD ("Routing Reference No."),
                                                               "Routing Link Code" = FIELD ("Routing Link Code"),
                                                               Enclosure = CONST (true)));
            Caption = 'Enclosure Components';
            Description = '#DMW16.00.03:T007';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013500; "Subcontractor No."; Code[20])
        {
            CalcFormula = Lookup ("Work Center"."Subcontractor No." WHERE ("No." = FIELD ("No.")));
            Caption = 'Subcontractor No.';
            Description = '#DMW16.00.03:T007';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034560; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#NAV20100:A1000 20.04.07 DEWUE.SE';
            TableRelation = "Test Plan"."No." WHERE (Type = CONST (Item));
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; Status, "Prod. Order No.", "Routing Reference No.", "Routing No.", "Operation No.")
        {
            Clustered = true;
            SumIndexFields = "Expected Operation Cost Amt.", "Expected Capacity Need", "Expected Capacity Ovhd. Cost";
        }
        key(Key2; "Prod. Order No.", "Routing Reference No.", Status, "Routing No.", "Operation No.")
        {
            MaintainSIFTIndex = false;
        }
        key(Key3; Status, "Prod. Order No.", "Routing Reference No.", "Routing No.", "Sequence No. (Forward)")
        {
        }
        key(Key4; Status, "Prod. Order No.", "Routing Reference No.", "Routing No.", "Sequence No. (Backward)")
        {
        }
        key(Key5; Status, "Prod. Order No.", "Routing Reference No.", "Routing No.", "Sequence No. (Actual)")
        {
        }
        key(Key6; "Work Center No.")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key7; Type, "No.", "Starting Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key8; Status, "Work Center No.")
        {
        }
        key(Key9; "Prod. Order No.", Status, "Flushing Method")
        {
        }
        key(Key10; "Starting Date", "Starting Time")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
        key(Key11; "Ending Date", "Ending Time")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
        key(Key12; "Routing TAN")
        {
        }
        key(Key13; "Work Package")
        {
        }
    }

    fieldgroups
    {
    }
}

