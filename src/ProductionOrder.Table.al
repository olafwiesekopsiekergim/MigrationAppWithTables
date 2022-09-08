table 5405 "Production Order"
{
    // P0040 22.04.16 CCBIE.ARE New function GetAvailability
    // P0035 04.04.16 CCBIE.ARE New fields 50111 "Production Group Code" and 50130 "Print Action Released". New key Status,"Production Group Code"
    // P0027 29.03.16 DEBIE.ARE New fields 50003"Shipping Agent Code", 50010"Run Card Pinted Date",
    //   50011"Run Card Pinted Time", 50120"Remaining Quantity", 50200"Auftr. Verk. an Deb.-Name", 80000Erstellungsdatum,
    //   80001Erstellungsuhrzeit, 80002Erstellungsuser, 80003Änderungsdatum, 80004Änderungsuhrzeit, 80005Änderungsuser.
    //   New Key "Evtl. Auftragsnr.","Evtl. Auftragszeilennr.". New function ShowShortcutDimCode
    // P0020 02.03.16 DEBIE.ARE New fields 50007"Evtl. Auftragsnr.", 50008 "Evtl. Auftragszeilennr.". New function OpenProductionOrder
    // 
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     Update Fields:
    //                                     - Field 9,10 + Job
    //                                     New Keys:
    //                                     - Job No.,Job Line Unique No.
    //                                     - Job Procurement No.
    // #PXW16.00:101 27.01.09 DEMSR.IG
    //   Reload record in OnDelete
    //   No Due Date re-calculation when sequence planning
    //   Update prod. order sequence on update date/time
    // 
    // #PXW16.00.01.02:T500 02.03.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PXW17.00:T101 04.09.12 DEMSR.IST
    //   RECORDLEVELLOCKING condition deleted
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :DMW13.60:1:01 #Neues Feld "Sales Line No."
    // :DMW13.60.02:1:01 #Neues Feld 5013010 "Created by Constr.-No." und Key angelegt
    // 
    // :DMW13.71:1:01 #Neue Felder:
    //  # 5013405 "Created by Doc. Type"
    //  # 5013420 "Quellzeilennr."
    //  # 5013470 "separate Prod. Order"
    //  # 5013480 "Variant Code"
    //  # neuen Key angelegt: "Separate Prod. Order","Created by Doc. Type","Created by No.","Created by Line No."
    // :DMW13.71.01:1:01 #Neues Feld: 5013490 Calulation
    //  # neuen Key mit diesem Feld
    // 
    // :DMW14.00:1:01 #Neues Feld: 5013500: "Direct from Doc. Type"
    // :DMW14.03:1:01 #neues Feld: 5013510: "Base Material"
    // SQL:DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // KANBAN:DMW15.02:28:01 #New field 5013520 "Created by KANBAN"; New key: "Source No.","Variant Code","Location Code","Source Type"
    // :DMW16.00.00.02:24:01 #Global Dimesions weren't copied from CTO to Prod. Order
    // :DMW16.00.02:T100 07.10.10 DEMSR.SSZ
    //   #New Function: SortProdOrderLines
    // #DMW16.00.02.02:A0004 03.01.11 DEMSR.SSZ
    //   #deleted field Calculation (5013490) and key
    // #DMW16.00.03:T007 15.09.11 DEMSR.SSZ
    //   #New functions to manage External Production with supply
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders: new field 5013530
    // #DMW18.00:T500 16.01.15 DEMSR.SSZ
    //   #Check License Permissions
    // #DMW18.00.00.01:T101 17.02.15 DEMSR.SSZ
    //   #New functions to create and open Changes Orders
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE Integration QM/VR
    // 
    // #QMW17.00.00.02:T100 14.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :PMW14.02.01:83:1
    //   New field 5012400 "Production Structure No."
    // 
    // :PMW15.00:209:1
    //   New function RecalculateDatesOnDueDate
    // 
    // PLANTMAIN:PMW15.00:19:1
    //   New field 5012501 "External Maintenance Order"
    //   New field 5012502 "Maint. Order Document Type"
    //   New field 5012503 "Maint. Order No."
    // 
    // :PMW15.00:238:1
    //   Usage of new data access commands
    // 
    // :PMW15.00:241:1
    //   Changes due to UI and programming standards
    // 
    // :PMW15.00.01:45:1
    //   Check license permissions
    // 
    // :PMW16.00:155:1
    //   Redesign for Sequence Planning --> #PXW16.00:101
    // 
    // #PMW16.00.03:T102 19.07.11 DESMR.IST
    //   New function CheckDefaultLocationAndBin
    // 
    // #PMW17.00:T101 11.10.12 DEMSR.IST
    //   New standard fields considered
    //   Delete dimensions deactivated
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW19.00:T101 02.10.15 DEMSR.KHS
    //   Set Function "CreateDim" to Local = No

    Caption = 'Production Order';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = "Production Order"."No." WHERE(Status = FIELD(Status));
            ValidateTableRelation = false;
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
        field(6; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(7; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(9; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'Item,Family,Sales Header,Job';
            OptionMembers = Item,Family,"Sales Header",Job;
        }
        field(10; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST(Item)) Item WHERE(Type = CONST(Inventory))
            ELSE
            IF ("Source Type" = CONST(Family)) Family
            ELSE
            IF (Status = CONST(Simulated),
                                     "Source Type" = CONST("Sales Header")) "Sales Header"."No." WHERE("Document Type" = CONST(Quote))
            ELSE
            IF (Status = FILTER(Planned ..),
                                              "Source Type" = CONST("Sales Header")) "Sales Header"."No." WHERE("Document Type" = CONST(Order));
        }
        field(11; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header";
        }
        field(15; "Inventory Posting Group"; Code[10])
        {
            Caption = 'Inventory Posting Group';
            TableRelation = "Inventory Posting Group";
        }
        field(16; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(17; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(19; Comment; Boolean)
        {
            CalcFormula = Exist("Prod. Order Comment Line" WHERE(Status = FIELD(Status),
                                                                  "Prod. Order No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(21; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(22; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(23; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(24; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(25; "Finished Date"; Date)
        {
            Caption = 'Finished Date';
            Editable = false;
        }
        field(28; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(30; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(31; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(32; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE("Use As In-Transit" = CONST(false));
        }
        field(33; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = IF ("Source Type" = CONST(Item)) Bin.Code WHERE("Location Code" = FIELD("Location Code"),
                                                                           "Item Filter" = FIELD("Source No."))
            ELSE
            IF ("Source Type" = FILTER(<> Item)) Bin.Code WHERE("Location Code" = FIELD("Location Code"));
        }
        field(34; "Replan Ref. No."; Code[20])
        {
            Caption = 'Replan Ref. No.';
            Editable = false;
        }
        field(35; "Replan Ref. Status"; Option)
        {
            Caption = 'Replan Ref. Status';
            Editable = false;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(38; "Low-Level Code"; Integer)
        {
            Caption = 'Low-Level Code';
            Editable = false;
        }
        field(40; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(41; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            DecimalPlaces = 2 : 5;
        }
        field(42; "Cost Amount"; Decimal)
        {
            Caption = 'Cost Amount';
            DecimalPlaces = 2 : 2;
        }
        field(47; "Work Center Filter"; Code[20])
        {
            Caption = 'Work Center Filter';
            FieldClass = FlowFilter;
            TableRelation = "Work Center";
        }
        field(48; "Capacity Type Filter"; Option)
        {
            Caption = 'Capacity Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Work Center,Machine Center';
            OptionMembers = "Work Center","Machine Center";
        }
        field(49; "Capacity No. Filter"; Code[20])
        {
            Caption = 'Capacity No. Filter';
            FieldClass = FlowFilter;
            TableRelation = IF ("Capacity Type Filter" = CONST("Work Center")) "Machine Center"
            ELSE
            IF ("Capacity Type Filter" = CONST("Machine Center")) "Work Center";
        }
        field(50; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(51; "Expected Operation Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Prod. Order Routing Line"."Expected Operation Cost Amt." WHERE(Status = FIELD(Status),
                                                                                               "Prod. Order No." = FIELD("No.")));
            Caption = 'Expected Operation Cost Amt.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(52; "Expected Component Cost Amt."; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Prod. Order Component"."Cost Amount" WHERE(Status = FIELD(Status),
                                                                           "Prod. Order No." = FIELD("No."),
                                                                           "Due Date" = FIELD("Date Filter")));
            Caption = 'Expected Component Cost Amt.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(55; "Actual Time Used"; Decimal)
        {
            CalcFormula = Sum("Capacity Ledger Entry".Quantity WHERE("Order Type" = CONST(Production),
                                                                      "Order No." = FIELD("No."),
                                                                      Type = FIELD("Capacity Type Filter"),
                                                                      "No." = FIELD("Capacity No. Filter"),
                                                                      "Posting Date" = FIELD("Date Filter")));
            Caption = 'Actual Time Used';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(56; "Allocated Capacity Need"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Capacity Need"."Needed Time" WHERE(Status = FIELD(Status),
                                                                               "Prod. Order No." = FIELD("No."),
                                                                               Type = FIELD("Capacity Type Filter"),
                                                                               "No." = FIELD("Capacity No. Filter"),
                                                                               "Work Center No." = FIELD("Work Center Filter"),
                                                                               Date = FIELD("Date Filter"),
                                                                               "Requested Only" = CONST(false)));
            Caption = 'Allocated Capacity Need';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(57; "Expected Capacity Need"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Capacity Need"."Needed Time" WHERE(Status = FIELD(Status),
                                                                               "Prod. Order No." = FIELD("No."),
                                                                               Type = FIELD("Capacity Type Filter"),
                                                                               "No." = FIELD("Capacity No. Filter"),
                                                                               "Work Center No." = FIELD("Work Center Filter"),
                                                                               Date = FIELD("Date Filter"),
                                                                               "Requested Only" = CONST(false)));
            Caption = 'Expected Capacity Need';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(82; "Planned Order No."; Code[20])
        {
            Caption = 'Planned Order No.';
        }
        field(83; "Firm Planned Order No."; Code[20])
        {
            Caption = 'Firm Planned Order No.';
        }
        field(85; "Simulated Order No."; Code[20])
        {
            Caption = 'Simulated Order No.';
        }
        field(92; "Expected Material Ovhd. Cost"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Component"."Overhead Amount" WHERE(Status = FIELD(Status),
                                                                               "Prod. Order No." = FIELD("No.")));
            Caption = 'Expected Material Ovhd. Cost';
            DecimalPlaces = 2 : 2;
            Editable = false;
            FieldClass = FlowField;
        }
        field(94; "Expected Capacity Ovhd. Cost"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum("Prod. Order Routing Line"."Expected Capacity Ovhd. Cost" WHERE(Status = FIELD(Status),
                                                                                               "Prod. Order No." = FIELD("No.")));
            Caption = 'Expected Capacity Ovhd. Cost';
            Editable = false;
            FieldClass = FlowField;
        }
        field(98; "Starting Date-Time"; DateTime)
        {
            Caption = 'Starting Date-Time';
        }
        field(99; "Ending Date-Time"; DateTime)
        {
            Caption = 'Ending Date-Time';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(7300; "Completely Picked"; Boolean)
        {
            CalcFormula = Min("Prod. Order Component"."Completely Picked" WHERE(Status = FIELD(Status),
                                                                                 "Prod. Order No." = FIELD("No."),
                                                                                 "Supplied-by Line No." = FILTER(0)));
            Caption = 'Completely Picked';
            FieldClass = FlowField;
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            TableRelation = "User Setup";
        }
        field(50003; "Shipping Agent Code"; Code[10])
        {
            CalcFormula = Lookup("Sales Header"."Shipping Agent Code" WHERE("Document Type" = CONST(Order),
                                                                             "No." = FIELD("Evtl. Auftragsnr.")));
            Caption = 'Shipping Agent Code';
            Description = 'P0027';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50004; "Lief. an Name"; Code[50])
        {
            CalcFormula = Lookup("Sales Header"."Ship-to Name" WHERE("No." = FIELD("Evtl. Auftragsnr.")));
            FieldClass = FlowField;
        }
        field(50005; "Priorität"; Code[2])
        {
            Description = '#AT';
        }
        field(50007; "Evtl. Auftragsnr."; Code[20])
        {
            Caption = 'Evtl. Auftragsnr.';
            Description = 'P0020,P0027';
            Editable = false;
            TableRelation = "Sales Header"."No." WHERE("Document Type" = CONST(Order));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(50008; "Evtl. Auftragszeilennr."; Integer)
        {
            BlankZero = true;
            Caption = 'Evtl. Auftragszeilennr.';
            Description = 'P0020,P0027';
            Editable = false;
            TableRelation = "Sales Line"."Line No." WHERE("Document Type" = CONST(Order),
                                                           "Document No." = FIELD("Evtl. Auftragsnr."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(50010; "Run Card Pinted Date"; Date)
        {
            Caption = 'Run card pinted date';
            Description = 'P0027';
        }
        field(50011; "Run Card Pinted Time"; Time)
        {
            Caption = 'Run card pinted time';
            Description = 'P0027';
        }
        field(50015; "Pulver(einseitig)"; Code[20])
        {
            CalcFormula = Lookup(Item."Pulvernr.(einseitig)" WHERE("No." = FIELD("Source No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50016; "Pulver(beidseitig)"; Code[20])
        {
            CalcFormula = Lookup(Item."Pulvernr.(beidseitig)" WHERE("No." = FIELD("Source No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50017; "Pulver(doppelt)"; Code[20])
        {
            CalcFormula = Lookup(Item."Pulvernr.(doppelt)" WHERE("No." = FIELD("Source No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50111; "Production Group Code"; Code[10])
        {
            Caption = 'Production Group Code';
            Description = 'P0035';
            TableRelation = "Production Group";
        }
        field(50120; "Remaining Quantity"; Decimal)
        {
            CalcFormula = Sum("Prod. Order Line"."Remaining Quantity" WHERE(Status = FIELD(Status),
                                                                             "Prod. Order No." = FIELD("No."),
                                                                             "Line No." = CONST(10000)));
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
            Description = 'P0027';
            Editable = false;
            FieldClass = FlowField;
            MinValue = 0;
        }
        field(50130; "Print Action Released"; Option)
        {
            Caption = 'Print Action Released';
            Description = 'P0035';
            OptionMembers = "mit Details","ohne Details","kein Druck",Listendruck;
        }
        field(50200; "Auftr. Verk. an Deb.-Name"; Text[50])
        {
            CalcFormula = Lookup("Sales Header"."Sell-to Customer Name" WHERE("Document Type" = CONST(Order),
                                                                               "No." = FIELD("Evtl. Auftragsnr.")));
            Description = 'P0027';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = Customer;
        }
        field(80000; Erstellungsdatum; Date)
        {
            Description = 'P0027';
            Editable = false;
        }
        field(80001; Erstellungsuhrzeit; Time)
        {
            Description = 'P0027';
            Editable = false;
        }
        field(80002; Erstellungsuser; Code[50])
        {
            Description = 'P0027';
            Editable = false;
            TableRelation = User;
        }
        field(80003; "Änderungsdatum"; Date)
        {
            Description = 'P0027';
            Editable = false;
        }
        field(80004; "Änderungsuhrzeit"; Time)
        {
            Description = 'P0027';
            Editable = false;
        }
        field(80005; "Änderungsuser"; Code[50])
        {
            Description = 'P0027';
            Editable = false;
            TableRelation = User;
        }
        field(5012400; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = ':PMW14.02.01:83:1';
            TableRelation = "Production Structure Header";
        }
        field(5012501; "External Maintenance Order"; Boolean)
        {
            Caption = 'External Maintenance Order';
            Description = 'PLANTMAIN:PMW15.00:19:1';
            Editable = false;
        }
        field(5012502; "Maint. Order Document Type"; Option)
        {
            Caption = 'Maint. Order Document Type';
            Description = 'PLANTMAIN:PMW15.00:19:1';
            OptionCaption = 'Maint. Order Template,Maint. Order,Maint. Order Archiv';
            OptionMembers = "Maint. Order Template","Maint. Order","Maint. Order Archiv";
        }
        field(5012503; "Maint. Order No."; Code[20])
        {
            Caption = 'Maint. Order No.';
            Description = 'PLANTMAIN:PMW15.00:19:1';
            TableRelation = "Maintenance Order"."No." WHERE("Document Type" = FIELD("Maint. Order Document Type"));
        }
        field(5013000; "Sales Line No."; Integer)
        {
            Caption = 'Sales Line No.';
            Description = ':DMW13.60:1:01';
        }
        field(5013010; "Created by No."; Code[20])
        {
            Caption = 'Created by No.';
            Description = ':DMW13.60.02:1:01';
            Editable = false;
            TableRelation = IF ("Created by Doc. Type" = CONST(Construction)) "Construction Header"."No."
            ELSE
            IF ("Created by Doc. Type" = CONST("Document BOM")) "Document BOM"."Document No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013405; "Created by Doc. Type"; Option)
        {
            Caption = 'Created by Doc. Type';
            Description = ':DMW13.71:1:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Document BOM",Construction;
        }
        field(5013420; "Created by Line No."; Integer)
        {
            Caption = 'Created by Line No.';
            Description = ':DMW13.71:1:01';
            Editable = false;
        }
        field(5013470; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
            Description = ':DMW13.71:1:01';
        }
        field(5013480; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = ':DMW13.71:1:01';
            TableRelation = IF ("Source Type" = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("Source No."));
        }
        field(5013500; "Direct from Doc. Type"; Boolean)
        {
            Caption = 'Direct from Doc. Type';
            Description = ':DMW14.00:1:01';
        }
        field(5013510; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = ':DMW14.03:1:01';
            TableRelation = "Base Material";
        }
        field(5013520; "Created by KANBAN"; Boolean)
        {
            Caption = 'Created by KANBAN';
            Description = 'KANBAN:DMW15.02:28:01';
            Editable = false;
        }
        field(5013530; "No. of Change Orders"; Integer)
        {
            CalcFormula = Count("Change Order" WHERE("Source No." = FIELD("No.")));
            Caption = 'No. of Change Orders';
            Description = '#DMW17.10.01:T107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5034550; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Description = '#NAV20100:A1000';
            TableRelation = "Responsibility Center";
        }
        field(5292333; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292334; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE("Job No." = FIELD("Job No."),
                                                                       "Unique No." = FIELD("Job Line Unique No."));
        }
        field(5292335; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292336; "Job Comment"; Boolean)
        {
            CalcFormula = Exist("PR - Job Comment Line" WHERE("Table ID" = CONST(3),
                                                               Code1 = FIELD("Job No."),
                                                               Int1 = FIELD("Job Line Unique No."),
                                                               Type = CONST(Purchase)));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292337; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
        field(5292338; "Total Direct Cost Proc. (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost Proc. (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(5292340; "Job Inventory"; Code[10])
        {
            Caption = 'Job Inventory';
            TableRelation = "Job Journal Batch".Name WHERE("Journal Template Name" = CONST('PR LAGER'),
                                                            "Job No." = FIELD("Job No."));
        }
    }

    keys
    {
        key(Key1; Status, "No.")
        {
            Clustered = true;
        }
        key(Key2; "No.", Status)
        {
        }
        key(Key3; "Search Description")
        {
        }
        key(Key4; "Low-Level Code", "Replan Ref. No.", "Replan Ref. Status")
        {
        }
        key(Key5; "Source Type", "Source No.")
        {
            Enabled = false;
        }
        key(Key6; Description)
        {
        }
        key(Key7; "Source No.")
        {
        }
        key(Key8; "Job No.", "Job Line Unique No.")
        {
        }
        key(Key9; "Job Procurement No.")
        {
        }
        key(Key11; "Source No.", "Variant Code", "Location Code", "Source Type")
        {
        }
        key(Key12; "Evtl. Auftragsnr.", "Evtl. Auftragszeilennr.")
        {
        }
        key(Key13; Status, "Production Group Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "Source No.", "Source Type")
        {
        }
    }
}

