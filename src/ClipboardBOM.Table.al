table 5013685 "Clipboard BOM"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PRODVIEW:DMW15.01:14:01 #New fields for Production View
    // :DMW15.01:22:01 #Added a new option in field Type
    // :DMW15.01:21:01 #Added new field 640 "Separate Delivery"
    // :DMW15.01.00.01:6:01 #Some fields were missed
    // :DMW15.02.00.01:6:01 #resized field 410 to 20; corrected DecimalPlaces in some fields
    // :DMW16.00.00.01:24:01 #"Formula Quantity per" was missed
    // :DMW16.00.01:78:01 #new field 627 "Line Discount %"
    // #DMW16.00.03:T003 01.08.11 DEMSR.SSZ
    //   #New field "Calculation Group Code"
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 85115 "Enclosure Drop Shipment"
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5060600 "Copy BOM to Text"
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Description 2: Text 30 -> 50
    //   #"Released of" and "Last Change by": Code 20 -> 50
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #New Option in field "Part Type": Purchase
    // #DMW18.00.01:T103 19.05.15 DEMSR.SSZ
    //   #New fields for parallel routings: 1100, 1110, 1120, 1130
    // #DMW18.00.01:T104 28.05.15 DEMSR.SSZ
    //   #Delete posting fields:
    //   #"Posting Quantity (Base)", "Posting Quantity", "Posted Quantity (Base)", "Posted Quantity", "Outstanding Qty. (Base)", "Outstanding Qty."
    // #DMW18.00.01:T105 01.06.15 DEMSR.SSZ
    //   #New field: 990 "Transfer to Sales Document"
    // 
    // #TMW17.10.01:T100 06.08.14 DEMSR.SSZ
    //   #new field 5060610

    Caption = 'Clipboard BOM';

    fields
    {
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(50; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
            Editable = false;
        }
        field(60; "Level Line No."; Integer)
        {
            Caption = 'Level Line No.';
            Editable = false;
        }
        field(70; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(80; "Entry No. Representation"; Integer)
        {
            Caption = 'Entry No. Representation';
            Editable = false;
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center,Master BOM';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center","Master BOM";
        }
        field(105; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(120; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(130; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
        }
        field(140; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
        }
        field(150; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
        }
        field(180; Variant; Code[20])
        {
            Caption = 'Variant';
        }
        field(181; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
        }
        field(182; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
        }
        field(183; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
        }
        field(184; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
        }
        field(185; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = ':DMW15.01.00.01:6:01';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight;
        }
        field(186; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
        }
        field(187; "Formula Quantity per"; Text[250])
        {
            Caption = 'Formula Quantity per';
            Description = ':DMW16.00.00.01:24:01';
        }
        field(188; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
            Editable = false;
        }
        field(190; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(200; "Exp. Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Exp. Quantity Unit of Measure';
        }
        field(220; "Exp. Quantity (Base)"; Decimal)
        {
            Caption = 'Exp. Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(225; "Quantity (Base, Father)"; Decimal)
        {
            Caption = 'Quantity (Base, Father)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(230; "Part Type"; Option)
        {
            Caption = 'Part Type';
            OptionCaption = 'Standard,Production,Purchase';
            OptionMembers = Standard,Production,Purchase;
        }
        field(240; "Spare Part"; Boolean)
        {
            Caption = 'Spare Part';
        }
        field(250; "Wear Part"; Boolean)
        {
            Caption = 'Wear Part';
        }
        field(260; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
        }
        field(270; "Formula Quantity"; Text[250])
        {
            Caption = 'Formula Quantity';
        }
        field(290; "Formula Setup Time"; Text[250])
        {
            Caption = 'Formula Setup Time';
        }
        field(291; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
        }
        field(292; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
        }
        field(293; "Formula Run Time"; Text[250])
        {
            Caption = 'Formula Run Time';
        }
        field(294; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
        }
        field(295; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
        }
        field(296; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
        }
        field(300; "Information Line"; Boolean)
        {
            Caption = 'Information Line';
            Editable = false;
        }
        field(320; "Assembly Date"; Date)
        {
            Caption = 'Assembly Date';
        }
        field(330; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
        }
        field(340; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
        }
        field(390; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }
        field(400; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(410; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
        }
        field(500; Source; Code[20])
        {
            Caption = 'Source';
        }
        field(510; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Open,Released,Closed;
        }
        field(520; "Released of"; Code[50])
        {
            Caption = 'Released of';
            Editable = false;
        }
        field(530; "Released to"; Date)
        {
            Caption = 'Released to';
            Editable = false;
        }
        field(540; "New calcuate"; Boolean)
        {
            Caption = 'New calcuate';
        }
        field(600; "Unit Cost (CC)"; Decimal)
        {
            Caption = 'Unit Cost (CC)';
            DecimalPlaces = 2 : 5;
        }
        field(610; "Unit Ammount (CC)"; Decimal)
        {
            Caption = 'Unit Ammount (CC)';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(620; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 2 : 5;
        }
        field(627; "Line Discount %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:78:01';
            MaxValue = 100;
            MinValue = 0;
        }
        field(630; "Order Tracking Relevant"; Boolean)
        {
            Caption = 'Order Tracking Relevant';
        }
        field(640; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(800; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
            MinValue = 0;
        }
        field(810; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
            MinValue = 0;
        }
        field(820; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = ':DMW15.01.00.01:6:01';
            TableRelation = "Capacity Unit of Measure";
        }
        field(830; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = ':DMW15.01.00.01:6:01';
            TableRelation = "Capacity Unit of Measure";
        }
        field(840; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
            Description = ':DMW15.01.00.01:6:01';
        }
        field(850; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
            Description = ':DMW15.01.00.01:6:01';
        }
        field(860; "Production Lead Time"; DateFormula)
        {
            Caption = 'Production Lead Time';
            Description = ':DMW15.01.00.01:6:01';
        }
        field(870; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            Description = ':DMW15.01.00.01:6:01';
            MaxValue = 100;
            MinValue = 0;
        }
        field(880; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            Description = ':DMW15.01.00.01:6:01';
            TableRelation = "Standard Task";
        }
        field(890; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = ':DMW15.01.00.01:6:01';
            TableRelation = IF (Type = CONST (Item)) "Base Material";
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(920; "Belongs to Prod. View Link"; Code[10])
        {
            Caption = 'Belongs to Prod. View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(930; "Belongs to Entry No. saved"; Integer)
        {
            Caption = 'Belongs to Entry No. saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(940; "Level Line No. saved"; Integer)
        {
            Caption = 'Level Line No. saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(950; "Level saved"; Integer)
        {
            Caption = 'Level saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(960; "Entry No. Representation saved"; Integer)
        {
            Caption = 'Entry No. Representation saved';
            Description = 'PRODVIEW:DMW15.01:14:01';
            Editable = false;
        }
        field(970; "Production View"; Boolean)
        {
            Caption = 'Production View';
            Description = 'PRODVIEW:DMW15.01:14:01';
        }
        field(990; "Transfer to Sales Document"; Boolean)
        {
            Caption = 'Transfer to Sales Document';
            Description = '#DMW18.00.01:T105';
        }
        field(1100; "Parallel Operation Code"; Code[10])
        {
            Caption = 'Parallel Operation Code';
            Description = '#DMW18.00.01:T103';
        }
        field(1110; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            Description = '#DMW18.00.01:T103';
        }
        field(1120; "Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
            Description = '#DMW18.00.01:T103';
        }
        field(1130; "Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
            Description = '#DMW18.00.01:T103';
        }
        field(5703; "Originally Ordered No."; Code[20])
        {
            Caption = 'Originally Ordered No.';
        }
        field(5704; "Originally Ordered Var. Code"; Code[10])
        {
            Caption = 'Originally Ordered Var. Code';
        }
        field(85000; Drawing; Code[250])
        {
            Caption = 'Drawing';
        }
        field(85050; "Unit Ammount"; Decimal)
        {
            Caption = 'Unit Ammount';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(85100; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
        }
        field(85110; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
        }
        field(85115; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(85160; "Formula Valid"; Text[250])
        {
            Caption = 'Formula Valid';
        }
        field(85212; "Belongs to Calc.option blank"; Boolean)
        {
            Caption = 'Belongs to Calc.option blank';
            Editable = false;
        }
        field(85213; "Bel. to Calc.opt. blank SalesH"; Boolean)
        {
            Caption = 'Belongs to Calc.option blank SalesHeader';
        }
        field(85250; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(85280; Reserve; Option)
        {
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(85300; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(85600; "Entry No. PDB"; Integer)
        {
            Caption = 'Entry No. PDB';
        }
        field(85610; "Last date modified"; Date)
        {
            Caption = 'Last date modified';
        }
        field(85620; "Last change by"; Code[50])
        {
            Caption = 'Change by';
        }
        field(85630; "Delete Status"; Boolean)
        {
            Caption = 'Delete Status';
        }
        field(2000000; "Source Table"; Integer)
        {
            Caption = 'Source Table';
        }
        field(2000010; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
        field(2000020; "Source Code 2"; Code[20])
        {
            Caption = 'Source Code 2';
        }
        field(2000030; "Source Entry No."; Integer)
        {
            Caption = 'Source Entry No.';
        }
        field(2000100; "New Entry No."; Integer)
        {
            Caption = 'New Entry No.';
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#DMW16.00.03:T003';
        }
        field(5060600; "Copy BOM to Text"; Option)
        {
            Caption = 'Copy BOM to Text';
            Description = '#DMW16.00.03:T009';
            OptionCaption = ' ,Production BOM,Doc./Constr. BOM';
            OptionMembers = " ","Production BOM","Doc./Constr. BOM";
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
        }
    }

    keys
    {
        key(Key1; "Source Table", "Source Code", "Source Code 2", "Source Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No. Representation")
        {
        }
    }

    fieldgroups
    {
    }
}

