table 99000829 "Planning Component"
{
    // :DMW16.00:6:01 #New Fields by CTO
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 2,3,4,5
    // #DMW16.00.02.03:A0015 25.05.11 DEMSR.SSZ
    //   #Management of Attributes
    // #DMW16.00.03:A0004 28.07.11 DEMSR.SSZ
    //   #Deleted old Calculation Code field
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 5013435 "Enclosure Drop Shipment"
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5013520 "Copy BOM to Text"
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Description 2: Text 30 -> 50
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.01:T500 09.11.14 DEMSR.SSZ
    //   #License check was missed
    // #DMW18.00.00.02:T500 04.03.15 DEMSR.SSZ
    //   #Check if Line No. is not 0 in function LookUpAttributes
    // 
    // #CAW16.00.01:T101 07.07.11 DEMSR.IST
    //   New field 5012650 "Calculation Group Code" added
    //   Transfer "Calculation Group Code" from Item or Prod. Order Component
    // 
    // #CAW17.00:103 08.08.12 DEMSR.KHS
    //   Transfer "Calculation Group Code" from Assembly Line
    // 
    // :PMW13.70:1:1
    //   # Ergänzungen für die Nutzung als Rezeptur
    //   # Erweiterung Feld 44 Calculation Formula um den Wert Rezeptur
    // 
    // :PMW13.70.00.01:1:1
    //   # Erweiterung des Codes für das Feld 5012401 "Share %" um VALIDATE("Calculation Formula")
    // 
    // :PMW14.01.00.01:23:1
    //   # Correction OptionString "Calculation Formula"
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   # Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:88:1
    //   # New field 5012400 "Lot Determining"
    //   # New function "CheckLotDetermining"
    //   # Item No. - OnValidate, call function "CheckLotDetermining"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW16.00.02:T302 25.10.10 DEMSR.IST
    //   New field 5012402 "Expiration Determining"
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New function CheckDefaultBin
    //   Call new function before WMSManagement.GetDefaultBin
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T102 29.01.14 DEMSR.KHS
    //   Code Change for NAV2013R2 UR2
    // 
    // #PMW17.10.00.02:T101 04.04.2014 DEMSR.IST
    //   Ingredient redesign
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #QMW17.10.00.01:T508 20.12.13 DEMSR.KHS
    //   Add field Test Plan No.
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code

    Caption = 'Planning Component';

    fields
    {
        field(1; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            TableRelation = "Req. Wksh. Template";
        }
        field(2; "Worksheet Batch Name"; Code[10])
        {
            Caption = 'Worksheet Batch Name';
            TableRelation = "Requisition Wksh. Name".Name WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"));
        }
        field(3; "Worksheet Line No."; Integer)
        {
            Caption = 'Worksheet Line No.';
            TableRelation = "Requisition Line"."Line No." WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"),
                                                                 "Journal Batch Name" = FIELD ("Worksheet Batch Name"));
        }
        field(5; "Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Line No.';
        }
        field(11; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item WHERE (Type = CONST (Inventory));
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(15; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(16; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(17; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(18; "Lead-Time Offset"; DateFormula)
        {
            Caption = 'Lead-Time Offset';
        }
        field(19; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(20; "Scrap %"; Decimal)
        {
            BlankNumbers = BlankNeg;
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
        }
        field(21; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(25; "Expected Quantity"; Decimal)
        {
            Caption = 'Expected Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(28; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            OptionCaption = 'Manual,Forward,Backward,Pick + Forward,Pick + Backward';
            OptionMembers = Manual,Forward,Backward,"Pick + Forward","Pick + Backward";
        }
        field(30; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(31; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(32; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(33; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(35; "Supplied-by Line No."; Integer)
        {
            Caption = 'Supplied-by Line No.';
            TableRelation = "Requisition Line"."Line No." WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"),
                                                                 "Journal Batch Name" = FIELD ("Worksheet Batch Name"),
                                                                 "Line No." = FIELD ("Supplied-by Line No."));
        }
        field(36; "Planning Level Code"; Integer)
        {
            Caption = 'Planning Level Code';
            Editable = false;
        }
        field(37; "Ref. Order Status"; Option)
        {
            Caption = 'Ref. Order Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released';
            OptionMembers = Simulated,Planned,"Firm Planned",Released;
        }
        field(38; "Ref. Order No."; Code[20])
        {
            Caption = 'Ref. Order No.';
        }
        field(39; "Ref. Order Line No."; Integer)
        {
            Caption = 'Ref. Order Line No.';
        }
        field(40; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
        }
        field(41; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
        }
        field(42; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(43; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
        }
        field(44; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = ':PMW14.01.00.01:23:1';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(45; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(46; "Ref. Order Type"; Option)
        {
            Caption = 'Ref. Order Type';
            Editable = false;
            OptionCaption = ' ,Purchase,Prod. Order,Transfer,Assembly';
            OptionMembers = " ",Purchase,"Prod. Order",Transfer,Assembly;
        }
        field(50; "Unit Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unit Cost';
        }
        field(51; "Cost Amount"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Cost Amount';
        }
        field(52; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(53; "Due Time"; Time)
        {
            Caption = 'Due Time';
        }
        field(55; "Direct Unit Cost"; Decimal)
        {
            Caption = 'Direct Unit Cost';
            DecimalPlaces = 2 : 5;
        }
        field(56; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
        }
        field(57; "Overhead Rate"; Decimal)
        {
            Caption = 'Overhead Rate';
            DecimalPlaces = 0 : 5;
        }
        field(58; "Direct Cost Amount"; Decimal)
        {
            Caption = 'Direct Cost Amount';
            DecimalPlaces = 2 : 2;
        }
        field(59; "Overhead Amount"; Decimal)
        {
            Caption = 'Overhead Amount';
            DecimalPlaces = 2 : 2;
        }
        field(60; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(62; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(63; "Reserved Qty. (Base)"; Decimal)
        {
            CalcFormula = - Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Source ID" = FIELD ("Worksheet Template Name"),
                                                                            "Source Ref. No." = FIELD ("Line No."),
                                                                            "Source Type" = CONST (99000829),
                                                                            "Source Subtype" = CONST ("0"),
                                                                            "Source Batch Name" = FIELD ("Worksheet Batch Name"),
                                                                            "Source Prod. Order Line" = FIELD ("Worksheet Line No."),
                                                                            "Reservation Status" = CONST (Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Reserved Quantity"; Decimal)
        {
            CalcFormula = - Sum ("Reservation Entry".Quantity WHERE ("Source ID" = FIELD ("Worksheet Batch Name"),
                                                                   "Source Ref. No." = FIELD ("Line No."),
                                                                   "Source Type" = CONST (99000829),
                                                                   "Source Subtype" = CONST ("0"),
                                                                   "Source Batch Name" = FIELD ("Worksheet Batch Name"),
                                                                   "Source Prod. Order Line" = FIELD ("Worksheet Line No."),
                                                                   "Reservation Status" = CONST (Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Expected Quantity (Base)"; Decimal)
        {
            Caption = 'Expected Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(74; "Original Expected Qty. (Base)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Original Expected Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(75; "Net Quantity (Base)"; Decimal)
        {
            Caption = 'Net Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(76; "Due Date-Time"; DateTime)
        {
            Caption = 'Due Date-Time';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5012400; "Lot Determining"; Boolean)
        {
            Caption = 'Lot Determining';
            Description = ':PMW14.02:88:1';
        }
        field(5012401; "Share %"; Decimal)
        {
            Caption = 'Share %';
            DecimalPlaces = 0 : 3;
            Description = ':PMW13.70:1:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012402; "Expiration Determining"; Boolean)
        {
            Caption = 'Expiration Determining';
            Description = '#PMW16.00.02:T302';
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00.01:T101';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Item));
        }
        field(5013405; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':DMW16.00:6:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Document BOM",Construction;
        }
        field(5013410; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = ':DMW16.00:6:01';
            Editable = false;
        }
        field(5013420; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = ':DMW16.00:6:01';
            Editable = false;
        }
        field(5013430; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
            Description = ':DMW16.00:6:01';
        }
        field(5013435; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(5013440; "Transfer Created"; Boolean)
        {
            Caption = 'Transfer Created';
            Description = ':DMW16.00:6:01';
            Editable = false;
        }
        field(5013450; "Transfer posted"; Boolean)
        {
            Caption = 'Transfer posted';
            Description = ':DMW16.00:6:01';
            Editable = false;
        }
        field(5013460; "Old Location Code"; Code[10])
        {
            Caption = 'Old Location Code';
            Description = ':DMW16.00:6:01';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013465; "Old Bin Code"; Code[20])
        {
            Caption = 'Old Bin Code';
            Description = ':DMW16.00:6:01';
            Editable = false;
        }
        field(5013470; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
            Description = ':DMW16.00:6:01';
        }
        field(5013480; "Supplied-by Status"; Option)
        {
            Caption = 'Supplied-by Status';
            Description = ':DMW16.00:6:01';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(5013490; "Supplied-by PO No."; Code[20])
        {
            Caption = 'Supplied-by PO No.';
            Description = ':DMW16.00:6:01';
        }
        field(5013491; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Description = '#DMW16.00.02:T102';
        }
        field(5013492; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013493; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013494; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = '#DMW16.00.02:T102';
        }
        field(5013500; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = ':DMW16.00:6:01';
            TableRelation = "Base Material";
        }
        field(5013510; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW16.00:6:01';
        }
        field(5013520; "Copy BOM to Text"; Option)
        {
            Caption = 'Copy BOM to Text';
            Description = '#DMW16.00.03:T009';
            OptionCaption = ' ,Production BOM,Doc./Constr. BOM';
            OptionMembers = " ","Production BOM","Doc./Constr. BOM";
        }
        field(5034550; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#QMW17.10.00.01:T508';
            TableRelation = "Test Plan";
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(99000875; Critical; Boolean)
        {
            Caption = 'Critical';
        }
        field(99000915; "Planning Line Origin"; Option)
        {
            Caption = 'Planning Line Origin';
            Editable = false;
            OptionCaption = ' ,Action Message,Planning,Order Planning';
            OptionMembers = " ","Action Message",Planning,"Order Planning";
        }
    }

    keys
    {
        key(Key1; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Line No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = "Cost Amount";
        }
        key(Key2; "Item No.", "Variant Code", "Location Code", "Due Date", "Planning Line Origin")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Quantity (Base)", "Cost Amount";
        }
        key(Key3; "Item No.", "Variant Code", "Location Code", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Planning Line Origin", "Due Date")
        {
            Enabled = false;
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Expected Quantity (Base)", "Cost Amount";
        }
        key(Key4; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Item No.")
        {
            MaintainSQLIndex = false;
        }
    }

    fieldgroups
    {
    }
}

