table 315 "Jobs Setup"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // PRBQ01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|boq manager
    // 
    // #PRW19.00:T500 14.12.15 DENUE.ALAN Granule Check Permission vs. User Permission Set
    // #PRW19.00:T107 19.01.16 DENUE.SKOL Integration Job Liquidity
    //                                    New Field
    //                                    - 5292396 "Cashflow Pmt. Code"
    // #PRW19.00.00.02:T508 16.03.16 DENUE.ALAN Granule Check Permission fixed
    // #PRW19.00.00.02:T509 16.03.16 DENUE.ALAN WIP
    //                                          New field
    //                                          - 5292397 "Change Sales Code after Postg."

    Caption = 'Jobs Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Job Nos."; Code[10])
        {
            Caption = 'Job Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Apply Usage Link by Default"; Boolean)
        {
            Caption = 'Apply Usage Link by Default';
        }
        field(4; "Default WIP Method"; Code[20])
        {
            Caption = 'Default WIP Method';
            TableRelation = "Job WIP Method".Code;
        }
        field(5; "Default Job Posting Group"; Code[10])
        {
            Caption = 'Default Job Posting Group';
            TableRelation = "Job Posting Group".Code;
        }
        field(6; "Default WIP Posting Method"; Option)
        {
            Caption = 'Default WIP Posting Method';
            OptionCaption = 'Per Job,Per Job Ledger Entry';
            OptionMembers = "Per Job","Per Job Ledger Entry";
        }
        field(1001; "Automatic Update Job Item Cost"; Boolean)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Automatic Update Job Item Cost';
        }
        field(5292332; "Job Version Start"; Code[10])
        {
            Caption = 'Job Version Start';
        }
        field(5292333; "WBS Format"; Option)
        {
            Caption = 'WBS Format';
            Description = ' ,Without Level 1,Components only';
            OptionCaption = ' ,Without Level 1,Components only';
            OptionMembers = " ","Without Level 1","Components only";
        }
        field(5292334; "Traffic Light Red"; Code[10])
        {
            Caption = 'Traffic Light Red';
            Description = 'TR "Job Signal"';
            TableRelation = "PR - Job Signal";
        }
        field(5292335; "Traffic Light Yellow"; Code[10])
        {
            Caption = 'Traffic Light Yellow';
            Description = 'TR "Job Signal"';
            TableRelation = "PR - Job Signal";
        }
        field(5292336; "Traffic Light Green"; Code[10])
        {
            Caption = 'Traffic Light Green';
            Description = 'TR "Job Signal"';
            TableRelation = "PR - Job Signal";
        }
        field(5292337; "Job Dimension"; Code[20])
        {
            Caption = 'Job Dimension';
            Description = 'TR Dimension';
            TableRelation = Dimension;
        }
        field(5292338; "Job Type Dimension"; Code[20])
        {
            Caption = 'Job Type Dimension';
            Description = 'TR Dimension';
            TableRelation = Dimension;
        }
        field(5292339; "Job Line Dimension 1"; Code[20])
        {
            Caption = 'Job Line Dimension 1';
            Description = 'TR Dimension';
            TableRelation = Dimension;
        }
        field(5292340; "Job Line Dimension 2"; Code[20])
        {
            Caption = 'Job Line Dimension 2';
            Description = 'TR Dimension';
            TableRelation = Dimension;
        }
        field(5292341; "Job Line Dimension 3"; Code[20])
        {
            Caption = 'Job Line Dimension 3';
            Description = 'TR Dimension';
            TableRelation = Dimension;
        }
        field(5292342; "Procurement Cost Source"; Option)
        {
            Caption = 'Procurement Cost Source';
            Description = ' ,Standard Costs,Job Line,Procurement Line';
            OptionCaption = ' ,Standard Costs,Job Line,Procurement Line';
            OptionMembers = " ","Standard Costs","Job Line","Procurement Line";
        }
        field(5292343; "Realized % (Base)"; Option)
        {
            Caption = 'Realized % (Base)';
            Description = ' ,Quantity,Cost';
            OptionCaption = ' ,Quantity,Cost';
            OptionMembers = " ",Quantity,Cost;
        }
        field(5292344; "Job Shipment Nos."; Code[10])
        {
            Caption = 'Job Shipment Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292345; "Posted Job Shipment Nos."; Code[10])
        {
            Caption = 'Posted Job Shipment Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292346; "Job Order Nos."; Code[10])
        {
            Caption = 'Job Order Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292347; "Inv. Request Nos."; Code[10])
        {
            Caption = 'Inv. Requests Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292348; "Job Journal Inventory Requests"; Code[10])
        {
            Caption = 'Job Journal Inventory Requests';
            Description = 'TR "Job Journal Template"';
            TableRelation = "Job Journal Template";
        }
        field(5292349; "Populate Qty. in Inv. Requests"; Boolean)
        {
            Caption = 'Populate Qty. in Inv. Requests';
        }
        field(5292350; "Inv. Request per Location"; Boolean)
        {
            Caption = 'Inv. Request per Location';
        }
        field(5292351; "Check Quantity in Inv. Req."; Boolean)
        {
            Caption = 'Check Quantity in Inv. Req.';
        }
        field(5292352; "Def. Prod. Order Status"; Option)
        {
            Caption = 'Def. Prod. Order Status';
            Description = ' ,,Firm Planned,Released';
            OptionCaption = ' ,,Firm Planned,Released';
            OptionMembers = " ",,"Firm Planned",Released;
        }
        field(5292353; "Posted Inv. Request Nos."; Code[10])
        {
            Caption = 'Posted Inv. Request Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292354; "Post released Quantity only"; Boolean)
        {
            Caption = 'Post released Quantity only';
        }
        field(5292355; "Req. Wksh. Template"; Code[10])
        {
            Caption = 'Req. Wksh. Template';
            Description = 'TR "Req. Wksh. Template"';
            TableRelation = "Req. Wksh. Template";
        }
        field(5292356; "Req. Wksh. Name"; Code[10])
        {
            Caption = 'Req. Wksh. Name';
            Description = 'TR "Requisition Wksh. Name"';
            TableRelation = "Requisition Wksh. Name".Name WHERE("Worksheet Template Name" = FIELD("Req. Wksh. Template"));
        }
        field(5292357; "Signal Monitor Tolerance %"; Decimal)
        {
            Caption = 'Signal Monitor Tolerance %';
            MaxValue = 100;
            MinValue = -100;
        }
        field(5292358; "Invoicing Nos."; Code[10])
        {
            Caption = 'Invoicing Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292359; "Default Sales Code"; Code[10])
        {
            Caption = 'Default Sales Code';
            Description = 'TR "Job Sales Code"';
            TableRelation = "PR - Job Sales Code";
        }
        field(5292360; "Set Job Status Quote"; Option)
        {
            Caption = 'Set Job Status Quote';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292361; "Set Job Status Order"; Option)
        {
            Caption = 'Set Job Status Order';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292362; "New Version per Status change"; Option)
        {
            Caption = 'New Version per Status change';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292363; "New Version per Sales Quote"; Option)
        {
            Caption = 'New Version per Sales Quote';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292364; "Set Budget with Sales Doc."; Option)
        {
            Caption = 'Set Budget with Sales Doc.';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292365; "Procurement with Sales Release"; Option)
        {
            Caption = 'Procurement with Sales Release';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292366; "Autom. Release Sales Order"; Option)
        {
            Caption = 'Autom. Release Sales Order';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292367; "General Job Work-Hour Template"; Code[10])
        {
            Caption = 'General Job Work-Hour Template';
            Description = 'TR "job Work-Hour Template"';
            TableRelation = "PR - Job Work-Hour Template";
        }
        field(5292368; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            Description = 'TR Base Calendar';
            TableRelation = "Base Calendar";
        }
        field(5292369; "Color Critical Path"; Integer)
        {
            Caption = 'Color Critical Path';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292370; "Color Milestone"; Integer)
        {
            Caption = 'Color Milestone';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292371; "Color Rem. Amount"; Integer)
        {
            Caption = 'Color Rem. Amount';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292372; "Color Version Update"; Integer)
        {
            Caption = 'Color Version Update';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292373; "Color Version New"; Integer)
        {
            Caption = 'Color Version New';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292374; "Color Version Change"; Integer)
        {
            Caption = 'Color Version Change';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292375; "Color Currency"; Integer)
        {
            Caption = 'Color Currency';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292376; "Color Passed Positions"; Integer)
        {
            Caption = 'Color Passed Positions';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292377; "Color Planning Simulated"; Integer)
        {
            Caption = 'Color Planning Simulated';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292378; "Color Planning Planned"; Integer)
        {
            Caption = 'Color Planning Planned';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292379; "Color Procurement"; Integer)
        {
            Caption = 'Color Procurement';
            Description = 'TR Integer';
            TableRelation = Integer;
        }
        field(5292380; "Location for Purchase"; Code[10])
        {
            Caption = 'Location for Purchase';
            Description = 'TR Location';
            TableRelation = Location;
        }
        field(5292385; "Disable Granule IDs"; Text[30])
        {
            Caption = 'Disable Granule IDs';
        }
        field(5292390; "Auto Complete Alternative Jobs"; Code[20])
        {
            Caption = 'Auto. Completion Reason Alternative Jobs';
            TableRelation = "PR - Completion Reason";
        }
        field(5292391; "Order Confirmation Required"; Boolean)
        {
            Caption = 'Order Confirmation Required';
        }
        field(5292392; "Default WIP Basis"; Option)
        {
            Caption = 'Default WIP Basis';
            OptionCaption = 'Salescode,WIP-Position,Job';
            OptionMembers = Salescode,"WIP-Position",Job;
        }
        field(5292393; "Change Sales Code after Postg."; Option)
        {
            Caption = 'Sales Code changeable after Posting';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292395; "Auto. close Proc. Line"; Boolean)
        {
            Caption = 'Auto. close Proc. Line';
        }
        field(5292396; "Cashflow Pmt. Code"; Code[10])
        {
            Caption = 'Cashflow Pmt. Code';
            TableRelation = "Payment Terms";
        }
        field(5292600; "GAEB Nos."; Code[10])
        {
            Caption = 'GAEB Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292605; "GAEB Product File Path DELETED"; Text[250])
        {
        }
        field(5292606; "GAEB Client File Path DELETED"; Text[250])
        {
        }
        field(5292607; "GAEB Debug On"; Boolean)
        {
            Caption = 'GAEB Debugger On';
        }
        field(5292608; "GAEB Debug Client Folder"; Text[250])
        {
            Caption = 'GAEB Debugger Client Folder';
        }
        field(5292609; "GAEB Log File Mode"; Option)
        {
            Caption = 'GAEB Log File Mode';
            OptionCaption = 'Off,Append,New';
            OptionMembers = Off,Append,New;
        }
        field(5292610; "GAEB Default UoM Type"; Option)
        {
            Caption = 'Default UoM Allocation Type';
            OptionCaption = 'Item,General';
            OptionMembers = Item,General;
        }
        field(5292611; "GAEB Default UoM No."; Code[20])
        {
            Caption = 'Default UoM Allocation No.';
            TableRelation = IF ("GAEB Default UoM Type" = CONST(Item)) Item
            ELSE
            IF ("GAEB Default UoM Type" = CONST(General)) "PR - General Component";
        }
        field(5292612; "GAEB Default UoM Sales Code"; Code[10])
        {
            Caption = 'Default UoM Allocation Sales Code';
            TableRelation = "PR - Job Sales Code";
        }
        field(5292650; "Autom. Project Dimension"; Code[20])
        {
            Caption = 'Autom. Project Dimension';
            Description = 'TR Dimension';
            TableRelation = Dimension;
        }
        field(5292651; "Auto Create PaC"; Option)
        {
            Caption = 'Auto Create PaC';
            Description = 'Never,Optional,Always';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292654; "Project Nos."; Code[10])
        {
            Caption = 'Project Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292655; "PaC Auto Insert Calc. Groups"; Option)
        {
            Caption = 'PaC Auto Insert Calc. Group Totals';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292660; "Wages Component"; Code[20])
        {
            Caption = 'Component Code Wages';
            TableRelation = "PR - General Component";
        }
        field(5292661; "Material Component"; Code[20])
        {
            Caption = 'Component Code Material';
            TableRelation = "PR - General Component";
        }
        field(5292662; "Ext. Service Component"; Code[20])
        {
            Caption = 'Component Code Ext. Service';
            TableRelation = "PR - General Component";
        }
        field(5292663; "Equipment Component"; Code[20])
        {
            Caption = 'Component Code Equipment';
            TableRelation = "PR - General Component";
        }
        field(5292664; "Other Component"; Code[20])
        {
            Caption = 'Component Code Other';
            TableRelation = "PR - General Component";
        }
        field(5292665; "Prec. Met. Surch. r. Unit Cost"; Boolean)
        {
            Caption = 'Prec. Met. Surch. r. Unit Cost';
        }
        field(5292670; "Measurement Nos."; Code[10])
        {
            Caption = 'Measurement Nos.';
            TableRelation = "No. Series";
        }
        field(5292671; "Measurement Level Required"; Boolean)
        {
            Caption = 'Measurement Level Required';
        }
        field(5292672; "Measurement Location Required"; Boolean)
        {
            Caption = 'Measurement Location Required';
        }
        field(5292673; "Measurement Price Source"; Option)
        {
            Caption = 'Measurement Price Source';
            OptionCaption = 'Sales Order,Bill of Quantities';
            OptionMembers = SalesOrder,Job;
        }
        field(5292674; "Project Account Dimension"; Code[20])
        {
            Caption = 'Project Account Dimension';
            TableRelation = Dimension;
        }
        field(5292675; "Autom. Proj. Acc. Dimension"; Option)
        {
            Caption = 'Autom. Proj. Acc. Dimension';
            OptionCaption = ' ,Job No.,No. Series, Project No. + Index (2-digit)';
            OptionMembers = " ","Job No.","No. Series","Project No. + Index (2-digit)";
        }
        field(5292676; "Project Account Nos."; Code[10])
        {
            Caption = 'Project Account Nos.';
            TableRelation = "No. Series";
        }
        field(5292677; "Default Job Type for PaC"; Code[10])
        {
            Caption = 'PaC Default Job Type';
            TableRelation = "PR - Job Type";
        }
        field(5292678; "Calc. Base Calc. with Order"; Option)
        {
            Caption = 'Calc. Base Calculation with Status Order';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(5292679; "Measurment Report ID"; Integer)
        {
            Caption = 'Measurment Report ID';
            TableRelation = Object.ID WHERE(Type = FILTER(Report));
        }
        field(5292680; "Exemption Certificate Code"; Code[30])
        {
            Caption = 'Exemption Certificate Code';
        }
        field(5292681; "Unit Price Rounding Precision"; Decimal)
        {
            Caption = 'Unit Price Rounding Precision';
            DecimalPlaces = 0 : 5;
            InitValue = 0.00001;
        }
        field(5292700; "BoQ Short Text Visible"; Boolean)
        {
            Caption = 'Show BoQ Short Text';
        }
        field(5292701; "BoQ Long Text Visible"; Boolean)
        {
            Caption = 'Show BoQ Long Text';
        }
        field(5292702; "Default OZ Mask"; Code[20])
        {
            Caption = 'Default OZ Mask';
        }
        field(5292703; "OZ Pos. Increase with"; Integer)
        {
            Caption = 'OZ Pos. Increase with';
            MinValue = 0;
        }
        field(5292704; "OZ Space instead of Null"; Boolean)
        {
            Caption = 'OZ Space instead of Null';
        }
        field(5292705; "Free OZ Allowed"; Boolean)
        {
            Caption = 'Free OZ Allowed';
        }
        field(5292750; "Process Nos."; Code[10])
        {
            Caption = 'Process Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292751; "MSP Path"; Text[250])
        {
            Caption = 'MSP Path';
        }
        field(5292752; "MSP Date Format"; Option)
        {
            Caption = 'MSP Date Format';
            Description = 'DDMMYY,MMDDYY';
            OptionCaption = 'DDMMYY,MMDDYY';
            OptionMembers = DDMMYY,MMDDYY;
        }
        field(5292753; "MSP Import Comp. No."; Code[20])
        {
            Caption = 'MSP Import Comp. No.';
            Description = 'MTR Type';
            TableRelation = IF ("MSP Import Comp. Type" = CONST(Service)) Resource
            ELSE
            IF ("MSP Import Comp. Type" = CONST(Item)) Item
            ELSE
            IF ("MSP Import Comp. Type" = CONST(General)) "PR - General Component";
        }
        field(5292754; "MSP Import Comp. Type"; Option)
        {
            Caption = 'MSP Import Comp. Type';
            Description = ' ,Service,Item,General';
            OptionCaption = ' ,Service,Item,General';
            OptionMembers = " ",Service,Item,General;
        }
        field(5292755; "Location for Inv. Requests"; Code[10])
        {
            Caption = 'Location for Inv. Requests';
            Description = 'TR Location';
            TableRelation = Location;
        }
        field(5292756; "Controlling Level"; Option)
        {
            Caption = 'Controlling Level';
            Description = 'Job,Calculation,Det. Calculation';
            OptionCaption = 'Job,Calculation,Det. Calculation';
            OptionMembers = Job,Calculation,"Det. Calculation";
        }
        field(5292757; "External Services Code"; Code[20])
        {
            Caption = 'External Services Code';
            Description = 'TR "General Component"';
            TableRelation = "PR - General Component";
        }
        field(5292758; "External Trav. Exp. Code"; Code[20])
        {
            Caption = 'External Trav. Exp. Code';
            Description = 'TR "General Component"';
            TableRelation = "PR - General Component";
        }
        field(5292759; "Insert Sales Ext. Text"; Boolean)
        {
            Caption = 'Insert Sales Ext. Text';
        }
        field(5292760; "Insert Purch. Ext. Text"; Boolean)
        {
            Caption = 'Insert Purch. Ext. Text';
        }
        field(5292761; "Autom. Job Dimension"; Option)
        {
            Caption = 'Autom. Job Dimension';
            Description = ' ,Job No.,Main Job No.';
            OptionCaption = ' ,Job No.,Main Job No.';
            OptionMembers = " ","Job No.","Main Job No.";
        }
        field(5292763; "Dim. from Cust. - Copy"; Boolean)
        {
            Caption = 'Dim. from Cust. - Copy';
        }
        field(5292764; "Dim. from Cust. - Overwrite"; Boolean)
        {
            Caption = 'Dim. from Cust. - Overwrite';
        }
        field(5292765; "Dim. from Person Responsible"; Boolean)
        {
            Caption = 'Dim. from Person Responsible';
        }
        field(5292766; "Default Unit of Measure Code"; Option)
        {
            Caption = 'Default Unit of Measure Code';
            Description = 'Base Unit of Measure,Sales Unit of Measure,Purchase Unit of Measure';
            OptionCaption = 'Base Unit of Measure,Sales Unit of Measure,Purchase Unit of Measure';
            OptionMembers = "Base Unit of Measure","Sales Unit of Measure","Purchase Unit of Measure";
        }
        field(5292767; "Calc. Schedule Nos."; Code[10])
        {
            Caption = 'Pattern Calc. Schedule Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292768; "Standard Calc. View"; Option)
        {
            Caption = 'Standard Calc. View';
            Description = 'Calculation C1,Calculation C2,Calculation C3,Calculation C4';
            OptionCaption = 'Calculation C1,Calculation C2,Calculation C3,Calculation C4';
            OptionMembers = "Calculation C1","Calculation C2","Calculation C3","Calculation C4";
        }
        field(5292769; "No New Calculation"; Boolean)
        {
            Caption = 'No New Calculation';
        }
        field(5292770; "Replace Description"; Boolean)
        {
            Caption = 'Replace Description';
        }
        field(5292771; "Replace Comments"; Boolean)
        {
            Caption = 'Replace Comments';
        }
        field(5292772; "Replace Cost/Price"; Boolean)
        {
            Caption = 'Replace Cost/Price';
        }
        field(5292773; "Set Quantity Zero"; Boolean)
        {
            Caption = 'Set Quantity Zero';
        }
        field(5292774; "Job Package Nos."; Code[10])
        {
            Caption = 'Job Package Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292775; "Schedule Entry Nos."; Code[10])
        {
            Caption = 'Schedule Entry Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292776; "Option Capacity"; Boolean)
        {
            Caption = 'Option Capacity';
        }
        field(5292777; "Option Planning"; Boolean)
        {
            Caption = 'Option Planning';
        }
        field(5292778; "Option Available"; Boolean)
        {
            Caption = 'Option Available';
        }
        field(5292779; "Option Available %"; Boolean)
        {
            Caption = 'Option Available %';
        }
        field(5292780; "Option Utilization %"; Boolean)
        {
            Caption = 'Option Utilization %';
        }
        field(5292781; "Option Time Entry"; Boolean)
        {
            Caption = 'Option Time Entry';
        }
        field(5292782; "Option Posted"; Boolean)
        {
            Caption = 'Option Posted';
        }
        field(5292783; "Option Simulation"; Boolean)
        {
            Caption = 'Option Simulation';
        }
        field(5292784; "Utilization Perc. Less"; Decimal)
        {
            Caption = 'Utilization %, <=';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5292785; "Utilization Perc. Greater"; Decimal)
        {
            Caption = 'Utilization %, >=';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5292786; "Procurement Planning required"; Boolean)
        {
            Caption = 'Procurement Planning required';
        }
        field(5292788; "Show Fields Process Planning"; Option)
        {
            Caption = 'Show Fields Process Planning';
            Description = ' ,Never,Minimum,Maximum';
            OptionCaption = ' ,Never,Minimum,Maximum';
            OptionMembers = " ",Never,Minimum,Maximum;
        }
        field(5292789; "Show Fields Procurement"; Option)
        {
            Caption = 'Show Fields Procurement';
            Description = ' ,Never,Minimum,Maximum';
            OptionCaption = ' ,Never,Minimum,Maximum';
            OptionMembers = " ",Never,Minimum,Maximum;
        }
        field(5292790; "Show Fields Job Shipment"; Option)
        {
            Caption = 'Show Fields Job Shipment';
            Description = ' ,Never,Minimum,Maximum';
            OptionCaption = ' ,Never,Minimum,Maximum';
            OptionMembers = " ",Never,Minimum,Maximum;
        }
        field(5292791; "Show Fields Invoicing"; Option)
        {
            Caption = 'Show Fields Invoicing';
            Description = ' ,Never,Minimum,Maximum';
            OptionCaption = ' ,Never,Minimum,Maximum';
            OptionMembers = " ",Never,Minimum,Maximum;
        }
        field(5292792; "Job Journal Time Entry"; Code[10])
        {
            Caption = 'Job Journal Time Entry';
            Description = 'TR "Job Journal Template"';
            TableRelation = "Job Journal Template";
        }
        field(5292793; "Job Jnl. Batch Ext. Time Entry"; Code[10])
        {
            Caption = 'Job Jnl. Batch Ext. Time Entry';
            Description = 'TR "Job Journal Batch"';
            TableRelation = "Job Journal Batch".Name WHERE("Journal Template Name" = FIELD("Job Journal Time Entry"));
        }
        field(5292794; "Logging Control"; Boolean)
        {
            Caption = 'Logging Control';
        }
        field(5292795; "Terminal Posting allowed"; Boolean)
        {
            Caption = 'Terminal Posting allowed';
        }
        field(5292796; "Default Purch. Position"; Code[20])
        {
            Caption = 'Default Purch. Position';
        }
        field(5292797; "Purch. Disc. reduce Unit Cost"; Boolean)
        {
            Caption = 'Purch. Disc. reduce Unit Cost';
        }
        field(5292798; "Procurement Nos."; Code[10])
        {
            Caption = 'Procurement Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
        field(5292799; "Shipment Plan Nos."; Code[10])
        {
            Caption = 'Shipment Plan Nos.';
            Description = 'TR "No. Series"';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

