table 99000830 "Planning Routing Line"
{
    // :PMW13.71:1:1
    //   # Werkzeugverwaltung - Zusatzfelder
    // 
    // :PMW14.02.01:103:1
    //   # New field 5012409 "Insert att. to Operation No."
    //   # New field 5012410 "Main Insert"
    // 
    // #CAW16.00.01:T101 07.07.11 DEMSR.IST
    //   New field 5012650 "Calculation Group Code" added
    //   Transfer "Calculation Group Code" from Work Center/Machine Center or Prod. Order Routing Line
    // 
    // :DMW16.00:6:01 #New Fields by CTO
    // :DMW16.00.00.01:6:01 #TableRelation in field "Calculation Group" corrected
    // #DMW16.00.03:A0004 28.07.11 DEMSR.SSZ  deleted old Calculation Code field
    // #DMW17.00:A001 07.12.12 DEMSR.SSZ
    //   #Corrected table relation in field 5013440
    // #DMW17.10.00.02:T503 17.02.14 DEMSR.SSZ
    //   #Rename "Saw List" to "Work Package"
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM/VR
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)
    // 
    // #PXW18.00.01:T101 19.05.15 DEMSR.IST
    //   New field 5012701 "Sequence Planning"

    Caption = 'Planning Routing Line';

    fields
    {
        field(1; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            Editable = false;
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
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(20; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(21; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(22; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
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
            TableRelation = "Routing Link";
        }
        field(35; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(40; "Unit Cost per"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Unit Cost per';
            MinValue = 0;
        }
        field(41; Recalculate; Boolean)
        {
            Caption = 'Recalculate';
            Editable = false;
        }
        field(50; "Sequence No.(Forward)"; Integer)
        {
            Caption = 'Sequence No.(Forward)';
            Editable = false;
        }
        field(51; "Sequence No.(Backward)"; Integer)
        {
            Caption = 'Sequence No.(Backward)';
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
            DecimalPlaces = 1 : 1;
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
        field(61; "Output Quantity"; Decimal)
        {
            Caption = 'Output Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
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
            Editable = false;
        }
        field(78; "Critical Path"; Boolean)
        {
            Caption = 'Critical Path';
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
        field(5012405; "Tool attached to Operation No."; Code[10])
        {
            Caption = 'Tool attached to Operation No.';
            Description = ':PMW13.71:1:1';
            Editable = false;
        }
        field(5012406; "Main Tool"; Boolean)
        {
            Caption = 'Main Tool';
            Description = ':PMW13.71:1:1';
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
        field(5012701; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = '#PXW18.00.01:T101';
            Editable = false;
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
        field(5013440; "Work Package"; Code[20])
        {
            Caption = 'Work Package';
            Description = ':DMW16.00:6:01';
            Editable = false;
            TableRelation = "Work Package"."No.";
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
        field(99000909; "Expected Operation Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Operation Cost Amt.';
            Editable = false;
        }
        field(99000910; "Expected Capacity Ovhd. Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Expected Capacity Ovhd. Cost';
            Editable = false;
        }
        field(99000911; "Expected Capacity Need"; Decimal)
        {
            Caption = 'Expected Capacity Need';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Operation No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SumIndexFields = "Expected Operation Cost Amt.";
        }
        key(Key2; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Sequence No.(Forward)")
        {
            MaintainSQLIndex = false;
        }
        key(Key3; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Sequence No.(Backward)")
        {
            MaintainSQLIndex = false;
        }
        key(Key4; "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Sequence No. (Actual)")
        {
            MaintainSQLIndex = false;
        }
        key(Key5; "Worksheet Template Name", "Worksheet Batch Name", Type, "No.", "Starting Date")
        {
            MaintainSQLIndex = false;
        }
        key(Key6; "Work Center No.")
        {
        }
        key(Key7; Type, "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

