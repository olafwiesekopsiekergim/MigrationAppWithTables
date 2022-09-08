table 27 Item
{
    // P0042 06.05.16 CCBIE.ARE New field 50020 "Without Inventory Control"
    // P0040 18.04.16 CCBIE.ARE New fields 50116 "Einzelgebinde max.Liter" and 50117 "Bodenbelastung max. kg"
    // P0036 06.04.16 CCBIE.ARE New field 50315 "Acceptance Protocol Code"
    // P0035 04.04.16 CCBIE.ARE New field 50002 "Productin Group Code"
    // P0031 22.03.16 CCBIE.NNE New fields 60072 "Inventory 100".
    // P0019 15.03.16 DEBIE.ARE New field 50000 "Lagerlabel drucken"
    // P0011 26.02.16 CCBIE.NNE OnDelete(), GTIN - OnValidate() changed.
    // P0009 24.02.16 DEMUE.SGE New fields 60070 "Inventory 400", 60071 "Inventory 420"
    // P0006 15.02.16 DEBIE.ARE New fields 50025 Frachtkosten, 50026 Frachtkostencode
    // P0003 15.02.16 DEBIE.ARE New fields 50049 "Qty. to Pick (Base)", 50109 "EP-pflichtig", 50112 Direktlieferung, 50113 Sonderartikel,
    //   50312 Katalogartikel, 50527 "automatic Blocking interval", 50528 "next Blocking Date"
    //   Update "next Blocking Date"
    // P0001 12.02.16 DEBIE.ARE New fields 50004 "Stand.Lagerort", 50045 "RMD Bestand Datum", 50046 "RMD Bestand", 80003 "Last Time Modified",
    //   50047 "RMD Labelanweisungscode", 50313 "Lager RMD", 50301 Abmessung1, 50302 Abmessung2, 50303 Abmessung3, 77850 "EAN-Code".
    //   New Key: Blocked,"Stand.Lagerort","Lager RMD","Last Date Modified"
    // 
    // CSC8.00: - New Field "Scan Instruction"
    //                      "Scan Rule"
    //                      "Scan Option"
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - "Component Group 1 No.","Component Group 2 No.","Component Group 3 No.",
    //                                       "Component Group 4 No.","Component Group 5 No."
    //                                     - "Component Type"
    //                                     Update Filter:
    //                                     - Field 85, Filter "Job No.", Const = [blank]
    // PR02 PRODUKT.01:P8008 19.02.15 DENUE.SKOL OnDelete - Check if Item is used in Job
    //                                           New Function
    //                                           - CheckJobLineBudget
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // AM01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|alloy management
    // 
    // #PXW16.00:100 28.01.09 DEMSR.IST
    //   New field 5012700 "Method of Production Code" added
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IST
    //   New field 5012701 "Shortcut Mfg. Dimension 1 Code" added
    //   New field 5012702 "Shortcut Mfg. Dimension 2 Code" added
    //   New function "ValidateShortcutMfgDimCode" added
    //   New function "LookupShortcutMfgDimCodeNoUpd" added
    //   New function "ShowShortcutMfgDimCode" added
    //   Delete Default Mfg. Dimensions OnDelete
    //   Transfer Default Mfg. Dimension in Onvalidate of "Item Category Code"
    // 
    // #PXW16.00.01.01:100 06.01.10 DEMSR.IST
    //   License Permission Check
    // 
    // #PXW16.00.02.03:T504 16.06.11 DESMR.IST
    //   Missing License Permission check for Mfg. Dimensions added
    // 
    // #PXW16.00.02.03:T503 16.06.11 DEMSR.IST
    //   Use "Def. Mfg. Dim. Template Code" from Item Category only if not empty
    // 
    // #PXW16.00.03.01:T502 29.03.12 DEMSR.IST
    //   Rename Default Mfg. Dimension on rename of Item
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.00.04:T501 08.07.15 DEMSR.IST
    //   Missing License Permission Check added
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   New field 5012650 "Calculation Group Code"
    //   New field 5012651 "Variable Calculation Lot Size"
    //   New field 5012652 "Standard Cost Calc. No."
    //   New field 5012653 "Unit Price Calc. No."
    //   New field 5012654 "Standard Calc. Schedule No."
    // 
    // #CAW16.00.00.03:T504 21.06.11 DEMSR.IST
    //   New function "SetVariableCalculationLotSize"
    //   Set "Variable Calculation Lot Size" depending on "Reordering Policy" and "Manufacturing Policy"
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #NAV20100:A1000      20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #NAV20100:A1004      02.05.07 DEWUE.SE
    //   Integration Test Plan Matrix
    // 
    // #NAV20100:A1000      09.10.07 DEMSR.CS
    //   Set BlankZero = True at Aut. Create Lot No. at Status
    // 
    // #QMW16.00.02:X001    27.10.10 DEMSR.KHS
    //   Lot Status Management
    // 
    // #QMW16.00.02.03:T501 03.01.11 DEMSR.KHS
    //   Blocked inventory not available
    //   New fields: Expiration Date Filter
    //               Available Inventory Lot
    //               Avail. Expiration Date Filter
    //               Availability Date Filter
    // 
    // #QMW16.00.02.06:T516 12.05.11 DEMSR.KHS
    //   FlowFields added:
    //     "Calc. Avail. Inv. Lot"
    //     "Avail. Reserved Qty. on Invt."
    // 
    // #QMW16.00.03:R460 11.07.11 DEMSR.KHS
    //   Add Inventory List fields
    // 
    // #QMW16.00.03.01:T514 25.01.12 DEMSR.KHS
    //   DEU Captions corrected
    // 
    // #QWM17.00:212 24.04.12 DEMSR.KHS
    //   Option String for "Aut. Create Lot No. at Status" changed (empty value added)
    //   Fill Automatic Lot No. Creation fields
    // 
    // #QMW17.00.00.01:T503 15.04.2013 DEMSR.KHS
    //   FlowField added: "Whse. Qty. Shipped (Base)"
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.02:T509 08.05.14 DEMSR.KHS
    //   CaptionClass for Lot Status Inventory fields corrected
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :PMW13.70:1:1
    //   # New field 5012560 "Production BOM Type"
    // 
    // :PMW13.70:2:1
    //   Additional relation from field 99000751 "Production BOM No." for "Production BOM Type"
    // 
    // :PMW13.71:1:1
    //   New field 5012561 "Reclaimed Item No."
    // 
    // :PMW14.00:2473:1
    //   New field 5012530 "Sales Delivery Tolerance Code"
    //   New field 5012531 "Purch. Delivery Tolerance Code"
    // 
    // :PMW14.01:4069:1
    //   New field 5012600 "QC Standard Status"
    // 
    // :PMW14.01:2457:1
    //   New field 5012400 "Order UOM in Production"
    // 
    // :PMW14.01.00.01:23:1
    //   Correction TableRelation Field "Production BOM No."
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:144:1
    //   Field "Order UOM in Production" changed to "Production Unit"
    // 
    // :PMW14.02:169:1
    //   New field 5012532 "Production Tolerance Code"
    // 
    // :PMW14.02:90:1
    //   New field 5012401 "Trading Unit per Item UOM"
    //   New field 5012402 "Trading Unit Item"
    //   New field 5012403 "Base Trading Unit Item No."
    //   New key "Base Trading Unit Item No."
    //   OnModify, call function "HandleItemAdjustment"
    // 
    // :PMW14.02:94:1
    //   New field 5012404 Density
    //   Base Unit of Measure - OnValidate, call CalculateAddItemUnits
    // 
    // :PMW14.02:53:1
    //   New field 5012406 "Returnable Container"
    // 
    // :PMW14.02:88:1
    //   New field 5012407 "Lot Determining"
    //   Item Tracking Code - OnValidate, check "Lot Determining"
    // 
    // :PMW14.02.01:83:1
    //   New field 5012408 "Production Structure No."
    //   New function "CheckProductionStructureNo"
    //   Production Structure No. - OnValidate, call "CheckProductionStructureNo"
    //   Routing No. - OnValidate, call "CheckProductionStructureNo"
    //   Production BOM No. - OnValidate, call "CheckProductionStructureNo"
    // 
    // :PMW14.02.01:98:1
    //   New field 5012601 "Lot QC Template No."
    // 
    // :PMW14.02.01:126:1
    //   Item Tracking Code - OnValidate, transfer "QC Standard Status"
    // 
    // :PMW14.02.01:98:1
    //   Item Tracking Code - OnValidate, transfer "Lot QC Template No."
    // 
    // QCSTATUS:PMW15.00:224:1
    //   New field 5012602 "Inventory blocked by QC"
    // 
    // CALC:PMW15.00:199:1
    //   New field 5012409 "Calculation Group Code"
    // 
    // :PMW15.00.01:45:1
    //   Check license permissions
    // 
    // :PMW15.01:79:1
    //   Field 5012532 "Production Tolerance Code" renamed to "Production Qty. Tolerance Code"
    // 
    // :PMW15.01:87:1
    //   New field 5012410 "Recipe Weight"
    // 
    // CALC:PMW15.01:75:1
    //   New field 5012460 "Standard Cost Calc. No."
    //   New field 5012461 "Unit Price Calc. No."
    //   New field 5012463 "Standard Calc. Schedule No."
    // 
    // :PMW16.00:153:1
    //   Called function CalculateAddItemUnits relocated
    // 
    // :PMW16.00:158:1
    //   Changed field for for Planning Pool --> #PXW16.00:100
    // 
    // :PMW16.00:157:1
    //   Redesign for Manufacturing Dimensions --> #PXW16.00:106
    // 
    // #PMW16.00.00.02:T515 10.09.09 DEMSR.IST
    //   Save record after change of Trading Unit per Item UOM
    // 
    // #PMW16.00.01:107 05.11.09 DEMSR.IST
    //   New field 5012411 "Variable Calculation Lot Size"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation fields and programming rearranged --> #CAW16.00:T100
    // 
    // #PMW16.00.02:T250 13.10.10 DEMSR.KHS
    //   Restricted Purchase of Items:
    //   New Field 5012582 Use only approved Vendors
    //   Item Contingents:
    //   New Field 5012583 Contingent Shipment Allowed
    //   New Field 5012584 Contingent Type
    //   New Field 5012585 Contingent Item Group
    //   New Field 5012586 Base Item No.
    // 
    // #PMW16.00.02:T302 25.10.10 DEMSR.IST
    //   New field 5012409 "Expiration Determining"
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New field 5012411 "Prod. Inbound Location Code"
    //   New field 5012412 "Prod. Inbound Bin Code"
    //   New field 5012413 "Prod. Outbound Location Code"
    //   New field 5012414 "Prod. Outbound Bin Code"
    // 
    // #PMW16.00.03.01:T520 02.08.12 DEMSR.IST
    //   Missing license check on recipe services added
    // 
    // #PMW17.00:T101 02.08.12 DEMSR.KHS
    //   Option String on "Production BOM Type" changed: " ,Rezeptur" -> " ,Recipe"
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   Name and ENU-Caption of field 5012582 "Use Only Approved Vendors" changed
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.00.00.04:T502 02.10.13 DEMSR.KHS
    //   Add Key Group PM to Key: "Base Trading Unit Item No."
    // 
    // #PMW17.10:T102 29.10.13 DEMSR.IST
    //   Check Type OnValidate of Production Structure No.
    //   New functions "CheckProductionStructureHeader" and "CheckProductionStructureLine", used in function "CheckDocuments"
    // 
    // #PMW17.10.00.02:T109 23.05.14 DEMSR:KHS
    //   Add field "Trading Unit No. Required"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW18.00.00.08:T500 03.08.15 DEMSR.IST
    //   Update Recipe Weight on Net Weight change
    // 
    // :CMIW15.00:41:1
    //   # New field 5172102 "Item Commission Group"
    //   # New key "Item Commission Group"
    // 
    // #RENW16.00:10-001  04.02.2009  DEMSR.KHS
    //   "Qty. on Sales Order" changed: Filter on "Rental Position = No"
    //   Fields "Rent Item","Service Item for SN needed" added
    // 
    // #RENW16.00.01:R059 12.10.09 DEMSR.KHS
    //   Divide Items into Types: Item, Machine, Supplementary Part, Machine Component
    // 
    // #RENW17.00 30.03.12 DEMSR.KHS
    //   Key Added: Type, No.
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.00.00.02:T101 29.05.13 DEMSR.KHS
    //   Update Object IDs
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :DMW13.60:1:01
    //             #  neue Felder: 5013000 Description 3
    //             #               5013010 Description 4
    //             #               5013020 Description 5
    //             #               5013030 Full Text        (neuer Key)
    //             #               5013100 Part Type
    //             #               5013110 Spare Part
    //             #               5013120 Wear Part
    //             #               5013130 Dummy
    //             #               5013140 Elektric CAD Item
    //             #               5013150 Mechanic CAD Item
    //             #               5013160 separate Prod. Order
    //             #               5013170 Drawings
    //             #               5013180 Checklist
    //             #  Neuer Key    "Full Text","Item Category Code"
    //             #  LookUpPageID    von "Item List" auf "Item List CTO" geändert
    //             #  DrillDowmFormID von "Item List" auf "Item List CTO" geändert
    //             #  "Full Text" füllen
    // :DMW13.60:1:01 # Maße mitlöschen
    //                # ArtikelStücklisten mitlöschen
    // :DMW13.60:1:02 # Felder für die Kalkulation angelegt
    // :DMW13.60:1:03 # neue Felder für die PDB Schnittstelle
    //                # 5013220 PDB export
    //                # 5013230 PDB date
    //                # 5013240 PDB time
    //                # 5013250 Last Modification Time
    //                # 5013260 Baugruppe
    //                # 5013270 PDB Erst. Date
    //                # 5013280 PDB Benutzer
    //                # 5013290 PDB Import
    //                # 5013300 PDB Import User
    //                # Neuer Key:   PDB export
    // :DMW13.60.02:1:01 #weitere Tabellen löschen und bei "Stücklistenzeilen" auf Art = Artikel filtern sowie Key benutzen
    // 
    // :DMW13.70.01:1:01 #deutsche Caption im Feld 5013100 "Part Type" von Artikeltyp auf Teileart geändert
    // :DMW13.70.01:1:02 #neue FlowFields für Verfügbarkeitsberechnung incl. Belegstücklisten und Kosntruktionsaufträgen
    // :DMW13.71:1:01 #  Feld 5013160: deutsche Caption geändert: "seperater Fert.-Auftrag"
    // :DMW13.71:1:02 #Prüfung beim Löschen, ob noch Konstruktionaufträge, Belegstücklisten oder Master BOM mit diesem Artikel bestehen
    // :DMW13.71:1:03 #neuer Schlüssel PDB Artikel
    // 
    // :DMW14.00:1:01 #im OnDelete-Trigger einige Filterungen korrigiert
    // :DMW14.02:1:01 #Wenn Part Type auf Production gestellt wird, dann "Replenishment System" und "Manufacturing Policy" vorbelegen
    // :DMW14.03:1:01 #neues Feld 5013470 "Base Material"
    // :DMW14.03:1:02 #neue Felder 5013480 "Discontinued Item" und 5013490 "Replacement possible from"
    // :DMW14.03:1:03 #neue Felder 5013500 Prototype; 5013510 "Prototype No. Series"; 5013520 "Created from Prototype"
    //                #neuer Key: "Created from Prototype"
    // :DMW14.04:1:01 #corrected Filter in FlowField 5013460; new field "Status Filter" and used in fields 5013400 and 5013420
    // :DMW14.04:1:02 #new fields: 5013530, 5013540
    // :DMW14.04:1:03 #reduced the options in Field "Part Type", deleted field Dummy, corrected ENU Caption
    // :DMW15.01:21:01 #Added newfield 5013550 "Separate Delivery"
    // :DMW15.01:26:01 #New field 5013501 "Prototype Type"
    // :DMW15.01.00.01:6:01 #Deleted unused Variable
    // KANBAN:DMW15.02:28:01 #New FlowField: 5013560 KANBAN, test "Reordering Policy"
    // :DMW16.00:6:01 #Filled in KeyGroups, Renamed "Petering out Item" to "Discontinued Item"
    // :DMW16.00:99:01 #Changes because of Role Tailored Client: Item Description Catalog didn't work on pages
    // #DMW16.00.02:T114 26.10.10 DEMSR.SSZ
    //  #Calculation replaced by Calculation Module
    // #DMW16.00.02.03:A0004 30.03.11 DEMSR.SSZ
    //  #Renamed field "Status Filter" to "Status Filter (DM)" to be able to be merged with e.g. QM
    // KANBAN:#DMW16.00.02.03:A0018 15.06.11 DEMSR.SSZ
    //  #FlowField KANABN only TRUE if KANBAN is activated
    // #DMW17.00:A001 02.08.12 DEMSR.SSZ
    //  #Field Full Text increased to Code 250 because Description was increased, too
    //  #Grammatical issues
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10:T103 29.10.13 DEMSR.SSZ
    //   #Only items with Type=Inventory are allowed to have linked Master BOM's
    //   #Can't change Type to Service when item still used in any DM-BOM's
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders: New field 5013520
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #No own table anymore for item search characteristic
    // #DMW17.10.01:T500 03.09.14 DEMSR.SSZ
    //   #License check was missed
    // #DMW18.00:T500 16.01.15 DEMSR.SSZ
    //   #License check was missed
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #New Option in field "Part Type": Purchase
    // #DMW18.00.01:T104 28.05.15 DEMSR.SSZ
    //   #Deleted posting fields in CTO tables:
    //   #replaced field "Outstanding Qty. (Base)" with "(Exp.) Quantity (Base)" in several FlowField formulas
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New key "No. 2"
    // 
    // CC01 14.03.2022 DEMUE.NR # Added Field 50600

    Caption = 'Item';
    DataCaptionFields = "No.", Description;
    Permissions =;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "No. 2"; Code[20])
        {
            Caption = 'No. 2';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(5; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(6; "Assembly BOM"; Boolean)
        {
            CalcFormula = Exist("BOM Component" WHERE("Parent Item No." = FIELD("No.")));
            Caption = 'Assembly BOM';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            TableRelation = "Unit of Measure";
            ValidateTableRelation = false;
        }
        field(9; "Price Unit Conversion"; Integer)
        {
            Caption = 'Price Unit Conversion';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Inventory,Service';
            OptionMembers = Inventory,Service;
        }
        field(11; "Inventory Posting Group"; Code[10])
        {
            Caption = 'Inventory Posting Group';
            TableRelation = "Inventory Posting Group";
        }
        field(12; "Shelf No."; Code[10])
        {
            Caption = 'Shelf No.';
        }
        field(14; "Item Disc. Group"; Code[20])
        {
            Caption = 'Item Disc. Group';
            TableRelation = "Item Discount Group";
        }
        field(15; "Allow Invoice Disc."; Boolean)
        {
            Caption = 'Allow Invoice Disc.';
            InitValue = true;
        }
        field(16; "Statistics Group"; Integer)
        {
            Caption = 'Statistics Group';
        }
        field(17; "Commission Group"; Integer)
        {
            Caption = 'Commission Group';
        }
        field(18; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(19; "Price/Profit Calculation"; Option)
        {
            Caption = 'Price/Profit Calculation';
            OptionCaption = 'Profit=Price-Cost,Price=Cost+Profit,No Relationship';
            OptionMembers = "Profit=Price-Cost","Price=Cost+Profit","No Relationship";
        }
        field(20; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
            DecimalPlaces = 0 : 5;
        }
        field(21; "Costing Method"; Option)
        {
            Caption = 'Costing Method';
            OptionCaption = 'FIFO,LIFO,Specific,Average,Standard';
            OptionMembers = FIFO,LIFO,Specific,"Average",Standard;
        }
        field(22; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            MinValue = 0;
        }
        field(24; "Standard Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Standard Cost';
            MinValue = 0;
        }
        field(25; "Last Direct Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Last Direct Cost';
            MinValue = 0;
        }
        field(28; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(29; "Cost is Adjusted"; Boolean)
        {
            Caption = 'Cost is Adjusted';
            Editable = false;
            InitValue = true;
        }
        field(30; "Allow Online Adjustment"; Boolean)
        {
            Caption = 'Allow Online Adjustment';
            Editable = false;
            InitValue = true;
        }
        field(31; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
            //This property is currently not supported
            //TestTableRelation = true;
            ValidateTableRelation = true;
        }
        field(32; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(33; "Lead Time Calculation"; DateFormula)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Lead Time Calculation';
        }
        field(34; "Reorder Point"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Reorder Point';
            DecimalPlaces = 0 : 5;
        }
        field(35; "Maximum Inventory"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Maximum Inventory';
            DecimalPlaces = 0 : 5;
        }
        field(36; "Reorder Quantity"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Reorder Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(37; "Alternative Item No."; Code[20])
        {
            Caption = 'Alternative Item No.';
            TableRelation = Item;
        }
        field(38; "Unit List Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit List Price';
            MinValue = 0;
        }
        field(39; "Duty Due %"; Decimal)
        {
            Caption = 'Duty Due %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(40; "Duty Code"; Code[10])
        {
            Caption = 'Duty Code';
        }
        field(41; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(42; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(43; "Units per Parcel"; Decimal)
        {
            Caption = 'Units per Parcel';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(44; "Unit Volume"; Decimal)
        {
            Caption = 'Unit Volume';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(45; Durability; Code[10])
        {
            Caption = 'Durability';
        }
        field(46; "Freight Type"; Code[10])
        {
            Caption = 'Freight Type';
        }
        field(47; "Tariff No."; Code[20])
        {
            Caption = 'Tariff No.';
            TableRelation = "Tariff Number";
        }
        field(48; "Duty Unit Conversion"; Decimal)
        {
            Caption = 'Duty Unit Conversion';
            DecimalPlaces = 0 : 5;
        }
        field(49; "Country/Region Purchased Code"; Code[10])
        {
            Caption = 'Country/Region Purchased Code';
            TableRelation = "Country/Region";
        }
        field(50; "Budget Quantity"; Decimal)
        {
            Caption = 'Budget Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(51; "Budgeted Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Budgeted Amount';
        }
        field(52; "Budget Profit"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Budget Profit';
        }
        field(53; Comment; Boolean)
        {
            CalcFormula = Exist("Comment Line" WHERE("Table Name" = CONST(Item),
                                                      "No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(54; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(55; "Cost is Posted to G/L"; Boolean)
        {
            CalcFormula = - Exist("Post Value Entry to G/L" WHERE("Item No." = FIELD("No.")));
            Caption = 'Cost is Posted to G/L';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(64; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(65; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(66; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(67; "Location Filter"; Code[10])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(68; Inventory; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                  "Location Code" = FIELD("Location Filter"),
                                                                  "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                  "Lot No." = FIELD("Lot No. Filter"),
                                                                  "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(69; "Net Invoiced Qty."; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Invoiced Quantity" WHERE("Item No." = FIELD("No."),
                                                                             "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Location Code" = FIELD("Location Filter"),
                                                                             "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                             "Variant Code" = FIELD("Variant Filter"),
                                                                             "Lot No." = FIELD("Lot No. Filter"),
                                                                             "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Net Invoiced Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "Net Change"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                  "Location Code" = FIELD("Location Filter"),
                                                                  "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                  "Posting Date" = FIELD("Date Filter"),
                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                  "Lot No." = FIELD("Lot No. Filter"),
                                                                  "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Net Change';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Purchases (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Invoiced Quantity" WHERE("Entry Type" = CONST(Purchase),
                                                                             "Item No." = FIELD("No."),
                                                                             "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Location Code" = FIELD("Location Filter"),
                                                                             "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                             "Variant Code" = FIELD("Variant Filter"),
                                                                             "Posting Date" = FIELD("Date Filter"),
                                                                             "Lot No." = FIELD("Lot No. Filter"),
                                                                             "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Purchases (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Sales (Qty.)"; Decimal)
        {
            CalcFormula = - Sum("Value Entry"."Invoiced Quantity" WHERE("Item Ledger Entry Type" = CONST(Sale),
                                                                        "Item No." = FIELD("No."),
                                                                        "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                        "Location Code" = FIELD("Location Filter"),
                                                                        "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                        "Variant Code" = FIELD("Variant Filter"),
                                                                        "Posting Date" = FIELD("Date Filter")));
            Caption = 'Sales (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Positive Adjmt. (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Invoiced Quantity" WHERE("Entry Type" = CONST("Positive Adjmt."),
                                                                             "Item No." = FIELD("No."),
                                                                             "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Location Code" = FIELD("Location Filter"),
                                                                             "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                             "Variant Code" = FIELD("Variant Filter"),
                                                                             "Posting Date" = FIELD("Date Filter"),
                                                                             "Lot No." = FIELD("Lot No. Filter"),
                                                                             "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Positive Adjmt. (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Negative Adjmt. (Qty.)"; Decimal)
        {
            CalcFormula = - Sum("Item Ledger Entry"."Invoiced Quantity" WHERE("Entry Type" = CONST("Negative Adjmt."),
                                                                              "Item No." = FIELD("No."),
                                                                              "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Posting Date" = FIELD("Date Filter"),
                                                                              "Lot No." = FIELD("Lot No. Filter"),
                                                                              "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Negative Adjmt. (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(77; "Purchases (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Purchase Amount (Actual)" WHERE("Item Ledger Entry Type" = CONST(Purchase),
                                                                              "Item No." = FIELD("No."),
                                                                              "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Posting Date" = FIELD("Date Filter")));
            Caption = 'Purchases (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; "Sales (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Sales Amount (Actual)" WHERE("Item Ledger Entry Type" = CONST(Sale),
                                                                           "Item No." = FIELD("No."),
                                                                           "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                           "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Posting Date" = FIELD("Date Filter")));
            Caption = 'Sales (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(79; "Positive Adjmt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Actual)" WHERE("Item Ledger Entry Type" = CONST("Positive Adjmt."),
                                                                          "Item No." = FIELD("No."),
                                                                          "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Posting Date" = FIELD("Date Filter")));
            Caption = 'Positive Adjmt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Negative Adjmt. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Cost Amount (Actual)" WHERE("Item Ledger Entry Type" = CONST("Negative Adjmt."),
                                                                          "Item No." = FIELD("No."),
                                                                          "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Posting Date" = FIELD("Date Filter")));
            Caption = 'Negative Adjmt. (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "COGS (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = - Sum("Value Entry"."Cost Amount (Actual)" WHERE("Item Ledger Entry Type" = CONST(Sale),
                                                                           "Item No." = FIELD("No."),
                                                                           "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                           "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Posting Date" = FIELD("Date Filter")));
            Caption = 'COGS (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "Qty. on Purch. Order"; Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            CalcFormula = Sum("Purchase Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST(Order),
                                                                               Type = CONST(Item),
                                                                               "No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Location Code" = FIELD("Location Filter"),
                                                                               "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                               "Variant Code" = FIELD("Variant Filter"),
                                                                               "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Purch. Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(85; "Qty. on Sales Order"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Sum("Sales Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST(Order),
                                                                            Type = CONST(Item),
                                                                            "No." = FIELD("No."),
                                                                            "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                            "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Sales Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(87; "Price Includes VAT"; Boolean)
        {
            Caption = 'Price Includes VAT';
        }
        field(89; "Drop Shipment Filter"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Drop Shipment Filter';
            FieldClass = FlowFilter;
        }
        field(90; "VAT Bus. Posting Gr. (Price)"; Code[10])
        {
            Caption = 'VAT Bus. Posting Gr. (Price)';
            TableRelation = "VAT Business Posting Group";
        }
        field(91; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(92; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(93; "Transferred (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Invoiced Quantity" WHERE("Entry Type" = CONST(Transfer),
                                                                             "Item No." = FIELD("No."),
                                                                             "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Location Code" = FIELD("Location Filter"),
                                                                             "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                             "Variant Code" = FIELD("Variant Filter"),
                                                                             "Posting Date" = FIELD("Date Filter"),
                                                                             "Lot No." = FIELD("Lot No. Filter"),
                                                                             "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Transferred (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(94; "Transferred (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Value Entry"."Sales Amount (Actual)" WHERE("Item Ledger Entry Type" = CONST(Transfer),
                                                                           "Item No." = FIELD("No."),
                                                                           "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                           "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Posting Date" = FIELD("Date Filter")));
            Caption = 'Transferred (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(95; "Country/Region of Origin Code"; Code[10])
        {
            Caption = 'Country/Region of Origin Code';
            TableRelation = "Country/Region";
        }
        field(96; "Automatic Ext. Texts"; Boolean)
        {
            Caption = 'Automatic Ext. Texts';
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(98; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(99; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(100; Reserve; Option)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            Caption = 'Reserve';
            InitValue = Optional;
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(101; "Reserved Qty. on Inventory"; Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(32),
                                                                           "Source Subtype" = CONST("0"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Serial No." = FIELD("Serial No. Filter"),
                                                                           "Lot No." = FIELD("Lot No. Filter"),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter")));
            Caption = 'Reserved Qty. on Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(102; "Reserved Qty. on Purch. Orders"; Decimal)
        {
            AccessByPermission = TableData "Purch. Rcpt. Header" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(39),
                                                                           "Source Subtype" = CONST("1"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Reserved Qty. on Purch. Orders';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(103; "Reserved Qty. on Sales Orders"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(37),
                                                                            "Source Subtype" = CONST("1"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Reserved Qty. on Sales Orders';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(105; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(106; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(107; "Res. Qty. on Outbound Transfer"; Decimal)
        {
            AccessByPermission = TableData "Transfer Header" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(5741),
                                                                            "Source Subtype" = CONST("0"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Outbound Transfer';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(108; "Res. Qty. on Inbound Transfer"; Decimal)
        {
            AccessByPermission = TableData "Transfer Header" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(5741),
                                                                           "Source Subtype" = CONST("1"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Inbound Transfer';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(109; "Res. Qty. on Sales Returns"; Decimal)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(37),
                                                                           "Source Subtype" = CONST("5"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Sales Returns';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Res. Qty. on Purch. Returns"; Decimal)
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(39),
                                                                            "Source Subtype" = CONST("5"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Purch. Returns';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Stockout Warning"; Option)
        {
            Caption = 'Stockout Warning';
            OptionCaption = 'Default,No,Yes';
            OptionMembers = Default,No,Yes;
        }
        field(121; "Prevent Negative Inventory"; Option)
        {
            Caption = 'Prevent Negative Inventory';
            OptionCaption = 'Default,No,Yes';
            OptionMembers = Default,No,Yes;
        }
        field(200; "Cost of Open Production Orders"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Cost Amount" WHERE(Status = FILTER(Planned | "Firm Planned" | Released),
                                                                      "Item No." = FIELD("No.")));
            Caption = 'Cost of Open Production Orders';
            FieldClass = FlowField;
        }
        field(521; "Application Wksh. User ID"; Code[128])
        {
            Caption = 'Application Wksh. User ID';
        }
        field(910; "Assembly Policy"; Option)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Assembly Policy';
            OptionCaption = 'Assemble-to-Stock,Assemble-to-Order';
            OptionMembers = "Assemble-to-Stock","Assemble-to-Order";
        }
        field(929; "Res. Qty. on Assembly Order"; Decimal)
        {
            AccessByPermission = TableData "BOM Component" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(900),
                                                                           "Source Subtype" = CONST("1"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Assembly Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(930; "Res. Qty. on  Asm. Comp."; Decimal)
        {
            AccessByPermission = TableData "BOM Component" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(901),
                                                                            "Source Subtype" = CONST("1"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on  Asm. Comp.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(977; "Qty. on Assembly Order"; Decimal)
        {
            CalcFormula = Sum("Assembly Header"."Remaining Quantity (Base)" WHERE("Document Type" = CONST(Order),
                                                                                   "Item No." = FIELD("No."),
                                                                                   "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                   "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                   "Location Code" = FIELD("Location Filter"),
                                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                                   "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Assembly Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(978; "Qty. on Asm. Component"; Decimal)
        {
            CalcFormula = Sum("Assembly Line"."Remaining Quantity (Base)" WHERE("Document Type" = CONST(Order),
                                                                                 Type = CONST(Item),
                                                                                 "No." = FIELD("No."),
                                                                                 "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                 "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                 "Location Code" = FIELD("Location Filter"),
                                                                                 "Variant Code" = FIELD("Variant Filter"),
                                                                                 "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Asm. Component';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(1001; "Qty. on Job Order"; Decimal)
        {
            CalcFormula = Sum("Job Planning Line"."Remaining Qty. (Base)" WHERE(Status = CONST(Order),
                                                                                 Type = CONST(Item),
                                                                                 "No." = FIELD("No."),
                                                                                 "Location Code" = FIELD("Location Filter"),
                                                                                 "Variant Code" = FIELD("Variant Filter"),
                                                                                 "Planning Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Job Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(1002; "Res. Qty. on Job Order"; Decimal)
        {
            AccessByPermission = TableData Job = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(1003),
                                                                            "Source Subtype" = CONST("2"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Job Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(1217; GTIN; Code[14])
        {
            Caption = 'GTIN';
            Numeric = true;
        }
        field(1700; "Default Deferral Template Code"; Code[10])
        {
            Caption = 'Default Deferral Template Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(5400; "Low-Level Code"; Integer)
        {
            Caption = 'Low-Level Code';
            Editable = false;
        }
        field(5401; "Lot Size"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5402; "Serial Nos."; Code[10])
        {
            Caption = 'Serial Nos.';
            TableRelation = "No. Series";
        }
        field(5403; "Last Unit Cost Calc. Date"; Date)
        {
            Caption = 'Last Unit Cost Calc. Date';
            Editable = false;
        }
        field(5404; "Rolled-up Material Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Rolled-up Material Cost';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(5405; "Rolled-up Capacity Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Rolled-up Capacity Cost';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(5407; "Scrap %"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 2;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5409; "Inventory Value Zero"; Boolean)
        {
            Caption = 'Inventory Value Zero';
        }
        field(5410; "Discrete Order Quantity"; Integer)
        {
            Caption = 'Discrete Order Quantity';
            MinValue = 0;
        }
        field(5411; "Minimum Order Quantity"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Minimum Order Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5412; "Maximum Order Quantity"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Maximum Order Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5413; "Safety Stock Quantity"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Safety Stock Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5414; "Order Multiple"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Order Multiple';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5415; "Safety Lead Time"; DateFormula)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Safety Lead Time';
        }
        field(5417; "Flushing Method"; Option)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Flushing Method';
            OptionCaption = 'Manual,Forward,Backward,Pick + Forward,Pick + Backward';
            OptionMembers = Manual,Forward,Backward,"Pick + Forward","Pick + Backward";
        }
        field(5419; "Replenishment System"; Option)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Replenishment System';
            OptionCaption = 'Purchase,Prod. Order,,Assembly';
            OptionMembers = Purchase,"Prod. Order",,Assembly;
        }
        field(5420; "Scheduled Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Qty. (Base)" WHERE(Status = FILTER("Firm Planned" | Released),
                                                                                "Item No." = FIELD("No."),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Due Date" = FIELD("Date Filter")));
            Caption = 'Scheduled Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5421; "Scheduled Need (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Remaining Qty. (Base)" WHERE(Status = FILTER(Planned .. Released),
                                                                                     "Item No." = FIELD("No."),
                                                                                     "Variant Code" = FIELD("Variant Filter"),
                                                                                     "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                     "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                     "Location Code" = FIELD("Location Filter"),
                                                                                     "Due Date" = FIELD("Date Filter")));
            Caption = 'Scheduled Need (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5422; "Rounding Precision"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            Caption = 'Rounding Precision';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(5423; "Bin Filter"; Code[20])
        {
            Caption = 'Bin Filter';
            FieldClass = FlowFilter;
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Location Filter"));
        }
        field(5424; "Variant Filter"; Code[10])
        {
            Caption = 'Variant Filter';
            FieldClass = FlowFilter;
            TableRelation = "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(5425; "Sales Unit of Measure"; Code[10])
        {
            Caption = 'Sales Unit of Measure';
            TableRelation = IF ("No." = FILTER(<> '')) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(5426; "Purch. Unit of Measure"; Code[10])
        {
            Caption = 'Purch. Unit of Measure';
            TableRelation = IF ("No." = FILTER(<> '')) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(5428; "Time Bucket"; DateFormula)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Time Bucket';
        }
        field(5429; "Reserved Qty. on Prod. Order"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(5406),
                                                                           "Source Subtype" = FILTER("1" .. "3"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Reserved Qty. on Prod. Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5430; "Res. Qty. on Prod. Order Comp."; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(5407),
                                                                            "Source Subtype" = FILTER("1" .. "3"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Prod. Order Comp.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5431; "Res. Qty. on Req. Line"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(246),
                                                                           "Source Subtype" = FILTER("0"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Req. Line';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5440; "Reordering Policy"; Option)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Reordering Policy';
            OptionCaption = ' ,Fixed Reorder Qty.,Maximum Qty.,Order,Lot-for-Lot';
            OptionMembers = " ","Fixed Reorder Qty.","Maximum Qty.","Order","Lot-for-Lot";
        }
        field(5441; "Include Inventory"; Boolean)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Include Inventory';
        }
        field(5442; "Manufacturing Policy"; Option)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Manufacturing Policy';
            OptionCaption = 'Make-to-Stock,Make-to-Order';
            OptionMembers = "Make-to-Stock","Make-to-Order";
        }
        field(5443; "Rescheduling Period"; DateFormula)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Rescheduling Period';
        }
        field(5444; "Lot Accumulation Period"; DateFormula)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Lot Accumulation Period';
        }
        field(5445; "Dampener Period"; DateFormula)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Dampener Period';
        }
        field(5446; "Dampener Quantity"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Dampener Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5447; "Overflow Level"; Decimal)
        {
            AccessByPermission = TableData "Req. Wksh. Template" = R;
            Caption = 'Overflow Level';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5449; "Planning Transfer Ship. (Qty)."; Decimal)
        {
            CalcFormula = Sum("Requisition Line"."Quantity (Base)" WHERE("Replenishment System" = CONST(Transfer),
                                                                          Type = CONST(Item),
                                                                          "No." = FIELD("No."),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Transfer-from Code" = FIELD("Location Filter"),
                                                                          "Transfer Shipment Date" = FIELD("Date Filter")));
            Caption = 'Planning Transfer Ship. (Qty).';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5450; "Planning Worksheet (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Requisition Line"."Quantity (Base)" WHERE("Planning Line Origin" = CONST(Planning),
                                                                          Type = CONST(Item),
                                                                          "No." = FIELD("No."),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Due Date" = FIELD("Date Filter"),
                                                                          "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter")));
            Caption = 'Planning Worksheet (Qty.)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5700; "Stockkeeping Unit Exists"; Boolean)
        {
            CalcFormula = Exist("Stockkeeping Unit" WHERE("Item No." = FIELD("No.")));
            Caption = 'Stockkeeping Unit Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5701; "Manufacturer Code"; Code[10])
        {
            Caption = 'Manufacturer Code';
            TableRelation = Manufacturer;
        }
        field(5702; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5703; "Created From Nonstock Item"; Boolean)
        {
            AccessByPermission = TableData "Nonstock Item" = R;
            Caption = 'Created From Nonstock Item';
            Editable = false;
        }
        field(5704; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE("Item Category Code" = FIELD("Item Category Code"));
        }
        field(5706; "Substitutes Exist"; Boolean)
        {
            CalcFormula = Exist("Item Substitution" WHERE(Type = CONST(Item),
                                                           "No." = FIELD("No.")));
            Caption = 'Substitutes Exist';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5707; "Qty. in Transit"; Decimal)
        {
            CalcFormula = Sum("Transfer Line"."Qty. in Transit (Base)" WHERE("Derived From Line No." = CONST(0),
                                                                              "Item No." = FIELD("No."),
                                                                              "Transfer-to Code" = FIELD("Location Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                              "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                              "Receipt Date" = FIELD("Date Filter")));
            Caption = 'Qty. in Transit';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5708; "Trans. Ord. Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Transfer Line"."Outstanding Qty. (Base)" WHERE("Derived From Line No." = CONST(0),
                                                                               "Item No." = FIELD("No."),
                                                                               "Transfer-to Code" = FIELD("Location Filter"),
                                                                               "Variant Code" = FIELD("Variant Filter"),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Receipt Date" = FIELD("Date Filter")));
            Caption = 'Trans. Ord. Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5709; "Trans. Ord. Shipment (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Transfer Line"."Outstanding Qty. (Base)" WHERE("Derived From Line No." = CONST(0),
                                                                               "Item No." = FIELD("No."),
                                                                               "Transfer-from Code" = FIELD("Location Filter"),
                                                                               "Variant Code" = FIELD("Variant Filter"),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Trans. Ord. Shipment (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5776; "Qty. Assigned to ship"; Decimal)
        {
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Outstanding (Base)" WHERE("Item No." = FIELD("No."),
                                                                                         "Location Code" = FIELD("Location Filter"),
                                                                                         "Variant Code" = FIELD("Variant Filter"),
                                                                                         "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. Assigned to ship';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5777; "Qty. Picked"; Decimal)
        {
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Picked (Base)" WHERE("Item No." = FIELD("No."),
                                                                                    "Location Code" = FIELD("Location Filter"),
                                                                                    "Variant Code" = FIELD("Variant Filter"),
                                                                                    "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. Picked';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5900; "Service Item Group"; Code[10])
        {
            Caption = 'Service Item Group';
            TableRelation = "Service Item Group".Code;
        }
        field(5901; "Qty. on Service Order"; Decimal)
        {
            CalcFormula = Sum("Service Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST(Order),
                                                                              Type = CONST(Item),
                                                                              "No." = FIELD("No."),
                                                                              "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                              "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Needed by Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Service Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5902; "Res. Qty. on Service Orders"; Decimal)
        {
            AccessByPermission = TableData "Service Header" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(5902),
                                                                            "Source Subtype" = CONST("1"),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Res. Qty. on Service Orders';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(6500; "Item Tracking Code"; Code[10])
        {
            Caption = 'Item Tracking Code';
            TableRelation = "Item Tracking Code";
        }
        field(6501; "Lot Nos."; Code[10])
        {
            Caption = 'Lot Nos.';
            TableRelation = "No. Series";
        }
        field(6502; "Expiration Calculation"; DateFormula)
        {
            Caption = 'Expiration Calculation';
        }
        field(6503; "Lot No. Filter"; Code[20])
        {
            Caption = 'Lot No. Filter';
            FieldClass = FlowFilter;
        }
        field(6504; "Serial No. Filter"; Code[20])
        {
            Caption = 'Serial No. Filter';
            FieldClass = FlowFilter;
        }
        field(6650; "Qty. on Purch. Return"; Decimal)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            CalcFormula = Sum("Purchase Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST("Return Order"),
                                                                               Type = CONST(Item),
                                                                               "No." = FIELD("No."),
                                                                               "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                               "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                               "Location Code" = FIELD("Location Filter"),
                                                                               "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                               "Variant Code" = FIELD("Variant Filter"),
                                                                               "Expected Receipt Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Purch. Return';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(6660; "Qty. on Sales Return"; Decimal)
        {
            AccessByPermission = TableData "Return Shipment Header" = R;
            CalcFormula = Sum("Sales Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST("Return Order"),
                                                                            Type = CONST(Item),
                                                                            "No." = FIELD("No."),
                                                                            "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                            "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Sales Return';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(7171; "No. of Substitutes"; Integer)
        {
            CalcFormula = Count("Item Substitution" WHERE(Type = CONST(Item),
                                                           "No." = FIELD("No.")));
            Caption = 'No. of Substitutes';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7301; "Special Equipment Code"; Code[10])
        {
            Caption = 'Special Equipment Code';
            TableRelation = "Special Equipment";
        }
        field(7302; "Put-away Template Code"; Code[10])
        {
            Caption = 'Put-away Template Code';
            TableRelation = "Put-away Template Header";
        }
        field(7307; "Put-away Unit of Measure Code"; Code[10])
        {
            AccessByPermission = TableData "Posted Invt. Put-away Header" = R;
            Caption = 'Put-away Unit of Measure Code';
            TableRelation = IF ("No." = FILTER(<> '')) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(7380; "Phys Invt Counting Period Code"; Code[10])
        {
            Caption = 'Phys Invt Counting Period Code';
            TableRelation = "Phys. Invt. Counting Period";
        }
        field(7381; "Last Counting Period Update"; Date)
        {
            AccessByPermission = TableData "Phys. Invt. Item Selection" = R;
            Caption = 'Last Counting Period Update';
            Editable = false;
        }
        field(7383; "Last Phys. Invt. Date"; Date)
        {
            CalcFormula = Max("Phys. Inventory Ledger Entry"."Posting Date" WHERE("Item No." = FIELD("No."),
                                                                                   "Phys Invt Counting Period Type" = FILTER(" " | Item)));
            Caption = 'Last Phys. Invt. Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7384; "Use Cross-Docking"; Boolean)
        {
            AccessByPermission = TableData "Bin Content" = R;
            Caption = 'Use Cross-Docking';
            InitValue = true;
        }
        field(7385; "Next Counting Start Date"; Date)
        {
            Caption = 'Next Counting Start Date';
            Editable = false;
        }
        field(7386; "Next Counting End Date"; Date)
        {
            Caption = 'Next Counting End Date';
            Editable = false;
        }
        field(7700; "Identifier Code"; Code[20])
        {
            CalcFormula = Lookup("Item Identifier".Code WHERE("Item No." = FIELD("No.")));
            Caption = 'Identifier Code';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50000; "Lagerlabel drucken"; Boolean)
        {
            Caption = 'Lagerlabel drucken';
            Description = 'P0019';
        }
        field(50001; "Qty. on Sales Quote"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = Sum("Sales Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST(Quote),
                                                                            Type = CONST(Item),
                                                                            "No." = FIELD("No."),
                                                                            "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                            "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Sales Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; "Production Group Code"; Code[10])
        {
            Caption = 'Production Group Code';
            Description = 'P0035';
            TableRelation = "Production Group";
        }
        field(50003; "Disable Etikett"; Boolean)
        {
            Caption = 'Etikett nicht drucken';
            Description = '#AT';
        }
        field(50004; "Stand.Lagerort"; Code[10])
        {
            Caption = 'Stand. Lagerort';
            Description = 'P0001,P0003';
            TableRelation = Location;
        }
        field(50005; "Pulvernr.(einseitig)"; Code[20])
        {
            Description = '#AT';
            TableRelation = Pulverprogramm;
            ValidateTableRelation = true;
        }
        field(50006; "Pulvernr.(beidseitig)"; Code[20])
        {
            Description = '#AT';
            TableRelation = Pulverprogramm;
            ValidateTableRelation = true;
        }
        field(50007; Kategorie; Code[30])
        {
            Description = '#AT';
            TableRelation = Kategorie;
        }
        field(50008; "Vimeo-ID-DE"; Text[30])
        {
            Caption = '<Vimeo-ID-DE>';
            Description = '#AT';
        }
        field(50009; "Vimeo-ID2-DE"; Text[30])
        {
            Caption = '<Vimeo-ID2-DE>';
            Description = '#AT';
        }
        field(50010; "Vimeo-ID3-DE"; Text[30])
        {
            Caption = '<Vimeo-ID3-DE>';
            Description = '#AT';
        }
        field(50011; "Vimeo-ID4-DE"; Text[30])
        {
            Caption = '<Vimeo-ID4-DE>';
            Description = '#AT';
        }
        field(50012; "Vimeo-ID-ENU"; Text[30])
        {
            Caption = '<Vimeo-ID-ENU>';
            Description = '#AT';
        }
        field(50013; "Vimeo-ID2-ENU"; Text[30])
        {
            Caption = '<Vimeo-ID2-ENU>';
            Description = '#AT';
        }
        field(50014; "Vimeo-ID3-ENU"; Text[30])
        {
            Caption = '<Vimeo-ID3-ENU>';
            Description = '#AT';
        }
        field(50015; "Vimeo-ID4-ENU"; Text[30])
        {
            Caption = '<Vimeo-ID4-ENU>';
            Description = '#AT';
        }
        field(50016; Partnerportal; Boolean)
        {
            Description = '#AT';
        }
        field(50019; "Pulvernr.(doppelt)"; Code[20])
        {
            Description = '#AT';
            TableRelation = Pulverprogramm;
            ValidateTableRelation = true;
        }
        field(50020; "Without Inventory Control"; Boolean)
        {
            Caption = 'Without Inventory Control';
            Description = 'P0042';
        }
        field(50025; Frachtkosten; Boolean)
        {
            Caption = 'Frachtkosten';
            Description = 'P0006';
            InitValue = true;
        }
        field(50026; Frachtkostencode; Code[10])
        {
            Caption = 'Frachtkostencode';
            Description = 'P0006';
            TableRelation = "Frachtcodes (Fracht2)";
        }
        field(50030; "Description(ENU)"; Text[50])
        {
            CalcFormula = Lookup("Item Translation".Description WHERE("Item No." = FIELD("No."),
                                                                       "Language Code" = CONST('ENU')));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50031; "Description2(ENU)"; Text[50])
        {
            CalcFormula = Lookup("Item Translation"."Description 2" WHERE("Item No." = FIELD("No."),
                                                                           "Language Code" = CONST('ENU')));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50032; "Description(FRA)"; Text[50])
        {
            CalcFormula = Lookup("Item Translation".Description WHERE("Item No." = FIELD("No."),
                                                                       "Language Code" = CONST('FRA')));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50033; "Description2(FRA)"; Text[50])
        {
            CalcFormula = Lookup("Item Translation"."Description 2" WHERE("Item No." = FIELD("No."),
                                                                           "Language Code" = CONST('FRA')));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50045; "RMD Bestand Datum"; Date)
        {
            Caption = 'RMD Bestand Datum';
            Description = 'P0001';
        }
        field(50046; "RMD Bestand"; Decimal)
        {
            Caption = 'RMD Bestand';
            Description = 'P0001';
        }
        field(50047; "RMD Labelanweisungscode"; Code[10])
        {
            Caption = 'RMD Labelanweisungscode';
            Description = 'P0001,P0003';
            TableRelation = "RMD Labelanweisung";
        }
        field(50049; "Qty. to Pick (Base)"; Decimal)
        {
            CalcFormula = Sum("Warehouse Activity Line"."Qty. Outstanding (Base)" WHERE("Activity Type" = CONST("Invt. Pick"),
                                                                                         "Item No." = FIELD("No."),
                                                                                         "Variant Code" = FIELD("Variant Filter"),
                                                                                         "Location Code" = FIELD("Location Filter")));
            Caption = 'Qty. to Pick (Base)';
            Description = 'P0003';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50091; "Consumption (Qty.)"; Decimal)
        {
            CalcFormula = - Sum("Value Entry"."Invoiced Quantity" WHERE("Item Ledger Entry Type" = CONST(Consumption),
                                                                        "Item No." = FIELD("No."),
                                                                        "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                        "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                        "Location Code" = FIELD("Location Filter"),
                                                                        "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                        "Variant Code" = FIELD("Variant Filter"),
                                                                        "Posting Date" = FIELD("Date Filter")));
            Caption = 'Negative Adjmt. (Qty.)';
            DecimalPlaces = 0 : 5;
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50109; "EP-pflichtig"; Boolean)
        {
            Caption = 'EP-pflichtig';
            Description = 'P0003';
            InitValue = true;
        }
        field(50112; Direktlieferung; Boolean)
        {
            Caption = 'Direktlieferung';
            Description = 'P0003';
        }
        field(50113; Sonderartikel; Boolean)
        {
            Description = 'P0003';
        }
        field(50116; "Einzelgebinde max.Liter"; Text[20])
        {
            Caption = 'Einzelgebinde max.Liter';
            Description = 'P0040';
        }
        field(50117; "Bodenbelastung max. kg"; Text[20])
        {
            Caption = 'Bodenbelastung max. kg';
            Description = 'P0040';
        }
        field(50200; Katalog; Boolean)
        {
            Description = '#AT';
        }
        field(50201; Katalogseite; Text[10])
        {
            Description = '#AT';
        }
        field(50202; Preisrelevant; Boolean)
        {
            Description = '#AT';
        }
        field(50301; Abmessung1; Text[10])
        {
            Caption = 'Dimension1';
            Description = 'P0001,P0003';
        }
        field(50302; Abmessung2; Text[10])
        {
            Caption = 'Dimension2';
            Description = 'P0001,P0003';
        }
        field(50303; Abmessung3; Text[10])
        {
            Caption = 'Dimension3';
            Description = 'P0001,P0003';
        }
        field(50304; Innenabmessung1; Text[10])
        {
            Caption = 'Innenabmessung(B)';
            Description = '#AT';
        }
        field(50305; Innenabmessung2; Text[10])
        {
            Caption = 'Innenabmessung(T)';
            Description = '#AT';
        }
        field(50306; Innenabmessung3; Text[10])
        {
            Caption = 'Innenabmessung(H)';
            Description = '#AT';
        }
        field(50307; Durchmesser1; Text[10])
        {
            Caption = 'Durchmesser(Innen)';
            Description = '#AT';
        }
        field(50308; Durchmesser2; Text[10])
        {
            Caption = 'Durchmesser(Aussen)';
            Description = '#AT';
        }
        field(50312; Katalogartikel; Boolean)
        {
            Caption = 'Katalogartikel';
            Description = 'P0003';
        }
        field(50313; "Lager RMD"; Boolean)
        {
            Caption = 'Lager RMD';
            Description = 'P0001,P0003';
        }
        field(50315; "Acceptance Protocol Code"; Code[20])
        {
            Caption = 'Acceptance Protocol Code';
            Description = 'P0036';
            TableRelation = "Acceptance Protocol Header";
        }
        field(50527; "automatic Blocking interval"; DateFormula)
        {
            Caption = 'Automatic Blocking Interval';
            Description = 'P0003';
        }
        field(50528; "next Blocking Date"; Date)
        {
            Caption = 'Next Blocking Date';
            Description = 'P0003';
            Editable = false;
        }
        field(50550; "Basis Zertifikat"; Text[30])
        {
        }
        field(50551; "Max Gebindegr. links"; Integer)
        {
            Caption = '<Max Gebindegröße, links>';
        }
        field(50552; "Max Gebindegr. rechts"; Integer)
        {
            Caption = '<Max Gebindegröße, rechts>';
        }
        field(50553; "Max Tragf. Stellf. links"; Code[3])
        {
            Caption = '<Max Tragfähigkeit Stellfläche, links>';
        }
        field(50554; "Max Tragf. Stellf. rechts"; Code[3])
        {
            Caption = '<Max Tragfähigkeit Stellfläche, rechts>';
        }
        field(50600; "Print on Slip"; Boolean)
        {
            Caption = 'Print on Slip';
            DataClassification = ToBeClassified;
            Description = 'CC01';
        }
        field(60068; BestellmengeAktuell; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Document Type" = FILTER("Purchase Receipt"),
                                                                  "Posting Date" = FILTER(20190101D .. 20191231D)));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(60069; Bestellmenge; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Document Type" = FILTER("Purchase Receipt"),
                                                                  "Posting Date" = FILTER(20180101D .. 20181231D)));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(60070; "Inventory 400"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                  "Location Code" = CONST('400'),
                                                                  "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                  "Lot No." = FIELD("Lot No. Filter"),
                                                                  "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Inventory 400';
            DecimalPlaces = 0 : 5;
            Description = 'P0009';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60071; "Inventory 420"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                  "Location Code" = CONST('420'),
                                                                  "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                  "Lot No." = FIELD("Lot No. Filter"),
                                                                  "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Inventory 420';
            DecimalPlaces = 0 : 5;
            Description = 'P0009';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60072; "Inventory 100"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                  "Location Code" = CONST('100'),
                                                                  "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                  "Lot No." = FIELD("Lot No. Filter"),
                                                                  "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Inventory 100';
            DecimalPlaces = 0 : 5;
            Description = 'P0031';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60073; "Inventory 401"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                  "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                  "Location Code" = CONST('401'),
                                                                  "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                  "Lot No." = FIELD("Lot No. Filter"),
                                                                  "Serial No." = FIELD("Serial No. Filter")));
            Caption = 'Inventory 420';
            DecimalPlaces = 0 : 5;
            Description = 'P0009';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60074; "Menge in RMD Umlagerung"; Decimal)
        {
            CalcFormula = Sum("Item Journal Line".Quantity WHERE("Item No." = FIELD("No."),
                                                                  "Source Code" = CONST('RMDUMLBUBL')));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77850; "EAN-Code"; Code[13])
        {
            Caption = 'EAN-Code';
            Description = 'TEMP Datenübernahme 2016';
        }
        field(80003; "Last Time Modified"; Time)
        {
            Caption = 'Last Time Modified';
            Description = 'P0001,P0003';
        }
        field(88801; "Old Item No. With Star"; Boolean)
        {
            Caption = 'Old Item No. With *';
            Description = 'TEMP Datenübernahme 2016';
        }
        field(88802; "Batch Change Data Mig."; Boolean)
        {
            Description = 'TEMP Datenübernahme 2016';
        }
        field(5012400; "Production Unit"; Option)
        {
            Caption = 'Production Unit';
            Description = ':PMW14.02:144:1';
            OptionCaption = 'Base Unit,Order Unit';
            OptionMembers = "Base Unit","Order Unit";
        }
        field(5012401; "Trading Unit per Item UOM"; Option)
        {
            Caption = 'Trading Unit per Item UOM';
            Description = ':PMW14.02:90:1';
            OptionCaption = ' ,Item,Variant';
            OptionMembers = " ",Item,Variant;
        }
        field(5012402; "Trading Unit Item"; Boolean)
        {
            Caption = 'Trading Unit Item';
            Description = ':PMW14.02:90:1';
            Editable = false;
        }
        field(5012403; "Base Trading Unit Item No."; Code[20])
        {
            Caption = 'Base Trading Unit Item';
            Description = ':PMW14.02:90:1';
            Editable = false;
            TableRelation = Item;
        }
        field(5012404; Density; Decimal)
        {
            Caption = 'Density';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.02:94:1';
            MinValue = 0;
        }
        field(5012406; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
            Description = ':PMW14.02:53:1';
        }
        field(5012407; "Lot Determining"; Boolean)
        {
            Caption = 'Lot Determining';
            Description = ':PMW14.02:88:1';
        }
        field(5012408; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = ':PMW14.02.01:83:1';
            TableRelation = "Production Structure Header"."No." WHERE("Production Structure Type" = CONST("Manufacturing Structure"),
                                                                       "Production Variant" = CONST(false));
        }
        field(5012409; "Expiration Determining"; Boolean)
        {
            Caption = 'Expiration Determining';
            Description = '#PMW16.00.02:T302';
        }
        field(5012410; "Recipe Weight"; Decimal)
        {
            Caption = 'Recipe Weight';
            DecimalPlaces = 0 : 5;
            Description = ':PMW15.01:87:1';
            MinValue = 0;
        }
        field(5012411; "Prod. Inbound Location Code"; Code[10])
        {
            Caption = 'Prod. Inbound Location Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Location;
        }
        field(5012412; "Prod. Inbound Bin Code"; Code[20])
        {
            Caption = 'Prod. Inbound Bin Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Prod. Inbound Location Code"));
        }
        field(5012413; "Prod. Outbound Location Code"; Code[10])
        {
            Caption = 'Prod. Outbound Location Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Location;
        }
        field(5012414; "Prod. Outbound Bin Code"; Code[20])
        {
            Caption = 'Prod. Outbound Bin Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Bin.Code WHERE("Location Code" = FIELD("Prod. Outbound Location Code"));
        }
        field(5012415; "Trading Unit No. Required"; Option)
        {
            Caption = 'Trading Unit No. Required';
            Description = '#PMW17.10.00.02:T109';
            OptionCaption = 'Optional,Always,Never';
            OptionMembers = Optional,Always,Never;
        }
        field(5012530; "Sales Delivery Tolerance Code"; Code[10])
        {
            Caption = 'Sales Delivery Tolerance Code';
            Description = ':PMW14.00:2473:1';
            TableRelation = "Delivery Tolerance";
        }
        field(5012531; "Purch. Delivery Tolerance Code"; Code[10])
        {
            Caption = 'Purch. Delivery Tolerance Code';
            Description = ':PMW14.00:2473:1';
            TableRelation = "Delivery Tolerance";
        }
        field(5012532; "Production Qty. Tolerance Code"; Code[10])
        {
            Caption = 'Production Qty. Tolerance Code';
            Description = ':PMW15.01:79:1';
            TableRelation = "Delivery Tolerance";
        }
        field(5012560; "Production BOM Type"; Option)
        {
            Caption = 'Production BOM Type';
            Description = '#PMW17.00:T101';
            OptionCaption = ' ,Recipe';
            OptionMembers = " ",Recipe;
        }
        field(5012561; "Reclaimed Item No."; Code[20])
        {
            Caption = 'Reclaimed Item No.';
            Description = ':PMW13.71:1:1';
            TableRelation = Item."No.";
        }
        field(5012582; "Use Only Approved Vendors"; Boolean)
        {
            Caption = 'Use Only Approved Vendors';
            Description = '#PMW16.00.02:T250';
        }
        field(5012583; "Contingent Shipment Allowed"; Boolean)
        {
            Caption = 'Contingent Shipment Allowed';
            Description = '#PMW16.00.02:T250';
        }
        field(5012584; "Contingent Type"; Code[20])
        {
            Caption = 'Contingent Type';
            Description = '#PMW16.00.02:T250';
            TableRelation = "Contingent Type";
        }
        field(5012585; "Contingent Item Group"; Code[20])
        {
            Caption = 'Contingent Item Group';
            Description = '#PMW16.00.02:T250';
            TableRelation = "Contingent Item Group";
        }
        field(5012586; "Base Item No."; Code[20])
        {
            Caption = 'Base Item No.';
            Description = '#PMW16.00.02:T250';
            TableRelation = Item;
        }
        field(5012600; "QC Standard Status"; Code[10])
        {
            Caption = 'QC Standard Status';
            Description = ':PMW14.01:4069:1';
            TableRelation = "QC Status";
        }
        field(5012601; "Lot QC Template No."; Code[20])
        {
            Caption = 'Lot QC Template No.';
            Description = ':PMW14.02.01:98:1';
            TableRelation = "QC Template Header";
        }
        field(5012602; "Inventory blocked by QC"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                              "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Lot No." = FIELD("Lot No. Filter"),
                                                                              "Serial No." = FIELD("Serial No. Filter"),
                                                                              "Inventory blocked by QC" = CONST(true)));
            Caption = 'Inventory blocked by QC';
            DecimalPlaces = 0 : 5;
            Description = 'QCSTATUS:PMW15.00:224:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00:T100';
            TableRelation = "Calculation Group".Code WHERE(Type = CONST(Item));
        }
        field(5012651; "Variable Calculation Lot Size"; Boolean)
        {
            Caption = 'Variable Calculation Lot Size';
            Description = '#CAW16.00:T100';
        }
        field(5012652; "Standard Cost Calc. No."; Code[20])
        {
            Caption = 'Standard Cost Calc. No.';
            Description = '#CAW16.00:T100';
            TableRelation = "Calculation Header"."No.";
        }
        field(5012653; "Unit Price Calc. No."; Code[20])
        {
            Caption = 'Unit Price Calc. No.';
            Description = '#CAW16.00:T100';
            TableRelation = "Calculation Header"."No.";
        }
        field(5012654; "Standard Calc. Schedule No."; Code[20])
        {
            Caption = 'Standard Calc. Schedule No.';
            Description = '#CAW16.00:T100';
            TableRelation = "Calculation Schedule Header"."No." WHERE(Status = CONST(Certified));
        }
        field(5012700; "Method of Production Code"; Code[10])
        {
            Caption = 'Method of Production Code';
            Description = '#PXW16.00:100';
            TableRelation = "Method of Production";
        }
        field(5012701; "Mfg. Dimension Template Code"; Code[10])
        {
            Caption = 'Mfg. Dimension Template Code';
            Description = '#PXW16.00:106';
            TableRelation = "Mfg. Dimension Template".Code;
        }
        field(5012702; "Shortcut Mfg. Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Description = '#PXW16.00:106';
            TableRelation = "Manufacturing Dimension Value".Code WHERE("Item Mfg. Dimension No." = CONST(1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012703; "Shortcut Mfg. Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Description = '#PXW16.00:106';
            TableRelation = "Manufacturing Dimension Value".Code WHERE("Item Mfg. Dimension No." = CONST(2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013000; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = ':DMW13.60:1:01';
        }
        field(5013004; "Main Location Code"; Code[10])
        {
            Caption = 'Main Location Code';
            Description = ':DMW13.60:1:01';
            TableRelation = Location.Code;
        }
        field(5013005; "Drawing No."; Text[50])
        {
            Caption = 'Drawing No.';
            Description = ':DMW13.60:1:01';
        }
        field(5013010; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = ':DMW13.60:1:01';
        }
        field(5013020; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = ':DMW13.60:1:01';
        }
        field(5013030; "Full Text"; Code[250])
        {
            Caption = 'Full Text';
            Description = ':DMW13.60:1:01';
            Editable = false;
        }
        field(5013050; "Formula Quantity"; Text[250])
        {
            Caption = 'Formula Quantity';
            Description = ':DMW13.60:1:01';
        }
        field(5013100; "Part Type"; Option)
        {
            Caption = 'Part Type';
            Description = ':DMW13.60:1:01';
            OptionCaption = 'Standard,Production,Purchase';
            OptionMembers = Standard,Production,Purchase;
        }
        field(5013110; "Spare Part"; Boolean)
        {
            Caption = 'Spare Part';
            Description = ':DMW13.60:1:01';
        }
        field(5013120; "Wear Part"; Boolean)
        {
            Caption = 'Wear Part';
            Description = ':DMW13.60:1:01';
        }
        field(5013140; "Elektric CAD Item"; Boolean)
        {
            Caption = 'Elektric CAD Item';
            Description = ':DMW13.60:1:01';
        }
        field(5013150; "Mechanic CAD Item"; Boolean)
        {
            Caption = 'Mechanic CAD Item';
            Description = ':DMW13.60:1:01';
        }
        field(5013160; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
            Description = ':DMW13.60:1:01';
        }
        field(5013170; Drawing; Boolean)
        {
            CalcFormula = Exist("Item Drawing" WHERE("Item No." = FIELD("No.")));
            Caption = 'Drawings';
            Description = ':DMW13.60:1:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013180; Checklist; Boolean)
        {
            CalcFormula = Exist("Checklist Relation" WHERE("Table ID" = CONST(Item),
                                                            Code = FIELD("No.")));
            Caption = 'Checklist';
            Description = ':DMW13.60:1:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013220; "PDB Item"; Boolean)
        {
            Caption = 'PDB Item';
            Description = ':DMW13.60:1:01';
        }
        field(5013230; "PDB Last Export Date"; Date)
        {
            Caption = 'PDB Last Export Date';
            Description = ':DMW13.60:1:01';
        }
        field(5013240; "PDB Last Export Time"; Time)
        {
            Caption = 'PDB Last Export Time';
            Description = ':DMW13.60:1:01';
        }
        field(5013250; "Last Modified Time"; Time)
        {
            Caption = 'Last Modified Time';
            Description = ':DMW13.60:1:01';
        }
        field(5013260; "Assembly Group"; Boolean)
        {
            Caption = 'Assembly Group';
            Description = ':DMW13.60:1:01';
        }
        field(5013270; "PDB Creat. Date"; Date)
        {
            Caption = 'PDB Creat. Date';
            Description = ':DMW13.60:1:01';
        }
        field(5013280; "PDB Creator"; Code[20])
        {
            Caption = 'PDB Creator';
            Description = ':DMW13.60:1:01';
        }
        field(5013290; "Navision Import Date"; Date)
        {
            Caption = 'Navision Import Date';
            Description = ':DMW13.60:1:01';
        }
        field(5013300; "Navision Import User"; Code[20])
        {
            Caption = 'Navision Import User';
            Description = ':DMW13.60:1:01';
        }
        field(5013390; "Status Filter (DM)"; Option)
        {
            Caption = 'Status Filter (DM)';
            FieldClass = FlowFilter;
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Open,Released,Closed;
        }
        field(5013400; "Qty. on Document BOM"; Decimal)
        {
            CalcFormula = Sum("Document BOM"."Exp. Quantity (Base)" WHERE("Information Line" = CONST(false),
                                                                           "Order Tracking Relevance" = CONST(true),
                                                                           Type = CONST(Item),
                                                                           "No." = FIELD("No."),
                                                                           "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                           "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Shipment Date" = FIELD("Date Filter"),
                                                                           Status = FIELD("Status Filter (DM)")));
            Caption = 'Qty. on Document BOM';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013410; "Reserved Qty. on Document BOM"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(5013559),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Reserved Qty. on Document BOM';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013420; "Qty. on ConstLine"; Decimal)
        {
            CalcFormula = Sum("Construction Line"."Exp. Quantity (Base)" WHERE("Information Line" = CONST(false),
                                                                                "Order Tracking Relevance" = CONST(true),
                                                                                Type = CONST(Item),
                                                                                "No." = FIELD("No."),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Shipment Date" = FIELD("Date Filter"),
                                                                                Status = FIELD("Status Filter (DM)")));
            Caption = 'Qty. on Constructionline';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013430; "Reserved Qty. on ConstLine"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Source Type" = CONST(5013631),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Reserved Qty. on Constructionline';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013440; "Qty. on Doc BOM Header"; Decimal)
        {
            CalcFormula = Sum("Sales Line"."Outstanding Qty. (Base)" WHERE("Document Type" = CONST(Order),
                                                                            Type = CONST(Item),
                                                                            "No." = FIELD("No."),
                                                                            "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                            "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter"),
                                                                            "Components Tracking Relevance" = CONST(true)));
            Caption = 'Qty. on Document BOM Header';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013450; "Qty. on Const.-Header"; Decimal)
        {
            CalcFormula = Sum("Construction Header"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                             "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                             "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                             "Location Code" = FIELD("Location Filter"),
                                                                             "Variant Code" = FIELD("Variant Filter"),
                                                                             "Shipment Date" = FIELD("Date Filter"),
                                                                             "Order Tracking Relevance" = CONST(true)));
            Caption = 'Qty. on Construction Header';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013460; "Reserved Qty. on ConstHeader"; Decimal)
        {
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            "Source Type" = CONST(5013630),
                                                                            "Reservation Status" = CONST(Reservation),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Variant Code" = FIELD("Variant Filter"),
                                                                            "Shipment Date" = FIELD("Date Filter")));
            Caption = 'Reserved Qty. on Construction Header';
            DecimalPlaces = 0 : 5;
            Description = ':DMW13.70.01:1:02';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013470; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = ':DMW14.03:1:01';
            TableRelation = "Base Material";
        }
        field(5013480; "Discontinued Item"; Boolean)
        {
            Caption = 'Discontinued Item';
            Description = ':DMW14.03:1:02';
        }
        field(5013490; "Replacement possible from"; Date)
        {
            Caption = 'Replacement possible from';
            Description = ':DMW14.03:1:02';
        }
        field(5013500; Prototype; Boolean)
        {
            Caption = 'Prototype';
            Description = ':DMW14.03:1:03';
        }
        field(5013501; "Prototype Type"; Option)
        {
            Caption = 'Prototype Type';
            Description = ':DMW15.01:26:01';
            OptionCaption = 'Item,Variant';
            OptionMembers = Item,Variant;
        }
        field(5013510; "Prototype No. Series"; Code[10])
        {
            Caption = 'Prototype No. Series';
            Description = ':DMW14.03:1:03';
            TableRelation = "No. Series";
        }
        field(5013520; "Created from Prototype"; Code[20])
        {
            Caption = 'Created from Prototype';
            Description = ':DMW14.03:1:03';
            Editable = false;
            TableRelation = Item;
        }
        field(5013530; "Prototype BOM Type"; Option)
        {
            Caption = 'Prototype BOM Type';
            Description = ':DMW14.04:1:02';
            OptionCaption = 'Document BOM,Construction Order';
            OptionMembers = "Document BOM","Construction Order";
        }
        field(5013540; "Prototype BOM No."; Code[20])
        {
            Caption = 'Prototype BOM No.';
            Description = ':DMW14.04:1:02';
            TableRelation = IF ("Prototype BOM Type" = CONST("Document BOM")) "Document BOM"."Document No."
            ELSE
            IF ("Prototype BOM Type" = CONST("Construction Order")) "Construction Header"."No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013550; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(5013560; KANBAN; Boolean)
        {
            CalcFormula = Exist(KANBAN WHERE("Item No." = FIELD("No."),
                                              "Variant Code" = FILTER(''),
                                              "Location Code" = FILTER(''),
                                              "Kanban Activated" = CONST(true)));
            Caption = 'KANBAN';
            Description = 'KANBAN:DMW15.02:28:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013570; "No. of Change Orders"; Integer)
        {
            CalcFormula = Count("Change Order" WHERE("Source Type" = CONST(Item),
                                                      "Source No." = FIELD("No.")));
            Caption = 'No. of Change Orders';
            Description = '#DMW17.10.01:T107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034565; "Automatic Lot No. Creation"; Boolean)
        {
            Caption = 'Automatic Lot No. Creation';
            Description = '#NAV20100:A1000';
        }
        field(5034566; "Aut. Create Lot No. at Status"; Option)
        {
            BlankZero = true;
            Caption = 'Autom. Create Lot No. at Status';
            Description = '#NAV20100:A1000';
            OptionCaption = ',,Firm Planned,Released,,,,, ';
            OptionMembers = ,,"Firm Planned",Released,,,,," ";
        }
        field(5034620; "Retest Calculation"; DateFormula)
        {
            Caption = 'Retest Calculation';
            Description = '#QMW16.00.02:X001';
        }
        field(5034621; "Quarantine Calculation"; DateFormula)
        {
            Caption = 'Quarantine Calculation';
            Description = '#QMW16.00.02:X001';
        }
        field(5034622; "Retest Date Filter"; Date)
        {
            Caption = 'Retest Date Filter';
            Description = '#QMW16.00.02:X001';
            FieldClass = FlowFilter;
        }
        field(5034623; "Quarantine Date Filter"; Date)
        {
            Caption = 'Quarantine Date Filter';
            Description = '#QMW16.00.02:X001';
            FieldClass = FlowFilter;
        }
        field(5034624; "Status Filter"; Code[20])
        {
            Caption = 'Status Filter';
            Description = '#QMW16.00.02:X001';
            Editable = false;
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034625; "Quarantine Inventory"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Lot No." = FIELD("Lot No. Filter"),
                                                                              "Quarantine Date" = FIELD("Quarantine Date Filter"),
                                                                              "Available for Planning" = CONST(false),
                                                                              Open = CONST(true)));
            Caption = 'Quarantine Inventory';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.02:X001';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034626; "Expiration Date Filter"; Date)
        {
            Caption = 'Expiration Date Filter';
            Description = '#QMW16.00.02.03:T501';
            FieldClass = FlowFilter;
        }
        field(5034627; "Available Inventory Lot"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Lot No." = FIELD("Lot No. Filter"),
                                                                              "Availability Date" = FIELD("Availability Date Filter"),
                                                                              "Expiration Date" = FIELD("Avail. Expiration Date Filter"),
                                                                              "Retest Date" = FIELD("Retest Date Filter"),
                                                                              "Available for Planning" = CONST(true),
                                                                              Open = CONST(true),
                                                                              Status = FIELD("Status Filter")));
            Caption = 'Available Inventory Lot';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.02.03:T501';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034628; "Avail. Expiration Date Filter"; Date)
        {
            Caption = 'Avail. Expiration Date Filter';
            Description = '#QMW16.00.02.03:T501';
            FieldClass = FlowFilter;
        }
        field(5034629; "Availability Date Filter"; Date)
        {
            Caption = 'Availability Date Filter';
            Description = '#QMW16.00.02.03:T501';
            FieldClass = FlowFilter;
        }
        field(5034630; "Calc. Avail. Inv. Lot"; Decimal)
        {
            CalcFormula = Sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = FIELD("No."),
                                                                              "Location Code" = FIELD("Location Filter"),
                                                                              "Variant Code" = FIELD("Variant Filter"),
                                                                              "Lot No." = FIELD("Lot No. Filter"),
                                                                              "Availability Date" = FIELD("Availability Date Filter"),
                                                                              "Expiration Date" = FIELD("Avail. Expiration Date Filter"),
                                                                              "Retest Date" = FIELD("Retest Date Filter"),
                                                                              Open = CONST(true),
                                                                              Status = FIELD("Status Filter")));
            Caption = 'Calc. Avail. Inv. Lot';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.02.06:T516';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034631; "Avail. Reserved Qty. on Invt."; Decimal)
        {
            CalcFormula = Sum("Reservation Entry"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                           "Source Type" = CONST(32),
                                                                           "Source Subtype" = CONST("0"),
                                                                           "Reservation Status" = CONST(Reservation),
                                                                           "Location Code" = FIELD("Location Filter"),
                                                                           "Variant Code" = FIELD("Variant Filter"),
                                                                           "Lot No." = FIELD("Lot No. Filter"),
                                                                           "Avail. Availability Date" = FIELD("Availability Date Filter"),
                                                                           "Avail. Expiration Date" = FIELD("Expiration Date Filter"),
                                                                           "Avail. Status" = FIELD("Status Filter")));
            Caption = 'Avail. Reserved Qty. on Inventory';
            DecimalPlaces = 0 : 5;
            Description = '#QMW16.00.02.06:T516';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034632; "Inventory (Expired) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Lot No." = FILTER(<> ''),
                                                                   "Expiration Date" = FIELD("Expiration Date Filter"),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Expired)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034633; "Available Inventory Lot (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                   "Lot No." = FIELD("Lot No. Filter"),
                                                                   "Availability Date" = FIELD("Availability Date Filter"),
                                                                   "Expiration Date" = FIELD("Avail. Expiration Date Filter"),
                                                                   "Retest Date" = FIELD("Retest Date Filter"),
                                                                   Status = FILTER(<> '1' & <> '2' & <> '3'),
                                                                   "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Available Inventory Lot (IO)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034634; "Inventory (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                   "Serial No." = FIELD("Serial No. Filter"),
                                                                   "Lot No." = FIELD("Lot No. Filter"),
                                                                   "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (IO)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034635; "DateFilter Last 12 Month Usage"; Date)
        {
            Caption = 'DateFilter Last 12 Month Usage';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
        }
        field(5034636; "DateFilter Last 6 Month Usage"; Date)
        {
            Caption = 'DateFilter Last 6 Month Usage';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
        }
        field(5034637; "DateFilter Last 3 Month Usage"; Date)
        {
            Caption = 'DateFilter Last 3 Month Usage';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
        }
        field(5034638; "DateFilter Last Month Usage"; Date)
        {
            Caption = 'DateFilter Last Month Usage';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
        }
        field(5034639; "Last 12 Month Usage"; Decimal)
        {
            CalcFormula = - Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                   "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                   "Posting Date" = FIELD("DateFilter Last 12 Month Usage"),
                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                   "Lot No." = FIELD("Lot No. Filter"),
                                                                   "Serial No." = FIELD("Serial No. Filter"),
                                                                   "Entry Type" = FILTER(Sale | "Negative Adjmt." | Transfer | Consumption)));
            Caption = 'Last 12 Month Usage';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034640; "Last 6 Month Usage"; Decimal)
        {
            CalcFormula = - Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                   "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                   "Posting Date" = FIELD("DateFilter Last 6 Month Usage"),
                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                   "Lot No." = FIELD("Lot No. Filter"),
                                                                   "Serial No." = FIELD("Serial No. Filter"),
                                                                   "Entry Type" = FILTER(Sale | "Negative Adjmt." | Transfer | Consumption)));
            Caption = 'Last 6 Month Usage';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034641; "Last 3 Month Usage"; Decimal)
        {
            CalcFormula = - Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                   "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                   "Posting Date" = FIELD("DateFilter Last 3 Month Usage"),
                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                   "Lot No." = FIELD("Lot No. Filter"),
                                                                   "Serial No." = FIELD("Serial No. Filter"),
                                                                   "Entry Type" = FILTER(Sale | "Negative Adjmt." | Transfer | Consumption)));
            Caption = 'Last 3 Month Usage';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034642; "Last Month Usage"; Decimal)
        {
            CalcFormula = - Sum("Item Ledger Entry".Quantity WHERE("Item No." = FIELD("No."),
                                                                   "Global Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                   "Global Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                   "Location Code" = FIELD("Location Filter"),
                                                                   "Drop Shipment" = FIELD("Drop Shipment Filter"),
                                                                   "Posting Date" = FIELD("DateFilter Last Month Usage"),
                                                                   "Variant Code" = FIELD("Variant Filter"),
                                                                   "Lot No." = FIELD("Lot No. Filter"),
                                                                   "Serial No." = FIELD("Serial No. Filter"),
                                                                   "Entry Type" = FILTER(Sale | "Negative Adjmt." | Transfer | Consumption)));
            Caption = 'Last Month Usage';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034643; "Inventory Status Filter 1"; Code[20])
        {
            Caption = 'Inventory Status Filter 1';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034644; "Inventory (Status 1) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 1"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 1)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034645; "Inventory Status Filter 2"; Code[20])
        {
            Caption = 'Inventory Status Filter 2';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034646; "Inventory (Status 2) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 2"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 2)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034647; "Inventory Status Filter 3"; Code[20])
        {
            Caption = 'Inventory Status Filter 3';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034648; "Inventory (Status 3) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 3"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 3)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034649; "Inventory Status Filter 4"; Code[20])
        {
            Caption = 'Inventory Status Filter 4';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034650; "Inventory (Status 4) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 4"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 4)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034651; "Inventory Status Filter 5"; Code[20])
        {
            Caption = 'Inventory Status Filter 5';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034652; "Inventory (Status 5) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 5"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 5)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034653; "Inventory Status Filter 6"; Code[20])
        {
            Caption = 'Inventory Status Filter 6';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034654; "Inventory (Status 6) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 6"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 6)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034655; "Inventory Status Filter 7"; Code[20])
        {
            Caption = 'Inventory Status Filter 7';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034656; "Inventory (Status 7) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 7"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 7)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034657; "Inventory Status Filter 8"; Code[20])
        {
            Caption = 'Inventory Status Filter 8';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034658; "Inventory (Status 8) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 8"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 8)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034659; "Inventory Status Filter 9"; Code[20])
        {
            Caption = 'Inventory Status Filter 9';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034660; "Inventory (Status 9) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 9"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 9)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034661; "Inventory Status Filter 10"; Code[20])
        {
            Caption = 'Inventory Status Filter 10';
            Description = '#QM6.00.03:R460';
            FieldClass = FlowFilter;
            TableRelation = "Lot-/ Serial No. Status";
        }
        field(5034662; "Inventory (Status 10) (IO)"; Decimal)
        {
            CalcFormula = Sum("Inventory Overview"."Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                            Status = FIELD("Inventory Status Filter 10"),
                                                                            "Location Code" = FIELD("Location Filter"),
                                                                            "Bin Code" = FIELD("Bin Filter")));
            Caption = 'Inventory (Status 10)';
            DecimalPlaces = 0 : 5;
            Description = '#QM6.00.03:R460,#QMW17.10.00.02:T509';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034663; "Whse. Qty. Shipped (Base)"; Decimal)
        {
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Shipped (Base)" WHERE("Item No." = FIELD("No."),
                                                                                     "Location Code" = FIELD("Location Filter"),
                                                                                     "Variant Code" = FIELD("Variant Filter"),
                                                                                     "Due Date" = FIELD("Date Filter")));
            Caption = 'Whse. Qty. Shipped (Base)';
            DecimalPlaces = 0 : 5;
            Description = '#QMW17.00.00.01:T503';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072450; "Item Type"; Option)
        {
            Caption = 'Item Type';
            Description = '#RENW16.00.01:R059';
            OptionCaption = 'Item,Machine,Supplementary Part,Machine Component';
            OptionMembers = Item,Machine,"Supplementary Part","Machine Component";
        }
        field(5072650; "Rent Item"; Option)
        {
            Caption = 'Rent Item';
            Description = '#RENW16.00:10-001';
            OptionCaption = 'No,Yes';
            OptionMembers = No,Yes;
        }
        field(5072651; "Service Item for SN needed"; Boolean)
        {
            Caption = 'Service Item for SN needed';
            Description = '#RENW16.00:10-001';
        }
        field(5171652; "Scan Instruction"; Code[20])
        {
            Caption = 'Scan Instruction';
            Description = 'CSC8.00';
            TableRelation = "Scan Instruction".Code WHERE(Type = CONST(Item));
        }
        field(5171653; Scanoption; Option)
        {
            Caption = 'Scanoption';
            Description = 'CSC8.00';
            OptionCaption = ' ,normal,Quantity Input,Itemtracking';
            OptionMembers = " ",normal,Mengeneingabe,Artikelverfolgung;
        }
        field(5171654; "Scan Rule"; Code[20])
        {
            Caption = 'Scanregel';
            Description = 'CSC8.00';
            TableRelation = "Scan Rules";
        }
        field(5172102; "Item Commission Group"; Code[10])
        {
            Caption = 'Item Commission Group';
            Description = ':CMIW15.00:41:1';
        }
        field(5292332; "Job Comment"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(27),
                                                               Code1 = FIELD("No.")));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292333; "Job Calculation Group"; Code[10])
        {
            Caption = 'Job Calculation Group';
            Description = 'TR "Job Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(5292334; "Manual Pricing"; Option)
        {
            Caption = 'Manual Pricing';
            Description = ' ,Direct Unit Cost,Unit Price,Both';
            OptionCaption = ' ,Direct Unit Cost,Unit Price,Both';
            OptionMembers = " ","Direct Unit Cost","Unit Price",Both;
        }
        field(5292335; "Procurement Cost Source"; Option)
        {
            Caption = 'Procurement Cost Source';
            Description = ' ,Standard Costs,Job Line,Procurement Line';
            OptionCaption = ' ,Standard Costs,Job Line,Procurement Line';
            OptionMembers = " ","Standard Costs","Job Line","Procurement Line";
        }
        field(5292336; "Procurement Channel"; Option)
        {
            Caption = 'Procurement Channel';
            Description = ' ,...,,Quote,Requisition,Order,Inventory Request,Production Order,Service Order';
            OptionCaption = ' ,...,,Quote,Requisition,Order,Inventory Request,Production Order,Service Order';
            OptionMembers = " ","...",,Quote,Requisition,"Order","Inventory Request","Production Order","Service Order";
        }
        field(5292337; "Procurement Document only"; Boolean)
        {
            Caption = 'Procurement Info Line';
        }
        field(5292338; "Shipment Channel"; Option)
        {
            Caption = 'Shipment Channel';
            Description = ' ,...,Structure Position,Job Line,Posted Item';
            OptionCaption = ' ,...,Structure Position,Job Line,Posted Item';
            OptionMembers = " ","...","Structure Position","Job Line","Posted Item";
        }
        field(5292339; "Realized % (Base)"; Option)
        {
            Caption = 'Realized % (Base)';
            Description = ' ,Quantity,Cost';
            OptionCaption = ' ,Quantity,Cost';
            OptionMembers = " ",Quantity,Cost;
        }
        field(5292340; "Component Type"; Code[10])
        {
            Caption = 'Component Type';
            Description = 'TR "Component Type"';
            TableRelation = "PR - Component Type";
        }
        field(5292341; "Component Group 1 No."; Integer)
        {
            Caption = 'Component Group 1 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292342; "Component Group 2 No."; Integer)
        {
            Caption = 'Component Group 2 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292343; "Component Group 3 No."; Integer)
        {
            Caption = 'Component Group 3 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292344; "Component Group 4 No."; Integer)
        {
            Caption = 'Component Group 4 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292345; "Component Group 5 No."; Integer)
        {
            Caption = 'Component Group 5 No.';
            Description = 'TR "Component Group"';
            TableRelation = "PR - Component Group";
        }
        field(5292346; "Component Group 1 Code"; Code[10])
        {
            CalcFormula = Lookup("PR - Component Group".Code WHERE("Entry No." = FIELD("Component Group 1 No.")));
            Caption = 'Component Group 1 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292347; "Component Group 2 Code"; Code[10])
        {
            CalcFormula = Lookup("PR - Component Group".Code WHERE("Entry No." = FIELD("Component Group 2 No.")));
            Caption = 'Component Group 2 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292348; "Component Group 3 Code"; Code[10])
        {
            CalcFormula = Lookup("PR - Component Group".Code WHERE("Entry No." = FIELD("Component Group 3 No.")));
            Caption = 'Component Group 3 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292349; "Component Group 4 Code"; Code[10])
        {
            CalcFormula = Lookup("PR - Component Group".Code WHERE("Entry No." = FIELD("Component Group 4 No.")));
            Caption = 'Component Group 4 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292350; "Component Group 5 Code"; Code[10])
        {
            CalcFormula = Lookup("PR - Component Group".Code WHERE("Entry No." = FIELD("Component Group 5 No.")));
            Caption = 'Component Group 5 Code';
            Description = 'LU "Component Group"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292351; "Qty. on Inv. Requests"; Decimal)
        {
            CalcFormula = Sum("Job Journal Line"."Outstanding Qty. (Base)" WHERE(Type = CONST(Item),
                                                                                  "No." = FIELD("No."),
                                                                                  "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                  "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                  "Location Code" = FIELD("Location Filter"),
                                                                                  "Variant Code" = FIELD("Variant Filter"),
                                                                                  "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Inv. Requests';
            DecimalPlaces = 0 : 5;
            Description = 'CF "Job Journal Line"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292352; "Procurement by Job Order"; Boolean)
        {
            Caption = 'Procurement by Job Order';
        }
        field(5292353; "Job Calc. Direct Cost"; Decimal)
        {
            Caption = 'Job Calc. Direct Cost';
        }
        field(5292650; "Split Demand (PaC)"; Boolean)
        {
            Caption = 'Split Demand (PaC)';
        }
        field(5292750; "Process Channel"; Option)
        {
            Caption = 'Process Channel';
            Description = ' ,Work,Lead time,Structure';
            OptionCaption = ' ,Work,Lead time,Structure';
            OptionMembers = " ",Work,"Lead time",Structure;
        }
        field(99000750; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header";
        }
        field(99000751; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            Description = ':PMW14.01.00.01:23:1';
            TableRelation = "Production BOM Header" WHERE("Production BOM Type" = FIELD("Production BOM Type"));
        }
        field(99000752; "Single-Level Material Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Single-Level Material Cost';
            Editable = false;
        }
        field(99000753; "Single-Level Capacity Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Single-Level Capacity Cost';
            Editable = false;
        }
        field(99000754; "Single-Level Subcontrd. Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Single-Level Subcontrd. Cost';
            Editable = false;
        }
        field(99000755; "Single-Level Cap. Ovhd Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Single-Level Cap. Ovhd Cost';
            Editable = false;
        }
        field(99000756; "Single-Level Mfg. Ovhd Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Single-Level Mfg. Ovhd Cost';
            Editable = false;
        }
        field(99000757; "Overhead Rate"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            AutoFormatType = 2;
            Caption = 'Overhead Rate';
        }
        field(99000758; "Rolled-up Subcontracted Cost"; Decimal)
        {
            AccessByPermission = TableData "Production Order" = R;
            AutoFormatType = 2;
            Caption = 'Rolled-up Subcontracted Cost';
            Editable = false;
        }
        field(99000759; "Rolled-up Mfg. Ovhd Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Rolled-up Mfg. Ovhd Cost';
            Editable = false;
        }
        field(99000760; "Rolled-up Cap. Overhead Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Rolled-up Cap. Overhead Cost';
            Editable = false;
        }
        field(99000761; "Planning Issues (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Planning Component"."Expected Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                                     "Due Date" = FIELD("Date Filter"),
                                                                                     "Location Code" = FIELD("Location Filter"),
                                                                                     "Variant Code" = FIELD("Variant Filter"),
                                                                                     "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                     "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                     "Planning Line Origin" = CONST(" ")));
            Caption = 'Planning Issues (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000762; "Planning Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Requisition Line"."Quantity (Base)" WHERE(Type = CONST(Item),
                                                                          "No." = FIELD("No."),
                                                                          "Due Date" = FIELD("Date Filter"),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter")));
            Caption = 'Planning Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000765; "Planned Order Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Qty. (Base)" WHERE(Status = CONST(Planned),
                                                                                "Item No." = FIELD("No."),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Due Date" = FIELD("Date Filter")));
            Caption = 'Planned Order Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000766; "FP Order Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Qty. (Base)" WHERE(Status = CONST("Firm Planned"),
                                                                                "Item No." = FIELD("No."),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Due Date" = FIELD("Date Filter")));
            Caption = 'FP Order Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000767; "Rel. Order Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Qty. (Base)" WHERE(Status = CONST(Released),
                                                                                "Item No." = FIELD("No."),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Due Date" = FIELD("Date Filter")));
            Caption = 'Rel. Order Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000768; "Planning Release (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Requisition Line"."Quantity (Base)" WHERE(Type = CONST(Item),
                                                                          "No." = FIELD("No."),
                                                                          "Starting Date" = FIELD("Date Filter"),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter")));
            Caption = 'Planning Release (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000769; "Planned Order Release (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Qty. (Base)" WHERE(Status = CONST(Planned),
                                                                                "Item No." = FIELD("No."),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Starting Date" = FIELD("Date Filter")));
            Caption = 'Planned Order Release (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000770; "Purch. Req. Receipt (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Requisition Line"."Quantity (Base)" WHERE(Type = CONST(Item),
                                                                          "No." = FIELD("No."),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                          "Due Date" = FIELD("Date Filter"),
                                                                          "Planning Line Origin" = CONST(" ")));
            Caption = 'Purch. Req. Receipt (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000771; "Purch. Req. Release (Qty.)"; Decimal)
        {
            CalcFormula = Sum("Requisition Line"."Quantity (Base)" WHERE(Type = CONST(Item),
                                                                          "No." = FIELD("No."),
                                                                          "Location Code" = FIELD("Location Filter"),
                                                                          "Variant Code" = FIELD("Variant Filter"),
                                                                          "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                          "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                          "Order Date" = FIELD("Date Filter")));
            Caption = 'Purch. Req. Release (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000773; "Order Tracking Policy"; Option)
        {
            Caption = 'Order Tracking Policy';
            OptionCaption = 'None,Tracking Only,Tracking & Action Msg.';
            OptionMembers = "None","Tracking Only","Tracking & Action Msg.";
        }
        field(99000774; "Prod. Forecast Quantity (Base)"; Decimal)
        {
            CalcFormula = Sum("Production Forecast Entry"."Forecast Quantity (Base)" WHERE("Item No." = FIELD("No."),
                                                                                            "Production Forecast Name" = FIELD("Production Forecast Name"),
                                                                                            "Forecast Date" = FIELD("Date Filter"),
                                                                                            "Location Code" = FIELD("Location Filter"),
                                                                                            "Component Forecast" = FIELD("Component Forecast")));
            Caption = 'Prod. Forecast Quantity (Base)';
            DecimalPlaces = 0 : 5;
            FieldClass = FlowField;
        }
        field(99000775; "Production Forecast Name"; Code[10])
        {
            Caption = 'Production Forecast Name';
            FieldClass = FlowFilter;
            TableRelation = "Production Forecast Name";
        }
        field(99000776; "Component Forecast"; Boolean)
        {
            Caption = 'Component Forecast';
            FieldClass = FlowFilter;
        }
        field(99000777; "Qty. on Prod. Order"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Qty. (Base)" WHERE(Status = FILTER(Planned .. Released),
                                                                                "Item No." = FIELD("No."),
                                                                                "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                "Location Code" = FIELD("Location Filter"),
                                                                                "Variant Code" = FIELD("Variant Filter"),
                                                                                "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Prod. Order';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000778; "Qty. on Component Lines"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Remaining Qty. (Base)" WHERE(Status = FILTER(Planned .. Released),
                                                                                     "Item No." = FIELD("No."),
                                                                                     "Shortcut Dimension 1 Code" = FIELD("Global Dimension 1 Filter"),
                                                                                     "Shortcut Dimension 2 Code" = FIELD("Global Dimension 2 Filter"),
                                                                                     "Location Code" = FIELD("Location Filter"),
                                                                                     "Variant Code" = FIELD("Variant Filter"),
                                                                                     "Due Date" = FIELD("Date Filter")));
            Caption = 'Qty. on Component Lines';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(99000875; Critical; Boolean)
        {
            Caption = 'Critical';
        }
        field(99008500; "Common Item No."; Code[20])
        {
            Caption = 'Common Item No.';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; "Inventory Posting Group")
        {
        }
        key(Key4; "Shelf No.")
        {
        }
        key(Key5; "Vendor No.")
        {
        }
        key(Key6; "Gen. Prod. Posting Group")
        {
        }
        key(Key7; "Low-Level Code")
        {
        }
        key(Key8; "Production BOM No.")
        {
        }
        key(Key9; "Routing No.")
        {
        }
        key(Key10; "Vendor Item No.", "Vendor No.")
        {
        }
        key(Key11; "Common Item No.")
        {
        }
        key(Key12; "Service Item Group")
        {
        }
        key(Key13; "Cost is Adjusted", "Allow Online Adjustment")
        {
        }
        key(Key14; Description)
        {
        }
        key(Key15; "Base Unit of Measure")
        {
        }
        key(Key16; Type)
        {
        }
        key(Key17; "Component Group 1 No.", "Component Group 2 No.", "Component Group 3 No.", "Component Group 4 No.", "Component Group 5 No.")
        {
        }
        key(Key18; "Component Type")
        {
        }
        key(Key19; "Base Trading Unit Item No.")
        {
        }
        key(Key20; "Item Commission Group")
        {
        }
        key(Key21; "Item Type", "No.")
        {
        }
        key(Key22; "PDB Item")
        {
        }
        key(Key23; "Created from Prototype")
        {
        }
        key(Key24; "No. 2")
        {
        }
        key(Key25; Blocked, "Stand.Lagerort", "Lager RMD", "Last Date Modified")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Base Unit of Measure", "Unit Price")
        {
        }
        fieldgroup(Brick; "No.", Description, Inventory, "Unit Price", "Base Unit of Measure", "Description 2")
        {
        }
    }
}

