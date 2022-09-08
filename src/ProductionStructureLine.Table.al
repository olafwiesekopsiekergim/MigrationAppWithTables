table 5012406 "Production Structure Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW13.71:1:1
    //   # Werkzeugverwaltung, u.a. Tablerelation auch für Art = Werkzeug
    // 
    // :PMW14.00:2292:1
    //   # Feld "No.", Relation für Werkzeug geändert
    //   # Feld Type, OptionString um "Standard Task Tool" erweitert.
    //   # Feld Type, OptionString für Personal und Prüfmaßnahme geändert
    //   # Feld No., Relation auf Arbeitsplatzgruppe für Werkzeug geändert.
    // 
    // :PMW14.01:2481:1
    //   # New field 220 "Substitution Available"
    // 
    // :PMW14.01:14:1
    //   # New field 8000 "Required Quantity"
    //   # New field 8001 "Allocation Quantity"
    //   # New field 8000 "Alloc. Unit of Measure Code"
    //   # New function "CalculateQuantityPer"
    // 
    // :PMW14.01:2466:1
    //   # New function "CalculateRunTime"
    //   # Bearbeitungszeit für Einheitencode berechnen
    // 
    // :PMW14.01:13:1
    //   # Keine Eingabe der Komponentenmenge bei Rezepturanteilen
    // 
    // :PMW14.01:2465:1
    //   # New field 20 "Production Structur Type"
    //   # Übernahme der Produktionsstrukturart aus Produktionsstruktur Kopf
    //   # New function "TestItemNo"
    //   # Bedingte Prüfung der Artikelnr. bei Entwicklungsstruktur
    // 
    // :PMW14.02:50:1
    //   # New Prod. Structure Line Type "Main Recipe"
    // 
    // :PMW14.02:88:1
    //   # New field 260 "Lot Determining"
    //   # New field 1027 "BOM_Lot Determining"
    //   # New function "CheckLotDetermining"
    //   # No. - OnValidate, call function "CheckLotDetermining"
    //   # Function TransferData, transfer "Lot Determining"
    // 
    // :PMW14.02.01:103:1
    //   # New Type Insert, new "Work Center Type" Insert
    //   # New TableRelation field "No." for type Insert
    //   # Handle new type Insert
    //   # New field 410 "Insert att. to Tool Line No."
    //   # General Redesign
    // 
    // :PMW14.02.01:112:1
    //   # Calculate "Quantity per" on input "Required Quantity"
    // 
    // :PMW15.00:225:1
    //   # New field 221 Density
    //   # New field 222 "Volume Share %"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // :PMW15.00.01:25:1
    //   # Temporary insert in OnDelete due to SQL delete handling
    // 
    // :PMW16.00:125:1
    //   # Check time unit of measures
    // 
    // #PMW16.00.00.01:T503 21.04.09 DEMSR.IST
    //   Missing "Production Structur Type" "Bottling Structure" added
    // 
    // #PMW16.00.00.02:T507 02.06.09 DEMSR.IST
    //   Missing field "Scrap %" added
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02:T502 29.09.10 DEMSR.IST
    //   Check if is servicetier on delete and insert correct record
    // 
    // #PMW16.00.02:T230 01.10.10 DEMSR.BKR
    //   Management of Active Ingredients
    //   Copy Ingredients To Prod. Structure Line
    //   Add Field "Ingr. Calculation Type"
    // 
    // #PMW16.00.02:T302 25.10.10 DEMSR.IST
    //   New field 265 "Expiration Determining"
    //   New field 1028 "BOM_Expiration Determining"
    //   Function TransferData, transfer "Expiration Determining"
    // 
    // #PMW16.00.02:T240 18.11.10 DEMSR.IST
    //   Production Structure integration
    // 
    // #PMW16.00.03:T102 18.07.11 DESMR.IST
    //   New field 270 "Comp. Location Code"
    //   New field 271 "Comp. Bin Code"
    //   New field 1029 "BOM_Comp. Location Code"
    //   New field 1030 "BOM_Comp. Bin Code"
    //   Function TransferData, transfer new fields
    // 
    // #PMW16.00.03:T109 04.08.11 DEMSR.IST
    //   New field 106 "Calculation Group Code" added
    //   New field 1031 "BOM_Calculation Group Code" added
    //   New field 3034 "Rtng_Calculation Group Code" added
    //   Transfer "Calculation Group Code"
    // 
    // #PMW16.00.03:T250 08.08.11 DEMSR.KHS
    //   QM: Add Test Plan No. to Production Structure
    //   New field 5034550 "Test Plan No." added
    //   New field 5034551 "Rtng_Test Plan No." added
    //   Transfer "Test Plan No."
    // 
    // #PMW16.00.03:T502 19.09.11 DEMSR.BKR
    //   Create Prod. Structures with ingredients without items
    //   created Function ShowIngredients
    // 
    // #PMW16.00.03.01:T501 11.11.11 DEMSR.IST
    //   Field name and relation of field 502 "BOM Line No." changed
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    //   ISSERVICETIER condition deleted
    //   Field 230 renamed to Lead-Time Offset
    //   Field 1011 renamed to BOM_Lead-Time Offset
    // 
    // #PMW17.00:T512 14.01.13 DEMSR.IST
    //   Update of "Last Date Modified" in Header daktivated
    // 
    // #PMW17.00.00.03:T504 26.08.13 DEMSR.IST
    //   Expand field 1005 "BOM_Description" from 30 to 50 characters
    // 
    // #PMW17.10:T102 29.10.13 DEMSR.IST
    //   Changed relation for Item No. field, only items with Type=Inventory
    // 
    // #PMW17.10:T103 29.10.13 DEMSR.IST
    //   New field 5034552 "BOM_Test Plan No."
    // 
    // #PMW17.10.00.02:T101 04.04.14 DEMSR.IST
    //   Redesign Ingredients
    // 
    // #PMW17.10.00.02:T505 09.05.14 DEMSR.IST
    //   Usage of Variant Code for Type Share of Recipe corrected, TableRelation corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T504 01.08.14 DEMSR.IST
    //   Delete Ingredients for item and share of recipe only
    // 
    // #PMW17.10.01:T101 05.08.14 DEMSR.KHS
    //   Add field "Parallel Operation Code"
    // 
    // #PXW18.00.01:T101 19.05.15 DEMSR.IST
    //   New field 345 "Sequence Planning"
    //   New field 3035 "Rtng_Sequence Planning"
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code

    Caption = 'Production Structure Line';
    PasteIsValid = false;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Production Structure Header"."No.";
        }
        field(9; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(20; "Production Structur Type"; Option)
        {
            Caption = 'Production Structur Type';
            Description = '#PMW16.00.00.01:T503';
            InitValue = "Manufacturing Structure";
            OptionCaption = ' ,Development Structure,Laboratory Structure,Manufacturing Structure,Bottling Structure';
            OptionMembers = " ","Development Structur","Laboratory Structur","Manufacturing Structure","Bottling Structure";
        }
        field(80; "Expected Line No."; Integer)
        {
            Caption = 'Expected Line No.';
            Editable = false;
        }
        field(90; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Work Center,Machine Center,Item,Share of Recipe,Production BOM,Tool,Standard Task Personnel,Standard Task Quality Measure,Standard Task Tool,Main Recipe,Insert';
            OptionMembers = " ","Work Center","Machine Center",Item,"Share of Recipe","Production BOM",Tool,"Standard Task Personnel","Standard Task Quality Measure","Standard Task Tool","Main Recipe",Insert;
        }
        field(101; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST ("Work Center")) "Work Center" WHERE ("Work Center Type" = FILTER (.. "Sequence Planning"))
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center"
            ELSE
            IF (Type = CONST (Item)) Item WHERE (Type = CONST (Inventory))
            ELSE
            IF (Type = CONST ("Share of Recipe")) Item WHERE (Type = CONST (Inventory))
            ELSE
            IF (Type = CONST ("Production BOM")) "Production BOM Header" WHERE ("Production BOM Type" = CONST (" "))
            ELSE
            IF (Type = CONST ("Standard Task Quality Measure")) "Quality Measure"
            ELSE
            IF (Type = CONST (Tool)) "Work Center" WHERE ("Work Center Type" = CONST (Tool))
            ELSE
            IF (Type = CONST ("Main Recipe")) "Production BOM Header" WHERE ("Production BOM Type" = CONST (Recipe))
            ELSE
            IF (Type = CONST (Insert)) "Work Center" WHERE ("Work Center Type" = CONST (Insert));
        }
        field(105; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(106; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#PMW16.00.03:T109';
            TableRelation = IF (Type = FILTER (Item | "Share of Recipe")) "Calculation Group".Code WHERE (Type = CONST (Item))
            ELSE
            IF (Type = FILTER ("Work Center" | "Machine Center" | Tool | Insert)) "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(200; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item),
                                "No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Item),
                                         "No." = FILTER ('')) "Unit of Measure"
            ELSE
            IF (Type = CONST ("Production BOM")) "Unit of Measure"
            ELSE
            IF (Type = CONST ("Share of Recipe"),
                                                  "No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST ("Share of Recipe"),
                                                           "No." = FILTER ('')) "Unit of Measure";
        }
        field(201; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = FILTER (Item | "Share of Recipe")) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(210; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(211; "Share %"; Decimal)
        {
            Caption = 'Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
            MinValue = 0;
        }
        field(212; Shares; Decimal)
        {
            Caption = 'Shares';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(213; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(215; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
        }
        field(216; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
        }
        field(217; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(218; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
        }
        field(219; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(220; "Substitution Available"; Boolean)
        {
            CalcFormula = Exist ("Item Substitution" WHERE (Type = CONST (Item),
                                                           "Substitute Type" = CONST (Item),
                                                           "No." = FIELD ("No."),
                                                           "Variant Code" = FIELD ("Variant Code")));
            Caption = 'Substitution Available';
            Description = ':PMW14.01:2481:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(221; Density; Decimal)
        {
            Caption = 'Density';
            Description = ':PMW15.00:225:1';
        }
        field(222; "Volume Share %"; Decimal)
        {
            Caption = 'Volume Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
        }
        field(223; "Ingr. Calculation Type"; Option)
        {
            Caption = 'Ingredients Calculation Type';
            OptionCaption = ' ,Fix,Ingredient,Variable';
            OptionMembers = " ",Fix,Ingredient,Variable;
        }
        field(230; "Lead-Time Offset"; DateFormula)
        {
            Caption = 'Lead-Time Offset';
        }
        field(235; "Scrap %"; Decimal)
        {
            BlankNumbers = BlankNeg;
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            Description = '#PMW16.00.00.02:T507';
            MaxValue = 100;
        }
        field(240; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(241; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(250; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(251; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(252; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(260; "Lot Determining"; Boolean)
        {
            Caption = 'Lot Determining';
            Description = ':PMW14.02:88:1';
        }
        field(265; "Expiration Determining"; Boolean)
        {
            Caption = 'Expiration Determining';
            Description = '#PMW16.00.02:T302';
        }
        field(270; "Comp. Location Code"; Code[10])
        {
            Caption = 'Comp. Location Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Location;
        }
        field(271; "Comp. Bin Code"; Code[20])
        {
            Caption = 'Comp. Bin Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Comp. Location Code"));
        }
        field(300; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(301; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(302; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(303; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(304; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(305; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(306; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(307; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(310; "Fixed Scrap Quantity"; Decimal)
        {
            Caption = 'Fixed Scrap Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(311; "Scrap Factor %"; Decimal)
        {
            Caption = 'Scrap Factor %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(320; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(321; "Minimum Process Time"; Decimal)
        {
            Caption = 'Minimum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(322; "Maximum Process Time"; Decimal)
        {
            Caption = 'Maximum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(323; "Concurrent Capacities"; Decimal)
        {
            Caption = 'Concurrent Capacities';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
        }
        field(324; "Send-Ahead Quantity"; Decimal)
        {
            Caption = 'Send-Ahead Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(330; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(340; "Unit Cost per"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost per';
            MinValue = 0;
        }
        field(345; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = '#PXW18.00.01:T101';
        }
        field(350; "Main Tool"; Boolean)
        {
            Caption = 'Main Tool';
            Description = ':PMW13.71:1:1';
        }
        field(351; "Work Center Type"; Option)
        {
            Caption = 'Work Center Type';
            Description = ':PMW13.71:1:1';
            Editable = false;
            OptionCaption = ' ,Sequence Planning,Tool,Insert';
            OptionMembers = " ","Sequence Planning",Tool,Insert;
        }
        field(352; "Tool attached to Operation No."; Code[10])
        {
            Caption = 'Tool attached to Operation No.';
            Description = ':PMW13.71:1:1';
            Editable = false;
        }
        field(355; "Main Insert"; Boolean)
        {
            Caption = 'Main Insert';
            Description = ':PMW14.02.01:103:1';
        }
        field(356; "Insert att. to Operation No."; Code[10])
        {
            Caption = 'Insert att. to Operation No.';
            Description = ':PMW14.02.01:103:1';
            Editable = false;
        }
        field(400; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
            TableRelation = "Production Structure Line"."Line No." WHERE ("Document No." = FIELD ("Document No."));
        }
        field(410; "Insert att. to Tool Line No."; Integer)
        {
            Caption = 'Insert att. to Tool Line No.';
            Description = ':PMW14.02.01:103:1';
        }
        field(500; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(501; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(502; "Production BOM Line No."; Integer)
        {
            Caption = 'Production BOM Line No.';
            Description = '#PMW16.00.03.01:T501';
            TableRelation = "Production BOM Line"."Line No." WHERE ("Production BOM No." = FIELD ("Production BOM No."),
                                                                    "Version Code" = FIELD ("Production BOM Version Code"));
        }
        field(550; "Line No.Subtable"; Integer)
        {
            Caption = 'Line No.Subtable';
        }
        field(600; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header"."No." WHERE (Status = CONST (Certified));
        }
        field(601; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(602; "Routing Operation No."; Code[10])
        {
            Caption = 'Routing Operation No.';
        }
        field(700; "Min. Value"; Decimal)
        {
            Caption = 'Min. Value';
            DecimalPlaces = 0 : 5;
        }
        field(701; "Max. Value"; Decimal)
        {
            Caption = 'Max. Value';
            DecimalPlaces = 0 : 5;
        }
        field(702; "Mean Tolerance"; Decimal)
        {
            Caption = 'Mean Tolerance';
            DecimalPlaces = 0 : 5;
        }
        field(1000; "BOM_Production BOM No."; Code[20])
        {
            Caption = 'BOM_Production BOM No.';
            TableRelation = "Production BOM Header";
        }
        field(1001; "BOM_Line No."; Integer)
        {
            Caption = 'BOM_Line No.';
        }
        field(1002; "BOM_Version Code"; Code[20])
        {
            Caption = 'BOM_Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("BOM_Production BOM No."));
        }
        field(1003; BOM_Type; Option)
        {
            Caption = 'BOM_Type';
            OptionCaption = ' ,Item,Production BOM';
            OptionMembers = " ",Item,"Production BOM";
        }
        field(1004; "BOM_No."; Code[20])
        {
            Caption = 'BOM_No.';
            TableRelation = IF (BOM_Type = CONST (Item)) Item
            ELSE
            IF (BOM_Type = CONST ("Production BOM")) "Production BOM Header";
        }
        field(1005; BOM_Description; Text[50])
        {
            Caption = 'BOM_Description';
            Description = '#PMW17.00.00.03:T504';
        }
        field(1006; "BOM_Unit of Measure Code"; Code[10])
        {
            Caption = 'BOM_Unit of Measure Code';
            TableRelation = IF (BOM_Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("BOM_No."))
            ELSE
            IF (BOM_Type = CONST ("Production BOM")) "Unit of Measure";
        }
        field(1007; BOM_Quantity; Decimal)
        {
            Caption = 'BOM_Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1008; BOM_Position; Code[10])
        {
            Caption = 'BOM_Position';
        }
        field(1009; "BOM_Position 2"; Code[10])
        {
            Caption = 'BOM_Position 2';
        }
        field(1010; "BOM_Position 3"; Code[10])
        {
            Caption = 'BOM_Position 3';
        }
        field(1011; "BOM_Lead-Time Offset"; DateFormula)
        {
            Caption = 'BOM_Lead-Time Offset';
        }
        field(1012; "BOM_Routing Link Code"; Code[10])
        {
            Caption = 'BOM_Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(1013; "BOM_Scrap %"; Decimal)
        {
            BlankNumbers = BlankNeg;
            Caption = 'BOM_Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
        }
        field(1014; "BOM_Variant Code"; Code[10])
        {
            Caption = 'BOM_Variant Code';
            TableRelation = IF (BOM_Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("BOM_No."));
        }
        field(1016; "BOM_Starting Date"; Date)
        {
            Caption = 'BOM_Starting Date';
        }
        field(1017; "BOM_Ending Date"; Date)
        {
            Caption = 'BOM_Ending Date';
        }
        field(1018; BOM_Length; Decimal)
        {
            Caption = 'BOM_Length';
            DecimalPlaces = 0 : 5;
        }
        field(1019; BOM_Width; Decimal)
        {
            Caption = 'BOM_Width';
            DecimalPlaces = 0 : 5;
        }
        field(1020; BOM_Weight; Decimal)
        {
            Caption = 'BOM_Weight';
            DecimalPlaces = 0 : 5;
        }
        field(1021; BOM_Depth; Decimal)
        {
            Caption = 'BOM_Depth';
            DecimalPlaces = 0 : 5;
        }
        field(1022; "BOM_Calculation Formula"; Option)
        {
            Caption = 'BOM_Calculation Formula';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(1023; "BOM_Quantity per"; Decimal)
        {
            Caption = 'BOM_Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(1024; "BOM_Item Type"; Option)
        {
            Caption = 'BOM_Item Type';
            OptionCaption = ' ,Share of Recipe,Item';
            OptionMembers = " ","Share of Recipe",Item;
        }
        field(1025; "BOM_Share %"; Decimal)
        {
            Caption = 'BOM_Share %';
            DecimalPlaces = 0 : 3;
            MaxValue = 100;
            MinValue = 0;
        }
        field(1026; BOM_Shares; Decimal)
        {
            Caption = 'BOM_Shares';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(1027; "BOM_Lot Determining"; Boolean)
        {
            Caption = 'BOM_Lot Determining';
            Description = ':PMW14.02:88:1';
        }
        field(1028; "BOM_Expiration Determining"; Boolean)
        {
            Caption = 'BOM_Expiration Determining';
            Description = '#PMW16.00.02:T302';
        }
        field(1029; "BOM_Comp. Location Code"; Code[10])
        {
            Caption = 'BOM_Comp. Location Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Location;
        }
        field(1030; "BOM_Comp. Bin Code"; Code[20])
        {
            Caption = 'BOM_Comp. Bin Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Comp. Location Code"));
        }
        field(1031; "BOM_Calculation Group Code"; Code[10])
        {
            Caption = 'BOM_Calculation Group Code';
            Description = '#PMW16.00.03:T109';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Item));
        }
        field(2000; "BOM_Com_Production BOM No."; Code[20])
        {
            Caption = 'BOM_Com_Production BOM No.';
            TableRelation = "Production BOM Header";
        }
        field(2001; "BOM_Com_BOM Line No."; Integer)
        {
            Caption = 'BOM_Com_BOM Line No.';
            TableRelation = "Production BOM Line"."Line No." WHERE ("Production BOM No." = FIELD ("BOM_Production BOM No."));
        }
        field(2002; "BOM_Com_Line No."; Integer)
        {
            Caption = 'BOM_Com_Line No.';
        }
        field(2003; "BOM_Com_Version Code"; Code[20])
        {
            Caption = 'BOM_Com_Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("BOM_Production BOM No."),
                                                                           "Version Code" = FIELD ("BOM_Version Code"));
        }
        field(2004; BOM_Com_Date; Date)
        {
            Caption = 'BOM_Com_Date';
        }
        field(2005; BOM_Com_Comment; Text[80])
        {
            Caption = 'BOM_Com_Comment';
        }
        field(2006; BOM_Com_Code; Code[10])
        {
            Caption = 'BOM_Com_Code';
        }
        field(3000; "Rtng_Routing No."; Code[20])
        {
            Caption = 'Rtng_Routing No.';
            TableRelation = "Routing Header";
        }
        field(3001; "Rtng_Version Code"; Code[20])
        {
            Caption = 'Rtng_Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Rtng_Routing No."));
        }
        field(3002; "Rtng_Operation No."; Code[10])
        {
            Caption = 'Rtng_Operation No.';
        }
        field(3003; "Rtng_Next Operation No."; Code[30])
        {
            Caption = 'Rtng_Next Operation No.';
        }
        field(3004; "Rtng_Previous Operation No."; Code[30])
        {
            Caption = 'Rtng_Previous Operation No.';
        }
        field(3005; Rtng_Type; Option)
        {
            Caption = 'Rtng_Type';
            OptionCaption = 'Work Center,Machine Center, ';
            OptionMembers = "Work Center","Machine Center"," ";
        }
        field(3006; "Rtng_No."; Code[20])
        {
            Caption = 'Rtng_No.';
            TableRelation = IF (Rtng_Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Rtng_Type = CONST ("Machine Center")) "Machine Center";
        }
        field(3007; "Rtng_Work Center No."; Code[20])
        {
            Caption = 'Rtng_Work Center No.';
            Editable = false;
            TableRelation = "Work Center";
        }
        field(3008; "Rtng_Work Center Group Code"; Code[10])
        {
            Caption = 'Rtng_Work Center Group Code';
            Editable = false;
            TableRelation = "Work Center Group";
        }
        field(3009; Rtng_Description; Text[50])
        {
            Caption = 'Rtng_Description';
        }
        field(3010; "Rtng_Setup Time"; Decimal)
        {
            Caption = 'Rtng_Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3011; "Rtng_Run Time"; Decimal)
        {
            Caption = 'Rtng_Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3012; "Rtng_Wait Time"; Decimal)
        {
            Caption = 'Rtng_Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3013; "Rtng_Move Time"; Decimal)
        {
            Caption = 'Rtng_Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3014; "Rtng_Fixed Scrap Quantity"; Decimal)
        {
            Caption = 'Rtng_Fixed Scrap Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3015; "Rtng_Lot Size"; Decimal)
        {
            Caption = 'Rtng_Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(3016; "Rtng_Scrap Factor %"; Decimal)
        {
            Caption = 'Rtng_Scrap Factor %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3017; "Rtng_Setup Time U.o.Meas. Code"; Code[10])
        {
            Caption = 'Rtng_Setup Time U.o.Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(3018; "Rtng_Run Time U.o.Meas. Code"; Code[10])
        {
            Caption = 'Rtng_Run Time U.o.Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(3019; "Rtng_Wait Time U.o.Meas. Code"; Code[10])
        {
            Caption = 'Rtng_Wait Time U.o.Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(3020; "Rtng_Move Time U.o.Meas. Code"; Code[10])
        {
            Caption = 'Rtng_Move Time U.o.Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(3021; "Rtng_Minimum Process Time"; Decimal)
        {
            Caption = 'Rtng_Minimum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3022; "Rtng_Maximum Process Time"; Decimal)
        {
            Caption = 'Rtng_Maximum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3023; "Rtng_Concurrent Capacities"; Decimal)
        {
            Caption = 'Rtng_Concurrent Capacities';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
        }
        field(3024; "Rtng_Send-Ahead Quantity"; Decimal)
        {
            Caption = 'Rtng_Send-Ahead Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3025; "Rtng_Routing Link Code"; Code[10])
        {
            Caption = 'Rtng_Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(3026; "Rtng_Standard Task Code"; Code[10])
        {
            Caption = 'Rtng_Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(3027; "Rtng_Unit Cost per"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Rtng_Unit Cost per';
            MinValue = 0;
        }
        field(3028; Rtng_Recalculate; Boolean)
        {
            Caption = 'Rtng_Recalculate';
            Editable = false;
        }
        field(3030; "Rtng_Sequence No. (Forward)"; Integer)
        {
            Caption = 'Rtng_Sequence No. (Forward)';
            Editable = false;
        }
        field(3031; "Rtng_Sequence No. (Backward)"; Integer)
        {
            Caption = 'Rtng_Sequence No. (Backward)';
            Editable = false;
        }
        field(3032; "Rtng_Fixed Scrap Qty. (Accum.)"; Decimal)
        {
            Caption = 'Rtng_Fixed Scrap Qty. (Accum.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(3033; "Rtng_Scrap Factor % (Accum.)"; Decimal)
        {
            Caption = 'Rtng_Scrap Factor % (Accum.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(3034; "Rtng_Calculation Group Code"; Code[10])
        {
            Caption = 'Rtng_Calculation Group Code';
            Description = '#PMW16.00.03:T109';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Item));
        }
        field(3035; "Rtng_Sequence Planning"; Boolean)
        {
            Caption = 'Rtng_Sequence Planning';
            Description = '#PXW18.00.01:T101';
        }
        field(4000; "Rtng_Com_Routing No."; Code[20])
        {
            Caption = 'Rtng_Com_Routing No.';
            TableRelation = "Routing Header";
        }
        field(4001; "Rtng_Com_Operation No."; Code[10])
        {
            Caption = 'Rtng_Com_Operation No.';
            TableRelation = "Routing Line"."Operation No." WHERE ("Routing No." = FIELD ("Rtng_Routing No."),
                                                                  "Version Code" = FIELD ("Rtng_Version Code"));
        }
        field(4002; "Rtng_Com_Line No."; Integer)
        {
            Caption = 'Rtng_Com_Line No.';
        }
        field(4003; "Rtng_Com_Version Code"; Code[20])
        {
            Caption = 'Rtng_Com_Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Rtng_Routing No."));
        }
        field(4004; Rtng_Com_Date; Date)
        {
            Caption = 'Rtng_Com_Date';
        }
        field(4005; Rtng_Com_Comment; Text[80])
        {
            Caption = 'Rtng_Com_Comment';
        }
        field(4006; Rtng_Com_Code; Code[10])
        {
            Caption = 'Rtng_Com_Code';
        }
        field(5000; "Rtng_Tool_Routing No."; Code[20])
        {
            Caption = 'Rtng_Tool_Routing No.';
            TableRelation = "Routing Header";
        }
        field(5001; "Rtng_Tool_Version Code"; Code[20])
        {
            Caption = 'Rtng_Com_Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Rtng_Tool_Routing No."));
        }
        field(5002; "Rtng_Tool_Operation No."; Code[10])
        {
            Caption = 'Rtng_Com_Operation No.';
            TableRelation = "Routing Line"."Operation No." WHERE ("Routing No." = FIELD ("Rtng_Tool_Routing No."),
                                                                  "Version Code" = FIELD ("Rtng_Tool_Version Code"));
        }
        field(5003; "Rtng_Tool_Line No."; Integer)
        {
            Caption = 'Rtng_Com_Line No.';
        }
        field(5004; "Rtng_Tool_No."; Code[20])
        {
            Caption = 'Rtng_Tool_No.';
        }
        field(5005; Rtng_Tool_Description; Text[50])
        {
            Caption = 'Rtng_Tool_Description';
        }
        field(6000; "Rtng_Qual_Meas_Routing No."; Code[20])
        {
            Caption = 'Rtng_Qual_Meas_Routing No.';
            TableRelation = "Routing Header";
        }
        field(6001; "Rtng_Qual_Meas_Version Code"; Code[20])
        {
            Caption = 'Rtng_Com_Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Rtng_Qual_Meas_Routing No."));
        }
        field(6002; "Rtng_Qual_Meas_Operation No."; Code[10])
        {
            Caption = 'Rtng_Com_Operation No.';
            TableRelation = "Routing Line"."Operation No." WHERE ("Routing No." = FIELD ("Rtng_Qual_Meas_Routing No."),
                                                                  "Version Code" = FIELD ("Rtng_Qual_Meas_Version Code"));
        }
        field(6003; "Rtng_Qual_Meas_Line No."; Integer)
        {
            Caption = 'Rtng_Com_Line No.';
        }
        field(6004; Rtng_Qual_Meas_Code; Code[10])
        {
            Caption = 'Rtng_Qual_Meas_Code';
            TableRelation = "Quality Measure";
        }
        field(6005; Rtng_Qual_Meas_Description; Text[50])
        {
            Caption = 'Rtng_Qual_Meas_Description';
        }
        field(6006; "Rtng_Qual_Meas_Min. Value"; Decimal)
        {
            Caption = 'Rtng_Qual_Meas_Min. Value';
            DecimalPlaces = 0 : 5;
        }
        field(6007; "Rtng_Qual_Meas_Max. Value"; Decimal)
        {
            Caption = 'Rtng_Qual_Meas_Max. Value';
            DecimalPlaces = 0 : 5;
        }
        field(6008; "Rtng_Qual_Meas_Mean Tolerance"; Decimal)
        {
            Caption = 'Rtng_Qual_Meas_Mean Tolerance';
            DecimalPlaces = 0 : 5;
        }
        field(7000; "Rtng_Pers_Routing No."; Code[20])
        {
            Caption = 'Rtng_Pers_Routing No.';
            TableRelation = "Routing Header";
        }
        field(7001; "Rtng_Pers_Version Code"; Code[20])
        {
            Caption = 'Rtng_Com_Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Rtng_Pers_Routing No."));
        }
        field(7002; "Rtng_Pers_Operation No."; Code[10])
        {
            Caption = 'Rtng_Com_Operation No.';
            TableRelation = "Routing Line"."Operation No." WHERE ("Routing No." = FIELD ("Rtng_Pers_Routing No."),
                                                                  "Version Code" = FIELD ("Rtng_Pers_Version Code"));
        }
        field(7003; "Rtng_Pers_Line No."; Integer)
        {
            Caption = 'Rtng_Com_Line No.';
        }
        field(7004; "Rtng_Pers_No."; Code[20])
        {
            Caption = 'Rtng_Pers_No.';
        }
        field(7005; Rtng_Pers_Description; Text[50])
        {
            Caption = 'Rtng_Pers_Description';
        }
        field(8000; "Required Quantity"; Decimal)
        {
            Caption = 'Required Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:14:1';
        }
        field(8001; "Allocation Quantity"; Decimal)
        {
            Caption = 'Allocation Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:14:1';
        }
        field(8002; "Alloc. Unit of Measure Code"; Code[10])
        {
            Caption = 'Alloc. Unit of Measure Code';
            Description = ':PMW14.01:14:1';
        }
        field(8010; "Parallel Operation Code"; Code[10])
        {
            Caption = 'Parallel Operation Code';
            Description = '#PMW17.10.01:T101';
        }
        field(5034550; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#PMW16.00.03:T250';
            TableRelation = "Test Plan";
        }
        field(5034551; "Rtng_Test Plan No."; Code[20])
        {
            Caption = 'Rtng_Test Plan No.';
            Description = '#PMW16.00.03:T250';
            TableRelation = "Test Plan";
        }
        field(5034552; "BOM_Test Plan No."; Code[20])
        {
            Caption = 'BOM_Test Plan No.';
            Description = '#PMW17.10:T103';
            TableRelation = "Test Plan";
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
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", Type)
        {
        }
        key(Key3; "Document No.", "Attached to Line No.")
        {
        }
        key(Key4; "Document No.", Type, "Attached to Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

