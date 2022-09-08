table 37 "Sales Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // FA   01.01.17   Fixed Asset
    //                 - New Field added
    // -----------------------------------------------------
    // P0040 26.04.16 DEBIE.ARE New field 50007 "Line Gross Weight"
    // P0007 18.04.16 DEBIE.ARE New fields 50005 Frachtkosten and 50006
    // P0040 18.04.16 DEBIE.ARE Check Sales Order Status by Create Production Orders
    // P0029 29.03.16 DEBIE.ARE New field 50002 "Creation Date"
    // P0032 22.03.16 DEBIE.NNE New field 50001 "Salesperson Code". Type / No. - OnValidate() changed.
    // P0001 29.02.16 DEBIE.ARE Copy "Stand.Lagerort"
    // P0008 24.02.16 DEBIE.ARE New fields 50012 "Position", 50030 "Qty. to Shipment", 50151 "PZ drucken".
    //   New functions AutomCalcPosNo, SetCalcAllLinesForDisc. Function X changed
    // P0003 18.02.16 DEBIE.ARE Update "Drop Shipment". New field 50000 "Proportion of freight"
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - Job No.,Job Line Unique No.,Document Type,,Document No.
    //                                     - Job No.,Document Type,Type,No.,Variant Code,Drop Shipment,Location Code,Shipment Date
    // 
    // #PRW19.00:T101 02.10.15 DEMSR.KHS
    //   Function "GetDate" set to Local = No
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        CaptionML(ENU/DEU) of Field "Main Job No." renamed from
    //                                        - "Main Job No." to "Project No."
    // AM01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|alloy management
    // PRBQ01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|boq manager
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Delete related calculations
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #NAV20100:A1004 02.05.07 DEWUE.SE
    //   Integration Test Plan Matrix
    //   added Field "Create Test Order Rcpt./Shpt."
    // 
    // #NAV20100:A1017 20.08.07 DEWUE.SE
    //   Field "No. of Units" added
    // 
    // #QMW16.00.01:R001 19.11.09 DEMSR.KHS
    //   Customer / Item Specification tables
    // 
    // #QMW16.00.03:R471 11.07.11 DEMSR.KHS
    //   Add function "CreateTestPlanSetup"
    //   New Field: "Specific Test Plan Setup exist"
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #QMW17.00.00.02:T101 14.05.13 DEMSR.KHS
    //   Control IDs corrected
    // 
    // #QMW17.10.00.02:T104 18.02.14 DEMSR.KHS
    //   Combine Test Order Creation
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.01:T101 08.05.15 DEMSR.KHS
    //   Add 8D Report
    // 
    // #QMW18.00.01:T103 08.05.15 DEMSR.KHS
    //   Add function "ShowTestIncident"
    // 
    // #QMW18.00.01:T105 02.07.15 DEMSR.KHS
    //   Retain Sample Quantity added
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T112 24.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    // 
    // :PMW14.00:2473:1
    //   # New field 5012530 "Delivery Tolerance Code"
    //   # New function "CheckDeliveryTolerance"
    //   # New function "DeleteDeliveryToleranceEntry"
    //   # No. - OnValidate, Übernahme "Sales Delivery Tolerance Code" aus Artikel
    //   # Qty. to Ship - OnValidate, call "CheckDeliveryTolerance"
    //   # OnDelete, call "DeleteDeliveryToleranceEntry"
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   # Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:90:1
    //   # New function "CheckTrdgUnitCode"
    //   # Unit of Measure Code - OnValidate, call function "CheckTrdgUnitCode"
    // 
    // :PMW14.02:53:1
    //   # New field 5012400 "Returnable Container"
    //   # No. - OnValidate, tansfer "Returnable Container" from Item
    //   # Qty. to Invoice - OnValidate, "Returnable Container" must be false
    //   # Qty. to Invoice (Base) - OnValidate, "Returnable Container" must be false
    //   # Function "InitQtyToInvoice", init quantity depend on "Returnable Container"
    // 
    // :PMW14.02.01:57:1
    //   # Correction of trading item UOM handling
    // 
    // :PMW14.02.01:89:1
    //   # Correction of Unit Price calculation for returnable container
    // 
    // TRDGUNITITEM:PMW15.00:205:1
    //   # Restore Base Trading Unit
    // 
    // CALC:PMW15.01:75:1
    //   # Delete related calculations
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation programming rearranged --> #CAW16.00:T100
    // 
    // #PMW16.00.02:T250 13.10.10 DEMSR.KHS
    //   Restricted Sales
    //   Item Contingent Handling:
    //     New Field 5012583 Sell-to Contact No.
    //     New Field 5012584 Contingent Type
    //     New key: Document Type,Sell-to Customer No.,Type,No.,Shipment Date,
    //              Contingent type  SumIndexField: Outstanding Qty. (Base)
    // 
    // #PMW16.00.02.01:T501 06.12.10 DEMSR.KHS
    //   Check License Permission
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T108 13.05.14 DEMSR.LV
    //   Expiration Date in Blanket Order
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T512 25.09.14 DEMSR.IST
    //   Correction of Expiration Date in Blanket Order
    // 
    // #PMW18.00.00.05:T505 22.05.15 DEMSR.KHS
    //   Fix multiple and incorrect Contingent Shipment message
    // 
    // #CMIW16.00.01:101 30.11.09 DEMSR.IST
    //   New function "ShowSalesLineCommissionRates"
    //   OnDelete, delete Sales Line Commission Rates
    // 
    // #CMIW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW16.00:10-001     04.05.09 DEMSR.KHS
    //   Key extended by "Rental Postition", New Fields for Rental
    // 
    // #RENW16.00:10-002     09.06.09 DEMSR.KHS
    //   Avoid price change message if Rate Code is not filled yet
    // 
    // #RENW16.00.00.01:T501 06.07.09 DEMSR.KHS
    //   Update Total Price Calculation
    // 
    // #RENW16.00.00.01:T518 13.07.09 DEMSR.KHS
    //   Rental Start Date and Rental End Date must not be changed if invoiced
    // 
    // #RENW16.00.00.02:T301 22.07.09 DEMSR.KHS
    //   Add Price History function and calculate Total Price new
    // 
    // #RENW16.00.01:R052    23.09.09 DEMSR.KHS
    //   Rental Reservation
    // 
    // #RENW16.00.01:R053    07.10.09 DEMSR.KHS
    //   Rate Parts
    // 
    // #RENW16.00.01:R054    04.10.09 DEMSR.KHS
    //   Rental Exchange
    // 
    // #RENW16.00.01:R119    06.10.09 DEMSR.KHS
    //   Sales from Rental
    // 
    // #RENW16.00.01:R087    15.10.09 DEMSR.KHS
    //   Checklist Templates for Machine Types
    // 
    // #RENW16.00.01:R086    19.10.09 DEMSR.KHS
    //   Calendar Code for Rental Invoicing
    // 
    // #RENW16.00.01:R065    20.10.09 DEMSR.KHS
    //   Operation Counters
    // 
    // #RENW16.00.01:R055    29.10.09 DEMSR.KHS
    //   3rd Party Rental
    // 
    // #RENW16.00.01:T503    10.11.09 DEMSR.KHS
    //   No copy of rental fields to document lines
    // 
    // #RENW16.00.01.02:T501 25.03.10 DEMSR.KHS
    //   Missing Prices for Rate Parts
    // 
    // #RENW16.00.01.03:T503 04.06.10 DEMSR.KHS
    //   Field Rental Rate too small
    // 
    // #RENW16.00.02:R062 27.08.10 DEMSR.KHS
    //   Connecting Machines to Fixed Assets
    //   New Fields: "Item Fixed Asset Sale"
    //               "Item Fixed Asset No."
    //   New functions: "CheckFixedAssetSerialNo"
    //                  "MachGetFAPostingGroup"
    //                  "FAOnValidate"
    // 
    // #RENW16.00.02:R154 18.10.10 DEMSR.KHS
    //   Sales Leasing
    //   New field: "Leasing"
    //   New function: "SetCalledFromLeasing"
    // 
    // #RENW17.00:T502 02.11.12 DEMSR.KHS
    //   Update "Qty. to Ship" on Transfer Orders
    // 
    // #RENW17.00:T102 12.04.12 DEMSR.KHS
    //   Updated for NAV 2013
    // 
    // #RENW17.00:T201 07.02.13 DEMSR.KHS
    //   Add License Checks
    // 
    // #RENW17.00:T501 30.07.12 DEMSR.KHS
    //   CalcTotalAmount changed for Return / Change
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.00.00.02:T101 29.05.13 DEMSR.KHS
    //   Update Object IDs
    // 
    // #RENW17.00.00.03:T506 02.07.13 DEMSR.KHS
    //   Fix Error message on entering Quantity in a RO:
    //   Move creation of Transfer Orders after Availability Check
    // 
    // #RENW17.00.00.03:T508 06.08.13 DEMSR.KHS
    //   No Change of Qty. if Invoice is posted
    // 
    // #RENW17.00.00.04:T501 25.09.13 DEMSR.KHS
    //   Line Amount was calculated incorrectly
    // 
    // #RENW17.10.00.01:T504 09.12.13 DEMSR.KHS
    //   Do not use Rent Sales Lines for Demand
    // 
    // #RENW17.10.00.01:T506 10.12.13 DEMSR.KHS
    //   Add Source Code Rental Management
    // 
    // #RENW17.10.00.01:T512 15.01.14 DEMSR.KHS
    //   Fix error message on return of subsets
    // 
    // #RENW17.10.00.01:T514 16.01.14 DEMSR.KHS
    //   Fix error with Total Price when not Rental End Date exists
    // 
    // #RENW17.10.00.02:T501 21.01.14 DEMSR.KHS
    //   Update Manual Components
    // 
    // #RENW17.10.00.02:T506 06.03.14 DEMSR.KHS
    //   Fix missing Line Discount Amount
    // 
    // #RENW17.10.00.02:T512 11.03.14 DEMSR.KHS
    //   Update Line Discount % on Contract
    // 
    // #RENW17.10.00.02:T101 19.03.14 DEMSR.KHS
    //   Add Intermediate One-Time Invoicing
    // 
    // #RENW17.10.00.02:T513 21.03.14 DEMSR.KHS
    //   Update License Checks
    // 
    // #RENW17.10.00.02:T528 03.06.14 DEMSR.KHS
    //   Update Line Amount for Rental
    //     Reactivate Standard Code for Line Amount usage
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW17.10.01.01:T500 26.11.14 DEMSR.KHS
    //   Add Change for Line Discount
    // 
    // #RENW18.00.00.03:T501 24.02.15 DEMSR.KHS
    //   Correct related field lengths
    // 
    // #RENW18.00.00.05:T101 29.05.15 DEMSR.KHS
    //   Update Customer Statistics
    // 
    // :DMW13.60:1:02 #Feld Checklisten einfügen
    // :DMW13.60:1:03 #Feld Belegstückliste eingefügt
    //  # Wenn Menge sich ändert, müssen die Mengen der Stückliste ebenfalls geändert werden.
    //  # Maße zur Verkaufszeile einfügen, bzw. löschen
    // :DMW13.60:1:04 #neues Feld FaktorBasisZeileZuMasterBOM
    // :DMW13.60:1:05 #Feld Unit Price (LCY) angelegt
    //  # Feld Kalkulationsgruppe angelegt
    //  # Feld geh. zu Kalk.option leer angelegt
    // :DMW13.60:1:06 #Feld Menge geb. Fertigerzeugnis eingefügt
    // :DMW13.60.02:1:01 #Maße übertragen (Programmierung von Formular in Tabelle übertragen)
    // 
    // :DMW13.70.01:1:01 #neues Feld: 5013030 "Document BOM No." wegen PK-Änderung der Belegstückliste
    //  # neuer Key angelegt: "Document BOM No."
    // :DMW13.70.01:1:02 #Checkliste und Belegstückliste werden nicht mehr gelöscht, wenn die Zeile gelöscht bzw. neu aufgebaut wird
    // :DMW13.70.01:1:03 #neues Feld: 5013040 Bedarfsrelevant für Bedarfssteuerung beim CTO-Durchlauf
    //  # neuer Key: "Document Type","Type,No.","Variant Code","Drop Shipment","Shortcut Dimension 1 Code",
    //  #            "Shortcut Dimension 2 Code","Location Code","Shipment Date",Bedarfsrelevant
    // :DMW14.00:1:01 #  neue Felder für Terminierung: 5013700,5013710,5013720,5013730,5013740,5013743,5013746,5013750,5013760
    //                #  LookUp-Programmierung geändert
    // :DMW14.02:1:01 #  Maße und Auftragsterminplan auch löschen im OnDelete-Trigger
    // :DMW14.03:1:01 #  neuen Key angelegt: "Checklist No."
    //  # Checklistenkalkulation angebunden
    // :DMW14.03:1:02 #  TableRelation in Feld "Calculation Group" angepasst
    // :DMW14.04:1:01 #  programming code transfered in Codeunit
    // :DMW14.04:1:02 #  Delete Construction Order
    // :DMW14.04:1:03 #  init "Ending Date" with the "Shipment Date"
    // :DMW14.04:1:04 #  Due-Fields deleted, because they are out of use
    // :DMW14.04:12:01 # Field "Document BOM No." not editable
    // PRODVIEW:DMW15.01:14:01 #New field for Production View
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // :DMW15.01:26:01 #New PrimaryKey in table Attribute
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #Deleted double Variable
    // :DMW15.02:6:01 #If "Document BOM No." is empty, don't open the LookUp
    // :DMW15.02:6:02 #If Type <> Item, don't save "Checklist No." and "Document No."
    // :DMW15.02:70:01 #If a Sales Line will be deleted, delete the link to Document Calculation, too.
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // :DMW16.00.00.01:6:01 #On SQL-server an error could appear if the Document BOM will be opened the first time.
    // :DMW16.00.00.02:24:01 #Sales Line was still filtered when new calculation were created
    // :DMW16.00.00.02:24:02 #When Sales Line got deleted, the Document BOM must be deleted, too.
    // :DMW16.00.01:79:01 #Replace Extended Text Box with Text Module
    // :DMW16.00.01.01:73:01 #Possible Error when changing No. and Credit-Limit-Warning appears
    // :DMW16.00.02:T101 11.10.10 DEMSR.SSZ
    //   #Get "Main Location Code" from Item Card, if it's not empty
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // #DMW16.00.02:T103 20.10.10 DEMSR.SSZ
    //   #Function got new parameter
    // 
    // #DMW16.00.02:T114 10.11.10 DEMSR.SSZ
    //   #Deleted "old" CTO Calculation
    //   #Transfer Calculation when Document BOM/Construction Order gets created
    // #DMW16.00.02.03:A0004 30.06.11 DEMSR.SSZ
    //   #Test license of Calculation
    // #DMW16.00.03:A002  15.09.2011 DEMSR.SSZ
    //   #When change Global Dimension then update Construction Order
    // #DMW16.00.03:A004 20.09.11 DEMSR.SSZ
    //   #When creating a new Document BOM, set "Order Tracking Relevant" to TRUE immediately
    //   #Renamed field 5013040 from "Order Tracking Relevance" to "Components Tracking Relevance" to resolve misunderstanding
    // #DMW16.00.03:T012 18.10.11 DEMSR.SSZ
    //   #Splitting a Sales Line
    // #DMW16.00.03.01:A007 17.11.11 DEMSR.SSZ
    //   #Deleted no longer used field: 5013211 "Belongs to Calc.option blank"
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW16.00.03.03:A020 11.05.12 DEMSR.SSZ
    //   #Copy Checklist when Variant Code gets inserted
    // #DMW17.00:A001 18.05.12 DEMSR.SSZ
    //   #Management of demands
    //   #Redesigned programm for splitting Sales Lines (#DMW16.00.03:T012)
    //   #completed transfering of ShortCutDim to Construction (#DMW16.00.03:A002)
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10:T103 29.10.13 DEMSR.SSZ
    //   #Only items with Type=Inventory are allowed to get a Document BOM/Construction Order/Create Prod. Order/use CAD
    // #DMW17.10.00.02:T502 24.01.14 DEMSR.SSZ
    //   #Deleted field 5013500 only in W1 database, because Advance Payment is only available in DACH database.
    // #DMW17.10.00.02:T509 20.05.14 DEMSR.SSZ
    //   #Check License Permissions
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders: new field 5013810
    // #DMW17.10.01:T104 01.10.14 DEMSR.SSZ
    //   #Open Checklist immediately when they are marked and inserted (new function used ina pages)
    // #DMW18.00.00.02:T500 04.03.15 DEMSR.SSZ
    //   #Deleted function LookUpAttributes
    // #DMW18.00.01:T501 19.05.15 DEMSR.SSZ
    //   #Renamed field 5013810: "Number of ..." to "No. of ..."
    // 
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW18.00.00.01:T500 09.03.2015 DEMSR.SSZ - Some code was lost when upgrading to CU3
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List
    // 
    // #FDW19.00.00.01:T500 11.11.15 DEDRS.WHEG
    //   Removed FD Demo Integration from AMP NAV 2016
    // 
    // CC01 14.03.2022 DEMUE.NR # Set "Print on Slip"

    Caption = 'Sales Line';
    PasteIsValid = false;

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,,,,,,Reservation';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,,,,,,Reservation;
        }
        field(2; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No." WHERE("Document Type" = FIELD("Document Type"));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(6; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST("G/L Account"),
                                     "System-Created Entry" = CONST(false)) "G/L Account" WHERE("Direct Posting" = CONST(true),
                                                                                               "Account Type" = CONST(Posting),
                                                                                               Blocked = CONST(false))
            ELSE
            IF (Type = CONST("G/L Account"),
                                                                                                        "System-Created Entry" = CONST(true)) "G/L Account"
            ELSE
            IF (Type = CONST(Item),
                                                                                                                 "Rental Position" = CONST(Sales)) Item
            ELSE
            IF (Type = CONST(Item),
                                                                                                                          "Rental Position" = CONST(Rental)) Item WHERE("Rent Item" = CONST(Yes))
            ELSE
            IF (Type = CONST(Resource)) Resource
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF (Type = CONST("Charge (Item)")) "Item Charge";
        }
        field(7; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = IF ("Rental Position" = CONST(Sales)) Location WHERE("Use As In-Transit" = CONST(false))
            ELSE
            IF ("Rental Position" = CONST(Rental)) Location WHERE("Use As Rental Location" = CONST(true));
        }
        field(8; "Posting Group"; Code[10])
        {
            Caption = 'Posting Group';
            Editable = false;
            TableRelation = IF (Type = CONST(Item)) "Inventory Posting Group"
            ELSE
            IF (Type = CONST("Fixed Asset")) "FA Posting Group";
        }
        field(10; "Shipment Date"; Date)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Shipment Date';
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(13; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(16; "Outstanding Quantity"; Decimal)
        {
            Caption = 'Outstanding Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(17; "Qty. to Invoice"; Decimal)
        {
            Caption = 'Qty. to Invoice';
            DecimalPlaces = 0 : 5;
        }
        field(18; "Qty. to Ship"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Qty. to Ship';
            DecimalPlaces = 0 : 5;
        }
        field(22; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(23; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
        }
        field(25; "VAT %"; Decimal)
        {
            Caption = 'VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(27; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(28; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
        }
        field(29; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Editable = false;
        }
        field(30; "Amount Including VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Including VAT';
            Editable = false;
        }
        field(32; "Allow Invoice Disc."; Boolean)
        {
            Caption = 'Allow Invoice Disc.';
            InitValue = true;
        }
        field(34; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DecimalPlaces = 0 : 5;
        }
        field(35; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
        }
        field(36; "Units per Parcel"; Decimal)
        {
            Caption = 'Units per Parcel';
            DecimalPlaces = 0 : 5;
        }
        field(37; "Unit Volume"; Decimal)
        {
            Caption = 'Unit Volume';
            DecimalPlaces = 0 : 5;
        }
        field(38; "Appl.-to Item Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Appl.-to Item Entry';
        }
        field(40; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(41; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(42; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            Editable = false;
            TableRelation = "Customer Price Group";
        }
        field(45; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Editable = false;
            TableRelation = Job;
        }
        field(52; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(56; "Recalculate Invoice Disc."; Boolean)
        {
            Caption = 'Recalculate Invoice Disc.';
            Editable = false;
        }
        field(57; "Outstanding Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Outstanding Amount';
            Editable = false;
        }
        field(58; "Qty. Shipped Not Invoiced"; Decimal)
        {
            Caption = 'Qty. Shipped Not Invoiced';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(59; "Shipped Not Invoiced"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Shipped Not Invoiced';
            Editable = false;
        }
        field(60; "Quantity Shipped"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Quantity Shipped';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(61; "Quantity Invoiced"; Decimal)
        {
            Caption = 'Quantity Invoiced';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(63; "Shipment No."; Code[20])
        {
            Caption = 'Shipment No.';
            Editable = false;
        }
        field(64; "Shipment Line No."; Integer)
        {
            Caption = 'Shipment Line No.';
            Editable = false;
        }
        field(67; "Profit %"; Decimal)
        {
            Caption = 'Profit %';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(68; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            Editable = false;
            TableRelation = Customer;
        }
        field(69; "Inv. Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Discount Amount';
            Editable = false;
        }
        field(71; "Purchase Order No."; Code[20])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Purchase Order No.';
            Editable = false;
            TableRelation = IF ("Drop Shipment" = CONST(true)) "Purchase Header"."No." WHERE("Document Type" = CONST(Order));
        }
        field(72; "Purch. Order Line No."; Integer)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Purch. Order Line No.';
            Editable = false;
            TableRelation = IF ("Drop Shipment" = CONST(true)) "Purchase Line"."Line No." WHERE("Document Type" = CONST(Order),
                                                                                               "Document No." = FIELD("Purchase Order No."));
        }
        field(73; "Drop Shipment"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Drop Shipment';
            Editable = true;
        }
        field(74; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(75; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(77; "VAT Calculation Type"; Option)
        {
            Caption = 'VAT Calculation Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(78; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(79; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(80; "Attached to Line No."; Integer)
        {
            Caption = 'Attached to Line No.';
            Editable = false;
            TableRelation = "Sales Line"."Line No." WHERE("Document Type" = FIELD("Document Type"),
                                                           "Document No." = FIELD("Document No."));
        }
        field(81; "Exit Point"; Code[10])
        {
            Caption = 'Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(82; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(83; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(84; "Tax Category"; Code[10])
        {
            Caption = 'Tax Category';
        }
        field(85; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(86; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(87; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(88; "VAT Clause Code"; Code[10])
        {
            Caption = 'VAT Clause Code';
            TableRelation = "VAT Clause";
        }
        field(89; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(90; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(91; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(92; "Outstanding Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Outstanding Amount (LCY)';
            Editable = false;
        }
        field(93; "Shipped Not Invoiced (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Shipped Not Invoiced (LCY)';
            Editable = false;
        }
        field(95; "Reserved Quantity"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = - Sum("Reservation Entry".Quantity WHERE("Source ID" = FIELD("Document No."),
                                                                   "Source Ref. No." = FIELD("Line No."),
                                                                   "Source Type" = CONST(37),
                                                                   "Source Subtype" = FIELD("Document Type"),
                                                                   "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(96; Reserve; Option)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(97; "Blanket Order No."; Code[20])
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Blanket Order No.';
            TableRelation = "Sales Header"."No." WHERE("Document Type" = CONST("Blanket Order"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(98; "Blanket Order Line No."; Integer)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            Caption = 'Blanket Order Line No.';
            TableRelation = "Sales Line"."Line No." WHERE("Document Type" = CONST("Blanket Order"),
                                                           "Document No." = FIELD("Blanket Order No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(99; "VAT Base Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount';
            Editable = false;
        }
        field(100; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            Editable = false;
        }
        field(101; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            Editable = false;
        }
        field(103; "Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount';
        }
        field(104; "VAT Difference"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Difference';
            Editable = false;
        }
        field(105; "Inv. Disc. Amount to Invoice"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Inv. Disc. Amount to Invoice';
            Editable = false;
        }
        field(106; "VAT Identifier"; Code[10])
        {
            Caption = 'VAT Identifier';
            Editable = false;
        }
        field(107; "IC Partner Ref. Type"; Option)
        {
            AccessByPermission = TableData "IC G/L Account" = R;
            Caption = 'IC Partner Ref. Type';
            OptionCaption = ' ,G/L Account,Item,,,Charge (Item),Cross Reference,Common Item No.';
            OptionMembers = " ","G/L Account",Item,,,"Charge (Item)","Cross Reference","Common Item No.";
        }
        field(108; "IC Partner Reference"; Code[20])
        {
            AccessByPermission = TableData "IC G/L Account" = R;
            Caption = 'IC Partner Reference';
        }
        field(109; "Prepayment %"; Decimal)
        {
            Caption = 'Prepayment %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(110; "Prepmt. Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Line Amount';
            MinValue = 0;
        }
        field(111; "Prepmt. Amt. Inv."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amt. Inv.';
            Editable = false;
        }
        field(112; "Prepmt. Amt. Incl. VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amt. Incl. VAT';
            Editable = false;
        }
        field(113; "Prepayment Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepayment Amount';
            Editable = false;
        }
        field(114; "Prepmt. VAT Base Amt."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. VAT Base Amt.';
            Editable = false;
        }
        field(115; "Prepayment VAT %"; Decimal)
        {
            Caption = 'Prepayment VAT %';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(116; "Prepmt. VAT Calc. Type"; Option)
        {
            Caption = 'Prepmt. VAT Calc. Type';
            Editable = false;
            OptionCaption = 'Normal VAT,Reverse Charge VAT,Full VAT,Sales Tax';
            OptionMembers = "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
        }
        field(117; "Prepayment VAT Identifier"; Code[10])
        {
            Caption = 'Prepayment VAT Identifier';
            Editable = false;
        }
        field(118; "Prepayment Tax Area Code"; Code[20])
        {
            Caption = 'Prepayment Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(119; "Prepayment Tax Liable"; Boolean)
        {
            Caption = 'Prepayment Tax Liable';
        }
        field(120; "Prepayment Tax Group Code"; Code[10])
        {
            Caption = 'Prepayment Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(121; "Prepmt Amt to Deduct"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt Amt to Deduct';
            MinValue = 0;
        }
        field(122; "Prepmt Amt Deducted"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt Amt Deducted';
            Editable = false;
        }
        field(123; "Prepayment Line"; Boolean)
        {
            Caption = 'Prepayment Line';
            Editable = false;
        }
        field(124; "Prepmt. Amount Inv. Incl. VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amount Inv. Incl. VAT';
            Editable = false;
        }
        field(129; "Prepmt. Amount Inv. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt. Amount Inv. (LCY)';
            Editable = false;
        }
        field(130; "IC Partner Code"; Code[20])
        {
            Caption = 'IC Partner Code';
            TableRelation = "IC Partner";
        }
        field(132; "Prepmt. VAT Amount Inv. (LCY)"; Decimal)
        {
            Caption = 'Prepmt. VAT Amount Inv. (LCY)';
            Editable = false;
        }
        field(135; "Prepayment VAT Difference"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepayment VAT Difference';
            Editable = false;
        }
        field(136; "Prepmt VAT Diff. to Deduct"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt VAT Diff. to Deduct';
            Editable = false;
        }
        field(137; "Prepmt VAT Diff. Deducted"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Prepmt VAT Diff. Deducted';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(900; "Qty. to Assemble to Order"; Decimal)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Qty. to Assemble to Order';
            DecimalPlaces = 0 : 5;
        }
        field(901; "Qty. to Asm. to Order (Base)"; Decimal)
        {
            Caption = 'Qty. to Asm. to Order (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(902; "ATO Whse. Outstanding Qty."; Decimal)
        {
            AccessByPermission = TableData "BOM Component" = R;
            BlankZero = true;
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Outstanding" WHERE("Source Type" = CONST(37),
                                                                                  "Source Subtype" = FIELD("Document Type"),
                                                                                  "Source No." = FIELD("Document No."),
                                                                                  "Source Line No." = FIELD("Line No."),
                                                                                  "Assemble to Order" = FILTER(true)));
            Caption = 'ATO Whse. Outstanding Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(903; "ATO Whse. Outstd. Qty. (Base)"; Decimal)
        {
            AccessByPermission = TableData "BOM Component" = R;
            BlankZero = true;
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Outstanding (Base)" WHERE("Source Type" = CONST(37),
                                                                                         "Source Subtype" = FIELD("Document Type"),
                                                                                         "Source No." = FIELD("Document No."),
                                                                                         "Source Line No." = FIELD("Line No."),
                                                                                         "Assemble to Order" = FILTER(true)));
            Caption = 'ATO Whse. Outstd. Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(1001; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            Editable = false;
            TableRelation = "Job Task"."Job Task No." WHERE("Job No." = FIELD("Job No."));
        }
        field(1002; "Job Contract Entry No."; Integer)
        {
            AccessByPermission = TableData Job = R;
            Caption = 'Job Contract Entry No.';
            Editable = false;
        }
        field(1300; "Posting Date"; Date)
        {
            CalcFormula = Lookup("Sales Header"."Posting Date" WHERE("Document Type" = FIELD("Document Type"),
                                                                      "No." = FIELD("Document No.")));
            Caption = 'Posting Date';
            FieldClass = FlowField;
        }
        field(1700; "Deferral Code"; Code[10])
        {
            Caption = 'Deferral Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(1702; "Returns Deferral Start Date"; Date)
        {
            Caption = 'Returns Deferral Start Date';
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(5403; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = IF ("Document Type" = FILTER(Order | Invoice),
                                Quantity = FILTER(>= 0),
                                "Qty. to Asm. to Order (Base)" = CONST(0)) "Bin Content"."Bin Code" WHERE("Location Code" = FIELD("Location Code"),
                                                                                                         "Item No." = FIELD("No."),
                                                                                                         "Variant Code" = FIELD("Variant Code"))
            ELSE
            IF ("Document Type" = FILTER("Return Order" | "Credit Memo"),
                                                                                                                  Quantity = FILTER(< 0)) "Bin Content"."Bin Code" WHERE("Location Code" = FIELD("Location Code"),
                                                                                                                                                                       "Item No." = FIELD("No."),
                                                                                                                                                                       "Variant Code" = FIELD("Variant Code"))
            ELSE
            Bin.Code WHERE("Location Code" = FIELD("Location Code"));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(5405; Planned; Boolean)
        {
            Caption = 'Planned';
            Editable = false;
        }
        field(5407; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST(Item),
                                "No." = FILTER(<> '')) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Resource),
                                         "No." = FILTER(<> '')) "Resource Unit of Measure".Code WHERE("Resource No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(5415; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5416; "Outstanding Qty. (Base)"; Decimal)
        {
            Caption = 'Outstanding Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5417; "Qty. to Invoice (Base)"; Decimal)
        {
            Caption = 'Qty. to Invoice (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5418; "Qty. to Ship (Base)"; Decimal)
        {
            Caption = 'Qty. to Ship (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5458; "Qty. Shipped Not Invd. (Base)"; Decimal)
        {
            Caption = 'Qty. Shipped Not Invd. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5460; "Qty. Shipped (Base)"; Decimal)
        {
            Caption = 'Qty. Shipped (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5461; "Qty. Invoiced (Base)"; Decimal)
        {
            Caption = 'Qty. Invoiced (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5495; "Reserved Qty. (Base)"; Decimal)
        {
            AccessByPermission = TableData "Sales Shipment Header" = R;
            CalcFormula = - Sum("Reservation Entry"."Quantity (Base)" WHERE("Source ID" = FIELD("Document No."),
                                                                            "Source Ref. No." = FIELD("Line No."),
                                                                            "Source Type" = CONST(37),
                                                                            "Source Subtype" = FIELD("Document Type"),
                                                                            "Reservation Status" = CONST(Reservation)));
            Caption = 'Reserved Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5600; "FA Posting Date"; Date)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'FA Posting Date';
        }
        field(5602; "Depreciation Book Code"; Code[10])
        {
            Caption = 'Depreciation Book Code';
            TableRelation = "Depreciation Book";
        }
        field(5605; "Depr. until FA Posting Date"; Boolean)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'Depr. until FA Posting Date';
        }
        field(5612; "Duplicate in Depreciation Book"; Code[10])
        {
            Caption = 'Duplicate in Depreciation Book';
            TableRelation = "Depreciation Book";
        }
        field(5613; "Use Duplication List"; Boolean)
        {
            AccessByPermission = TableData "Fixed Asset" = R;
            Caption = 'Use Duplication List';
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(5701; "Out-of-Stock Substitution"; Boolean)
        {
            Caption = 'Out-of-Stock Substitution';
            Editable = false;
        }
        field(5702; "Substitution Available"; Boolean)
        {
            CalcFormula = Exist("Item Substitution" WHERE(Type = CONST(Item),
                                                           "No." = FIELD("No."),
                                                           "Substitute Type" = CONST(Item)));
            Caption = 'Substitution Available';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5703; "Originally Ordered No."; Code[20])
        {
            AccessByPermission = TableData "Item Substitution" = R;
            Caption = 'Originally Ordered No.';
            TableRelation = IF (Type = CONST(Item)) Item;
        }
        field(5704; "Originally Ordered Var. Code"; Code[10])
        {
            AccessByPermission = TableData "Item Substitution" = R;
            Caption = 'Originally Ordered Var. Code';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("Originally Ordered No."));
        }
        field(5705; "Cross-Reference No."; Code[20])
        {
            AccessByPermission = TableData "Item Cross Reference" = R;
            Caption = 'Cross-Reference No.';
        }
        field(5706; "Unit of Measure (Cross Ref.)"; Code[10])
        {
            AccessByPermission = TableData "Item Cross Reference" = R;
            Caption = 'Unit of Measure (Cross Ref.)';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."));
        }
        field(5707; "Cross-Reference Type"; Option)
        {
            Caption = 'Cross-Reference Type';
            OptionCaption = ' ,Customer,Vendor,Bar Code';
            OptionMembers = " ",Customer,Vendor,"Bar Code";
        }
        field(5708; "Cross-Reference Type No."; Code[30])
        {
            Caption = 'Cross-Reference Type No.';
        }
        field(5709; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(5710; Nonstock; Boolean)
        {
            AccessByPermission = TableData "Nonstock Item" = R;
            Caption = 'Nonstock';
            Editable = false;
        }
        field(5711; "Purchasing Code"; Code[10])
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Purchasing Code';
            TableRelation = Purchasing;
        }
        field(5712; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
            TableRelation = "Product Group".Code WHERE("Item Category Code" = FIELD("Item Category Code"));
        }
        field(5713; "Special Order"; Boolean)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Special Order';
            Editable = false;
        }
        field(5714; "Special Order Purchase No."; Code[20])
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Special Order Purchase No.';
            TableRelation = IF ("Special Order" = CONST(true)) "Purchase Header"."No." WHERE("Document Type" = CONST(Order));
        }
        field(5715; "Special Order Purch. Line No."; Integer)
        {
            AccessByPermission = TableData "Drop Shpt. Post. Buffer" = R;
            Caption = 'Special Order Purch. Line No.';
            TableRelation = IF ("Special Order" = CONST(true)) "Purchase Line"."Line No." WHERE("Document Type" = CONST(Order),
                                                                                               "Document No." = FIELD("Special Order Purchase No."));
        }
        field(5749; "Whse. Outstanding Qty."; Decimal)
        {
            AccessByPermission = TableData Location = R;
            BlankZero = true;
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Outstanding" WHERE("Source Type" = CONST(37),
                                                                                  "Source Subtype" = FIELD("Document Type"),
                                                                                  "Source No." = FIELD("Document No."),
                                                                                  "Source Line No." = FIELD("Line No.")));
            Caption = 'Whse. Outstanding Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5750; "Whse. Outstanding Qty. (Base)"; Decimal)
        {
            AccessByPermission = TableData Location = R;
            BlankZero = true;
            CalcFormula = Sum("Warehouse Shipment Line"."Qty. Outstanding (Base)" WHERE("Source Type" = CONST(37),
                                                                                         "Source Subtype" = FIELD("Document Type"),
                                                                                         "Source No." = FIELD("Document No."),
                                                                                         "Source Line No." = FIELD("Line No.")));
            Caption = 'Whse. Outstanding Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5752; "Completely Shipped"; Boolean)
        {
            Caption = 'Completely Shipped';
            Editable = false;
        }
        field(5790; "Requested Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Requested Delivery Date';
        }
        field(5791; "Promised Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Promised Delivery Date';
        }
        field(5792; "Shipping Time"; DateFormula)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Shipping Time';
        }
        field(5793; "Outbound Whse. Handling Time"; DateFormula)
        {
            AccessByPermission = TableData Location = R;
            Caption = 'Outbound Whse. Handling Time';
        }
        field(5794; "Planned Delivery Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Planned Delivery Date';
        }
        field(5795; "Planned Shipment Date"; Date)
        {
            AccessByPermission = TableData "Order Promising Line" = R;
            Caption = 'Planned Shipment Date';
        }
        field(5796; "Shipping Agent Code"; Code[10])
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Agent Code';
            TableRelation = "Shipping Agent";
        }
        field(5797; "Shipping Agent Service Code"; Code[10])
        {
            AccessByPermission = TableData "Shipping Agent Services" = R;
            Caption = 'Shipping Agent Service Code';
            TableRelation = "Shipping Agent Services".Code WHERE("Shipping Agent Code" = FIELD("Shipping Agent Code"));
        }
        field(5800; "Allow Item Charge Assignment"; Boolean)
        {
            AccessByPermission = TableData "Item Charge" = R;
            Caption = 'Allow Item Charge Assignment';
            InitValue = true;
        }
        field(5801; "Qty. to Assign"; Decimal)
        {
            CalcFormula = Sum("Item Charge Assignment (Sales)"."Qty. to Assign" WHERE("Document Type" = FIELD("Document Type"),
                                                                                       "Document No." = FIELD("Document No."),
                                                                                       "Document Line No." = FIELD("Line No.")));
            Caption = 'Qty. to Assign';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5802; "Qty. Assigned"; Decimal)
        {
            CalcFormula = Sum("Item Charge Assignment (Sales)"."Qty. Assigned" WHERE("Document Type" = FIELD("Document Type"),
                                                                                      "Document No." = FIELD("Document No."),
                                                                                      "Document Line No." = FIELD("Line No.")));
            Caption = 'Qty. Assigned';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(5803; "Return Qty. to Receive"; Decimal)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Return Qty. to Receive';
            DecimalPlaces = 0 : 5;
        }
        field(5804; "Return Qty. to Receive (Base)"; Decimal)
        {
            Caption = 'Return Qty. to Receive (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5805; "Return Qty. Rcd. Not Invd."; Decimal)
        {
            Caption = 'Return Qty. Rcd. Not Invd.';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5806; "Ret. Qty. Rcd. Not Invd.(Base)"; Decimal)
        {
            Caption = 'Ret. Qty. Rcd. Not Invd.(Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5807; "Return Rcd. Not Invd."; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Return Rcd. Not Invd.';
            Editable = false;
        }
        field(5808; "Return Rcd. Not Invd. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Return Rcd. Not Invd. (LCY)';
            Editable = false;
        }
        field(5809; "Return Qty. Received"; Decimal)
        {
            AccessByPermission = TableData "Return Receipt Header" = R;
            Caption = 'Return Qty. Received';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5810; "Return Qty. Received (Base)"; Decimal)
        {
            Caption = 'Return Qty. Received (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5811; "Appl.-from Item Entry"; Integer)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Appl.-from Item Entry';
            MinValue = 0;
        }
        field(5909; "BOM Item No."; Code[20])
        {
            Caption = 'BOM Item No.';
            TableRelation = Item;
        }
        field(6600; "Return Receipt No."; Code[20])
        {
            Caption = 'Return Receipt No.';
            Editable = false;
        }
        field(6601; "Return Receipt Line No."; Integer)
        {
            Caption = 'Return Receipt Line No.';
            Editable = false;
        }
        field(6608; "Return Reason Code"; Code[10])
        {
            Caption = 'Return Reason Code';
            TableRelation = "Return Reason";
        }
        field(7001; "Allow Line Disc."; Boolean)
        {
            Caption = 'Allow Line Disc.';
            InitValue = true;
        }
        field(7002; "Customer Disc. Group"; Code[20])
        {
            Caption = 'Customer Disc. Group';
            TableRelation = "Customer Discount Group";
        }
        field(50000; "Proportion of freight"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Proportion of freight';
            Description = 'P0003';
            MinValue = 0;
        }
        field(50001; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            Description = 'P0032';
            TableRelation = "Salesperson/Purchaser";
        }
        field(50002; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Description = 'P0029';
        }
        field(50005; Frachtkosten; Boolean)
        {
            Description = 'P0007';
        }
        field(50006; Frachtkostencode; Code[10])
        {
            Caption = 'Frachtkostencode';
            Description = 'P0007';
            TableRelation = "Frachtcodes (Fracht2)";
        }
        field(50007; "Line Gross Weight"; Decimal)
        {
            Caption = 'Line Gross Weight';
            DecimalPlaces = 0 : 5;
            Description = 'P0040';
            Editable = false;
        }
        field(50012; Position; Text[5])
        {
            Caption = 'Position';
            Description = 'P0008';
        }
        field(50030; "Qty. to Shipment"; Decimal)
        {
            BlankZero = true;
            CalcFormula = Sum("Warehouse Activity Line"."Qty. Outstanding" WHERE("Activity Type" = CONST("Invt. Pick"),
                                                                                  "Source Type" = CONST(37),
                                                                                  "Source Subtype" = FIELD("Document Type"),
                                                                                  "Source No." = FIELD("Document No."),
                                                                                  "Source Line No." = FIELD("Line No.")));
            Caption = 'Qty. to Assign';
            Description = 'P0008';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50151; "PZ drucken"; Boolean)
        {
            Caption = 'PZ drucken';
            Description = 'P0008';
        }
        field(50600; "Print on Slip"; Boolean)
        {
            Caption = 'Print on Slip';
            DataClassification = ToBeClassified;
            Description = 'CC01';
            Editable = false;
        }
        field(5012400; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
            Description = ':PMW14.02:53:1';
        }
        field(5012401; "Blanket Order Expiration Date"; Date)
        {
            Caption = 'Blanket Order Expiration Date';
            Description = '#PMW17.10.00.02:T108';
            Editable = false;
        }
        field(5012530; "Delivery Tolerance Code"; Code[10])
        {
            Caption = 'Delivery Tolerance Code';
            Description = ':PMW14.00:2473:1';
            TableRelation = "Delivery Tolerance";
        }
        field(5012583; "Sell-to Contact No."; Code[20])
        {
            Caption = 'Sell-to Contact No.';
            Description = '#PMW16.00.02:T250';
            Editable = false;
            TableRelation = Contact;
        }
        field(5012584; "Contingent Type"; Code[20])
        {
            Caption = 'Contingent Type';
            Description = '#PMW16.00.02:T250';
            TableRelation = "Contingent Type";
        }
        field(5013001; "Unit Price (LCY)"; Decimal)
        {
            Caption = 'Unit Price (LCY)';
            Editable = false;
        }
        field(5013020; "Checklist No."; Code[20])
        {
            Caption = 'Checklist No.';
            TableRelation = "Checklist Header"."No.";
        }
        field(5013030; "Document BOM No."; Code[20])
        {
            Caption = 'Document BOM No.';
            Description = ':DMW13.70.01:1:01';
            Editable = false;
        }
        field(5013040; "Components Tracking Relevance"; Boolean)
        {
            Caption = 'Components Tracking Relevance';
            Description = ':DMW13.70.01:1:03';
            Editable = false;
        }
        field(5013050; "Document BOM"; Boolean)
        {
            CalcFormula = Exist("Document BOM" WHERE("Document No." = FIELD("Document BOM No.")));
            Caption = 'Document BOM';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5013060; "Quantity post. Manuf. product"; Decimal)
        {
            Caption = 'Quantity post. Manuf. product';
        }
        field(5013150; FactorBasisLineToMasterBOM; Decimal)
        {
            Caption = 'FactorBasisLineToMasterBOM';
        }
        field(5013480; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013481; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013482; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = '#DMW16.00.02:T102';
        }
        field(5013500; "Rounding Line"; Boolean)
        {
            Caption = 'Rounding Line';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(5013700; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
            Description = ':DMW14.00:1:01';
        }
        field(5013710; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
            Description = ':DMW14.00:1:01';
        }
        field(5013720; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
            Description = ':DMW14.00:1:01';
        }
        field(5013730; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
            Description = ':DMW14.00:1:01';
        }
        field(5013750; "Starting Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Starting Date-Time';
            Description = ':DMW14.00:1:01';
        }
        field(5013760; "Ending Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Ending Date-Time';
            Description = ':DMW14.00:1:01';
        }
        field(5013800; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(5013810; "No. of Change Orders"; Integer)
        {
            CalcFormula = Count("Change Order" WHERE("Source Type" = CONST("Document BOM"),
                                                      "Source No." = FIELD("Document BOM No.")));
            Caption = 'No. of Change Orders';
            Description = 'DMW17.10.01:T107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034555; "No. of Units"; Integer)
        {
            Caption = 'No. of Units';
            Description = '#NAV20100:A1017 20.08.07 DEWUE.SE';
            InitValue = 1;
        }
        field(5034567; "Create Test Order Rcpt./Shpt."; Boolean)
        {
            Caption = 'Create Test Order on Receipt/Shipment';
            Description = '#NAV20100:A1004 02.05.07 DEWUE.SE';
            Editable = false;
        }
        field(5034568; "Specific Test Plan Setup exist"; Boolean)
        {
            CalcFormula = Exist("Test Plan Setup" WHERE("Source Type" = CONST("Order-specific"),
                                                         "Source No." = FIELD("Document No."),
                                                         "Source Line No." = FIELD("Line No.")));
            Caption = 'Specific Test Plan Setup exist';
            Description = '#QMW16.00.03:R471';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5072454; "Item Fixed Asset Sale"; Boolean)
        {
            Caption = 'Item Fixed Asset Sale';
            Description = '#RENW16.00.02:R062';
        }
        field(5072455; "Item Fixed Asset No."; Code[20])
        {
            Caption = 'Item Fixed Asset No.';
            Description = '#RENW16.00.02:R062';
            TableRelation = IF (Type = CONST(Item),
                                "No." = FILTER(<> '')) "Fixed Asset"."No." WHERE("Item No." = FIELD("No."));
        }
        field(5072650; "Rental Position"; Option)
        {
            Caption = 'Rental Position';
            Description = '#RENW16.00:10';
            OptionCaption = 'Sales,Rental,Rate Part,One-Time Invoicing';
            OptionMembers = Sales,Rental,"Rate Part","One-Time Invoicing";
        }
        field(5072651; "Rental Rate Code"; Code[10])
        {
            Caption = 'Rental Rate Code';
            Description = '#RENW16.00:10';
            TableRelation = "Capacity Unit of Measure".Code WHERE("Rental Rate Code" = CONST(true));
        }
        field(5072652; "Rental Rate"; Text[50])
        {
            Caption = 'Rental Rate';
            Description = '#RENW16.00:10,#RENW16.00.01.03:T503,#RENW18.00.00.03:T501';
            Editable = false;
        }
        field(5072653; "Rate Unit Price"; Decimal)
        {
            Caption = 'Rate Unit Price';
            Description = '#RENW16.00:10';
        }
        field(5072655; "Outbound Shipping Time"; DateFormula)
        {
            Caption = 'Outbound Shipping Time';
            Description = '#RENW16.00:10';
        }
        field(5072656; "Inbound Shipping Time"; DateFormula)
        {
            Caption = 'Inbound Shipping Time';
            Description = '#RENW16.00:10';
        }
        field(5072657; "Rental Start Date"; Date)
        {
            Caption = 'Rental Start Date';
            Description = '#RENW16.00:10';
        }
        field(5072658; "Rental End Date"; Date)
        {
            Caption = 'Rental End Date';
            Description = '#RENW16.00:10';
        }
        field(5072660; "Unit Price Total Rental Time"; Decimal)
        {
            Caption = 'Unit Price Total Rental Time';
            Description = '#RENW16.00:10';
            Editable = false;
        }
        field(5072661; "Amount Total Rental Time"; Decimal)
        {
            Caption = 'Amount Total Rental Time';
            Description = '#RENW16.00:10';
            Editable = false;
        }
        field(5072662; "Customer Location Code"; Code[10])
        {
            Caption = 'Customer Location Code';
            Description = '#RENW16.00:10';
            TableRelation = IF ("Rental Position" = CONST(Rental)) Location WHERE("Use As - Rented" = CONST(true));
        }
        field(5072663; "Qty. Extensions"; Integer)
        {
            CalcFormula = Count("Rental Extension" WHERE("Document Type" = FIELD("Document Type"),
                                                          "Document No." = FIELD("Document No."),
                                                          "Line No." = FIELD("Line No.")));
            Caption = 'Qty. Extensions';
            Description = '#RENW16.00:10';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072664; "Qty. Failures"; Integer)
        {
            CalcFormula = Count("Rental Failure" WHERE("Document Type" = FIELD("Document Type"),
                                                        "Document No." = FIELD("Document No."),
                                                        "Line No." = FIELD("Line No.")));
            Caption = 'Qty. Failures';
            Description = '#RENW16.00:10';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072665; "Invoice Period"; Option)
        {
            Caption = 'Invoice Period';
            Description = '#RENW16.00:10';
            OptionCaption = 'Month,Two Months,Quarter,Half Year,Year,None';
            OptionMembers = Month,"Two Months",Quarter,"Half Year",Year,"None";
        }
        field(5072666; "Month Based"; Boolean)
        {
            Caption = 'Month Based';
            Description = '#RENW16.00:10';
        }
        field(5072667; Prepaid; Boolean)
        {
            Caption = 'Prepaid';
            Description = '#RENW16.00:10';
        }
        field(5072668; "Next Invoice Period Start"; Date)
        {
            CalcFormula = Lookup("Service Contract Header"."Next Invoice Period Start" WHERE("Rent Order No." = FIELD("Document No."),
                                                                                              "Rent Order Line No." = FIELD("Line No.")));
            Caption = 'Next Invoice Period Start';
            Description = '#RENW16.00:10';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072669; "Next Invoice Period End"; Date)
        {
            CalcFormula = Lookup("Service Contract Header"."Next Invoice Period End" WHERE("Rent Order No." = FIELD("Document No."),
                                                                                            "Rent Order Line No." = FIELD("Line No.")));
            Caption = 'Next Invoice Period End';
            Description = '#RENW16.00:10';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072670; "Rental Return Date"; Date)
        {
            Caption = 'Rental Return Date';
            Description = '#RENW16.00:10';
        }
        field(5072671; "Invoiced to Date"; Date)
        {
            CalcFormula = Lookup("Service Contract Header"."Last Invoice Period End" WHERE("Rent Order No." = FIELD("Document No."),
                                                                                            "Rent Order Line No." = FIELD("Line No.")));
            Caption = 'Invoiced to Date';
            Description = '#RENW16.00:10';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072672; "Rental Line Discount Amount"; Decimal)
        {
            Caption = 'Rental Line Discount Amount';
            Description = '#RENW16.00:10';
        }
        field(5072673; "Next Price Update Date"; Date)
        {
            Caption = 'Next Price Update Date';
            Description = '#RENW16.00.00.02:T301';
        }
        field(5072674; "Price Update Period"; DateFormula)
        {
            Caption = 'Price Update Period';
            Description = '#RENW16.00.00.02:T301';
            InitValue = '1Y';
        }
        field(5072675; "Last Price Update Date"; Date)
        {
            CalcFormula = Lookup("Service Contract Header"."Last Price Update Date" WHERE("Rent Order No." = FIELD("Document No."),
                                                                                           "Rent Order Line No." = FIELD("Line No.")));
            Caption = 'Last Price Update Date';
            Description = '#RENW16.00.00.02:T301';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072676; "Last Price Update %"; Decimal)
        {
            CalcFormula = Lookup("Service Contract Header"."Last Price Update %" WHERE("Rent Order No." = FIELD("Document No."),
                                                                                        "Rent Order Line No." = FIELD("Line No.")));
            Caption = 'Last Price Update %';
            DecimalPlaces = 0 : 5;
            Description = '#RENW16.00.00.02:T301';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072677; "Rate Component No."; Code[20])
        {
            Caption = 'Rate Component No.';
            Description = '#RENW16.00.01:R053';
            TableRelation = IF ("Rental Position" = CONST("Rate Part")) "Rent Rate Component"."No." WHERE(Type = CONST("Rate Part"))
            ELSE
            IF ("Rental Position" = CONST("One-Time Invoicing")) "Rent Rate Component"."No." WHERE(Type = CONST("One-Time Invoicing"));
        }
        field(5072678; "Attached to Item No."; Code[20])
        {
            Caption = 'Attached to Item No.';
            Description = '#RENW16.00.01:R053';
            TableRelation = Item;
        }
        field(5072679; "One-Time Due Date"; Option)
        {
            Caption = 'One-Time Due Date';
            Description = '#RENW16.00.01:R053,#RENW17.10.00.02:T101';
            OptionCaption = ' ,Shipment,Return,Manual';
            OptionMembers = " ",Shipment,Return,Manual;
        }
        field(5072680; "Item Line Rate Code"; Code[20])
        {
            Caption = 'Item Line Rate Code';
            Description = '#RENW16.00.01:R053';
        }
        field(5072681; "Purchase Order Exists"; Boolean)
        {
            Caption = 'Purchase Order Exists';
            Description = '#RENW16.00.01:R055';
        }
        field(5072682; "Requisition Line Exists"; Boolean)
        {
            Caption = 'Requisition Line Exists';
            Description = '#RENW16.00.01:R055';
        }
        field(5072683; "Sell Item from Rent"; Boolean)
        {
            Caption = 'Sell Item from Rent';
            Description = '#RENW16.00.01:R119';
        }
        field(5072684; "Sales Allocation"; Boolean)
        {
            CalcFormula = Exist("Rental - Sales Calculation" WHERE("Return Source Type" = CONST(37),
                                                                    "Return Source Subtype" = FIELD("Document Type"),
                                                                    "Return Source ID" = FIELD("Document No."),
                                                                    "Return Source Ref. No." = FIELD("Line No.")));
            Caption = 'Sales Allocation';
            Description = '#RENW16.00.01:R119';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072685; "Attached to Rent Order No."; Code[20])
        {
            Caption = 'Attached to Rent Order No.';
            Description = '#RENW16.00.01:R119';
            Editable = false;
        }
        field(5072686; "Attached to Rent Order Line No"; Integer)
        {
            Caption = 'Attached to Rent Order Line No';
            Description = '#RENW16.00.01:R119';
        }
        field(5072687; "Qty. Rent Changes"; Integer)
        {
            CalcFormula = Count("Rental Change" WHERE("Document Type" = FIELD("Document Type"),
                                                       "Document No." = FIELD("Document No."),
                                                       "Line No." = FIELD("Line No.")));
            Caption = 'Qty. Rent Changes';
            Description = '#RENW16.00.01:R054';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072688; "Calendar Code"; Code[10])
        {
            Caption = 'Calendar Code';
            Description = '#RENW16.00.01:R086';
            TableRelation = "Base Calendar";
        }
        field(5072689; "Free Operation Hours"; Integer)
        {
            Caption = 'Free Operation Hours';
            Description = '#RENW16.00.01:R065';
        }
        field(5072690; "Free Operation Miles"; Integer)
        {
            Caption = 'Free Operation Miles';
            Description = '#RENW16.00.01:R065';
        }
        field(5072691; Leasing; Boolean)
        {
            CalcFormula = Exist("Leasing Agreement" WHERE("Document Type" = FIELD("Document Type"),
                                                           "Document No." = FIELD("Document No."),
                                                           "Line No." = FIELD("Line No.")));
            Description = '#RENW16.00.02:R154';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5072692; "Amount Total Rent Incl. VAT"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount Total Rental Time Incl. VAT';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
        }
        field(5072693; "VAT Base Amount Rent"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'VAT Base Amount Rent';
            Description = '#RENW18.00.00.05:T101';
            Editable = false;
        }
        field(5292332; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE("Job No." = FIELD("Job No."),
                                                                       "Unique No." = FIELD("Job Line Unique No."));
        }
        field(5292333; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292334; "Job Comment"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(5292344),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Job Line Unique No."),
                                                               Type = CONST(Sale)));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292335; "Special Quantity"; Decimal)
        {
            Caption = 'Special Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292336; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,Optional,Alternative,Supplement,Modification,Increase';
            OptionCaption = ' ,Optional,Alternative,Supplement,Modification,Increase';
            OptionMembers = " ",Optional,Alternative,Supplement,Modification,Increase;
        }
        field(5292337; "Special Alternative Unique No."; Integer)
        {
            Caption = 'Special Alternative Unique No.';
            Description = 'ne';
            Editable = false;
        }
        field(5292338; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
        field(5292339; "Sales Code"; Code[10])
        {
            CalcFormula = Lookup("PR - Job Line Budget"."Sales Code" WHERE("Job No." = FIELD("Job No."),
                                                                            "Unique No." = FIELD("Job Line Unique No.")));
            Caption = 'Sales Code';
            Description = 'LU "Job Line Budget"';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "PR - Job Sales Code";
        }
        field(5292340; "Confirmed Order Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Confirmed Order Amount (LCY)';
            Description = 'ne';
            Editable = false;
        }
        field(5292341; "Reason for Credit Memo"; Option)
        {
            Caption = 'Reason for Credit Memo';
            Description = ' ,New Invoice,Refund';
            OptionCaption = ' ,New Invoice,Refund';
            OptionMembers = " ","New Invoice",Refund;
        }
        field(5292342; "Invoicing Serial No."; Code[20])
        {
            Caption = 'Invoicing Serial No.';
        }
        field(5292343; "Invoicing Lot No."; Code[20])
        {
            Caption = 'Invoicing Lot No.';
        }
        field(5292370; "Main Job No."; Code[20])
        {
            Caption = 'Main Job No.';
            TableRelation = Job;
        }
        field(5292600; "BoQ Pos. No."; Text[30])
        {
            CalcFormula = Lookup("PR - Job Line Budget"."BoQ Pos. No." WHERE("Job No." = FIELD("Job No."),
                                                                              "Unique No." = FIELD("Job Line Unique No.")));
            Caption = 'BoQ Pos. No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292601; "BoQ Position Type"; Option)
        {
            CalcFormula = Lookup("PR - Job Line Budget"."BoQ Position Type" WHERE("Job No." = FIELD("Job No."),
                                                                                   "Unique No." = FIELD("Job Line Unique No.")));
            Caption = 'BoQ Position Type';
            Description = ' ,Normalposition,LV-Normalgruppe,Hinweistext,Bedarfspos o. GB,Bedarfspos m. GB,Grundposition,Alternativposition,Bezugsposition,Wiederholungsposition,Leitbeschreibung,Stundenlohnarbeit,Zuschlagsposition,Kombiposition,Pauschalposition,Ausführungsbeschreibung,Block einer Ausführungsbeschreibung,Unterbeschreibung,Los,LV-Grundgruppe,LV-Alternativgruppe';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Normalposition,LV-Normalgruppe,Hinweistext,Bedarfspos o. GB,Bedarfspos m. GB,Grundposition,Alternativposition,Bezugsposition,Wiederholungsposition,Leitbeschreibung,Stundenlohnarbeit,Zuschlagsposition,Kombiposition,Pauschalposition,Ausführungsbeschreibung,Block einer Ausführungsbeschreibung,Unterbeschreibung,Los,LV-Grundgruppe,LV-Alternativgruppe';
            OptionMembers = " ",Normalposition,"LV-Normalgruppe",Hinweistext,"Bedarfspos o. GB","Bedarfspos m. GB",Grundposition,Alternativposition,Bezugsposition,Wiederholungsposition,Leitbeschreibung,Stundenlohnarbeit,Zuschlagsposition,Kombiposition,Pauschalposition,"Ausführungsbeschreibung","Block einer Ausführungsbeschreibung",Unterbeschreibung,Los,"LV-Grundgruppe","LV-Alternativgruppe";
        }
        field(5292605; "Pos. on Demand %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Position on Demand %';
        }
        field(5292606; "Pos. on Demand Amt."; Decimal)
        {
            BlankZero = true;
            Caption = 'Position on Demand Amount';
        }
        field(5483220; "FA Error Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'FA Error Entry No.';
            Description = 'FA';
            TableRelation = "FA Ledger Entry";
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount, "Amount Including VAT", "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)";
        }
        key(Key2; "Document No.", "Line No.", "Document Type")
        {
        }
        key(Key3; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Shipment Date", "Rental Position")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key4; "Document Type", "Bill-to Customer No.", "Currency Code")
        {
            SumIndexFields = "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)", "Return Rcd. Not Invd. (LCY)";
        }
        key(Key5; "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Location Code", "Shipment Date")
        {
            Enabled = false;
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key6; "Document Type", "Bill-to Customer No.", "Shortcut Dimension 1 Code", "Shortcut Dimension 2 Code", "Currency Code")
        {
            Enabled = false;
            SumIndexFields = "Outstanding Amount", "Shipped Not Invoiced", "Outstanding Amount (LCY)", "Shipped Not Invoiced (LCY)";
        }
        key(Key7; "Document Type", "Blanket Order No.", "Blanket Order Line No.")
        {
        }
        key(Key8; "Document Type", "Document No.", "Location Code")
        {
        }
        key(Key9; "Document Type", "Shipment No.", "Shipment Line No.")
        {
        }
        key(Key10; Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Document Type", "Shipment Date")
        {
            MaintainSQLIndex = false;
        }
        key(Key11; "Document Type", "Sell-to Customer No.", "Shipment No.")
        {
            SumIndexFields = "Outstanding Amount (LCY)";
        }
        key(Key12; "Job Contract Entry No.")
        {
        }
        key(Key13; "Document Type", "Document No.", "Qty. Shipped Not Invoiced")
        {
        }
        key(Key14; "Document Type", "Document No.", Type, "No.")
        {
        }
        key(Key15; "Job No.", "Job Line Unique No.", "Document Type", "Document No.")
        {
            SumIndexFields = Quantity, "Outstanding Amount (LCY)";
        }
        key(Key16; "Job No.", "Document Type", Type, "No.", "Variant Code", "Drop Shipment", "Location Code", "Shipment Date")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key17; "Document Type", "Sell-to Contact No.", Type, "No.", "Shipment Date", "Contingent Type", "Document No.")
        {
            SumIndexFields = "Outstanding Qty. (Base)";
        }
        key(Key18; "Document BOM No.")
        {
        }

        key(Key20; "Checklist No.")
        {
        }
    }

    fieldgroups
    {
    }
}

