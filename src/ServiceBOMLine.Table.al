table 5013795 "Service BOM Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:6:01 #cut and paste the function GetColor from a form into this table
    // :DMW15.01:6:02 #Resources got a wrong Unit Cost, when "Qty. per Unit of Measure" <> 1
    // :DMW15.01:16:01 #deleted unused fields
    // :DMW15.01:22:01 #Added a new option in field Type, added a new link in field "No." etc.
    // :DMW15.01:21:01 #Added new field 640 "Separate Delivery"
    // :DMW15.01:26:01 #New PrimaryKey in table Attribute
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // :DMW15.01.00.01:6:01 #Deleted unused and double Variables, PrimaryKey Field -> NotBlank, deleted unused TableRelations
    // :DMW16.00:99:01 #Inserted TableRelation in field "Has displaced"
    // :DMW16.00.00.01:6:01 #Changed field name and caption in field "Has displaced" --> Replaced etc.
    // :DMW16.00.00.02:24:01 #Using Work- and Machine-Centers the  "Direct Unit Cost" was copied, but the Unit Cost must be used
    // :DMW16.00.01:6:01 #Update Unit Price if exp. quantity has changed
    // PRODVIEW:DMW16.00.01:40:01 #Updated whole Codeunit with Construction Line Management; changed field attributes in 410
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // :DMW16.00.02:6:02 #If a Service BOM Line was deleted, the replaced lines weren't deleted
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted fields: "Calculation Group", "Belongs to Calc.option blank"
    //   #deleted Key "Document No.", "Belongs to Calc.option blank"
    // #DMW16.00.03:A0004 26.07.11 DEMSR.SSZ
    //   #save also "Location Code" when inserting "No."
    // #DMW16.00.03:T003 01.08.11 DEMSR.SSZ
    //   #New field 5012650 "Calculation Group Code"
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 85115 "Enclosure Drop Shipment"
    // #DMW16.00.03:A002 30.08.11 DEMSR.SSZ
    //   #"Exp. Quantity" must not be changed manually when "Quantity per" and "Calculation Formula"
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5060600 "Copy BOM to Text"
    // #DMW16.00.03.02:A021 06.03.12 DEMSR.SSZ
    //   #Function TestStatusOpen is no longer local because its used in another codeunit
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, File Dialog, User ID
    //   #Description 2: Text 30 -> 50
    //   #Function GetResource -> Local = Yes
    // #DMW17.10:T103 29.10.13 DEMSR.SSZ
    //   #Only items with Type=Inventory are allowed. Filter in TableRelation
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T506 07.10.14 DEMSR.SSZ
    //   #Grammatical Issues/Misspelling
    // #DMW18.00.00.02:T500 05.03.15 DEMSR.SSZ
    //   #Deleted function LookUpAttributes
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #New Option in field "Part Type": Purchase
    // #DMW18.00.01:T102 15.05.15 DEMSR.SSZ
    //   #Renumberred field Active from ID 4 to 7
    // #DMW18.00.01:T103 19.05.15 DEMSR.SSZ
    //   #New fields for parallel routings: 1100, 1110, 1120, 1130
    // #DMW18.00.01:T105 01.06.15 DEMSR.SSZ
    //   #New field: 990 "Transfer to Sales Document"
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // #TMW18.00.00.03:T500 04.03.15 DEMSR.SSZ
    //   #OnDeleteTrigger had to be cleaned-up
    // 
    // #AMPW17.00:T104 17.07.13 DEMSR.SSZ
    //   #TableRelations of Unit of Measures: Capacities: Filter "Rental Rate Code"=No

    Caption = 'Service BOM Line';
    DataCaptionFields = "Document No.", "Entry No.";
    PasteIsValid = false;

    fields
    {
        field(7; Active; Boolean)
        {
            Caption = 'Active';
            Editable = false;
            InitValue = true;
        }
        field(20; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Service BOM Header"."No.";
        }
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
            TableRelation = IF (Type = CONST("Account(G/L)")) "G/L Account"
            ELSE
            IF (Type = CONST(Item)) Item WHERE(Type = CONST(Inventory))
            ELSE
            IF (Type = CONST(Resource)) Resource
            ELSE
            IF (Type = CONST("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST("Machine Center")) "Machine Center"
            ELSE
            IF (Type = CONST("Master BOM")) "Master BOM Header";
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
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(181; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:40:01';
        }
        field(182; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:40:01';
        }
        field(183; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:40:01';
        }
        field(184; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:40:01';
        }
        field(185; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = ':DMW16.00.01:40:01';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight;
        }
        field(186; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:40:01';
        }
        field(188; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':DMW16.00.01:40:01';
            Editable = false;
        }
        field(190; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 2 : 5;
        }
        field(200; "Exp. Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Exp. Quantity Unit of Measure';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Resource)) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            IF (Type = CONST("Work Center")) "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(false))
            ELSE
            IF (Type = CONST("Machine Center")) "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(false));
        }
        field(220; "Exp. Quantity (Base)"; Decimal)
        {
            Caption = 'Exp. Quantity (Base)';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(225; "Quantity (Base, Parent)"; Decimal)
        {
            Caption = 'Quantity (Base, Parent)';
            DecimalPlaces = 2 : 5;
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
        field(291; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
        }
        field(292; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(294; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
        }
        field(295; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
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
        field(310; "Sub BOM"; Boolean)
        {
            CalcFormula = Exist("Service BOM Line" WHERE("Document No." = FIELD("Document No."),
                                                          "Belongs to Entry No." = FIELD("Entry No.")));
            Caption = 'Sub BOM';
            Editable = false;
            FieldClass = FlowField;
        }
        field(320; "Assembly Date"; Date)
        {
            Caption = 'Assembly Date';
        }
        field(330; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(340; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(390; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
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
            TableRelation = "BOM Type".Type;
        }
        field(510; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Offen,Freigegeben,Abgeschlossen;
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
        field(600; "Unit Cost (CC)"; Decimal)
        {
            Caption = 'Unit Cost (CC)';
        }
        field(610; "Unit Amount (CC)"; Decimal)
        {
            Caption = 'Unit Amount (CC)';
            Editable = false;
        }
        field(620; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(640; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(740; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(743; "Due Time"; Time)
        {
            Caption = 'Due Time';
        }
        field(770; "Schedule Manually"; Boolean)
        {
            Caption = 'Schedule Manually';
        }
        field(780; "Expected Capacity Need"; Decimal)
        {
            Caption = 'Expected Capacity Need';
        }
        field(800; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(810; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(820; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(830; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure" WHERE("Rental Rate Code" = CONST(false));
        }
        field(840; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(850; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(860; "Production Lead Time"; DateFormula)
        {
            Caption = 'Production Lead Time';
        }
        field(870; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(880; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(890; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            TableRelation = IF (Type = CONST(Item)) "Base Material";
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            TableRelation = "Production View Link";
        }
        field(920; "Belongs to Prod. View Link"; Code[10])
        {
            Caption = 'Belongs to Prod. View Link';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            TableRelation = "Production View Link";
        }
        field(930; "Belongs to Entry No. saved"; Integer)
        {
            Caption = 'Belongs to Entry No. saved';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            Editable = false;
        }
        field(940; "Level Line No. saved"; Integer)
        {
            Caption = 'Level Line No. saved';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            Editable = false;
        }
        field(950; "Level saved"; Integer)
        {
            Caption = 'Level saved';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            Editable = false;
        }
        field(960; "Entry No. Representation saved"; Integer)
        {
            Caption = 'Entry No. Representation saved';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
            Editable = false;
        }
        field(970; "Production View"; Boolean)
        {
            Caption = 'Production View';
            Description = 'PRODVIEW:DMW16.00.01:40:01';
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
            TableRelation = IF (Type = CONST(Item)) Item;
        }
        field(5704; "Originally Ordered Var. Code"; Code[10])
        {
            Caption = 'Originally Ordered Var. Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("Originally Ordered No."));
        }
        field(5900; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(5910; "From Line No."; Integer)
        {
            Caption = 'From Line No.';
        }
        field(5920; "Date Installed"; Date)
        {
            Caption = 'Date Installed';
        }
        field(5930; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(5940; Replaced; Boolean)
        {
            CalcFormula = Exist("Service BOM Line" WHERE("Document No." = FIELD("Document No."),
                                                          "From Line No." = FIELD("Entry No."),
                                                          Active = CONST(false)));
            Caption = 'Replaced';
            Editable = false;
            FieldClass = FlowField;
        }
        field(85000; Drawing; Code[250])
        {
            Caption = 'Drawing';
        }
        field(85050; "Unit Amount"; Decimal)
        {
            Caption = 'Unit Amount';
            Editable = false;
        }
        field(85100; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
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
        field(85250; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
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
        field(85610; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(85620; "Changed by"; Code[50])
        {
            Caption = 'Changed by';
        }
        field(85630; Deletestatus; Boolean)
        {
            Caption = 'Deletestatus';
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#DMW16.00.03:T003';
            TableRelation = IF (Type = CONST(Item)) "Calculation Group".Code WHERE(Type = CONST(Item))
            ELSE
            IF (Type = FILTER("Work Center" | "Machine Center" | Resource)) "Calculation Group".Code WHERE(Type = CONST(Capacity));
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
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Document No.", Active, "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Belongs to Entry No.", "Level Line No.")
        {
        }
        key(Key3; "Document No.", "Entry No. Representation")
        {
        }
        key(Key4; "Document No.", Level, "Level Line No.")
        {
        }
        key(Key5; Type, "No.", "Shipment Date", "Information Line", Status)
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
            SumIndexFields = "Exp. Quantity (Base)";
        }

        key(Key7; "Document No.", "Belongs to Entry No.", "Entry No. Representation")
        {
        }

        key(Key10; "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

