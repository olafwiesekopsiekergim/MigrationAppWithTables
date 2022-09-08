table 99000754 "Work Center"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Key
    //                                     - "Component Type"
    // #PXW16.00:101 28.01.09 DEMSR.IST
    //   New field 5012700 "Sequence Planning" added
    //   New field 5012701 "Work Center Type" added
    //   New field 5012702 Rescheduling added
    //   New field 5012703 "Scheduling Required" added
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IST
    //   New field 5012710 "Mfg. Dimension Template Code" added
    //   New field 5012711 "Shortcut Mfg. Dim. 1 Code 1" added
    //   New field 5012712 "Shortcut Mfg. Dim. 2 Code 1" added
    //   New function "ValidateShortcutMfgDimCode" added
    //   New function "LookupShortcutMfgDimCodeNoUpd" added
    //   New function "ShowShortcutMfgDimCode" added
    //   New function "GetShortcutMfgDimCaptionClass" added
    //   Delete Work Center Plan. Dimensions and Default Mfg. Dimensions in OnDelete
    // 
    // #PXW16.00:107 04.02.09 DEMSR.IST
    //   New field 5012713 "PO Need (Work Center No.)"
    //   New field 5012714 "Work Center Group Filter"
    //   New field 5012715 "Shop Calendar Filter"
    // 
    // #PXW16.00.01.01:100 06.01.10 DEMSR.IST
    //   License Permission Check
    // 
    // #PXW16.00.01.02:T500 02.03.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PXW16.00.03:T500 21.07.11 DEMSR.IST
    //   License check on change "Sequence Planning" or "Work Center Type"
    // 
    // #PXW16.00.03.01:T502 29.03.12 DEMSR.IST
    //   Rename Default Mfg. Dimension on rename of Item
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   New field 5012650 "Calculation Group Code"
    // 
    // :PMW13.71:1:1
    //   New fields for tool management
    // 
    // :PMW13.71.02:1:1
    //   Fields "Cycle Time" and "Cycle Quantity" set to MinValue and InitValue = 1
    // 
    // :PMW14.00:2539:1
    //   Caption for "Tool Setup Time" und "Tool Setup Time Unit of Meas." changed
    // 
    // :PMW14.01:2523:1
    //   New field 5012462 "Sprue Bush Weight"
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02.01:24:1
    //   Correction of name and caption field 5012405
    // 
    // :PMW14.02.01:103:1
    //   New Work Center Type "Insert"
    //   New field 5012470 "Check Tool Usage"
    //   New field 5012471 "Check Insert Usage"
    // 
    // :PMW15.00:209:1
    //   New field 5012482 Allow Fix. from Sales Order
    // 
    // :PMW16.00:155:1
    //   Redesign of Sequence Planning --> #PXW16.00:101
    // 
    // :PMW16.00:157:1
    //   Redesign of Manufacturing Dimensions --> #PXW16.00:106
    // 
    // :PMW16.00:160:1
    //   Redesign of Detail Planning --> #PXW16.00:107
    // 
    // :PMW16.00:167:1
    //   Option of field "Work Center Type" expanded with Tool and Insert
    //   Changes due to tool and insert handling
    // 
    // :PMW16.00:174:1
    //   Update work center group in production structure line
    // 
    // #PMW16.00.01.02:T508 30.03.10 DEMSR.IST
    //   Changed TextConst in GetShortcutMfgDimCaptionClass
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation fields and programming rearranged --> #CAW16.00:T100
    // 
    // #PMW17.00:T101 07.01.13 DEMSR.IST
    //   Field "Tool kits" renamed to Toolkits
    //   Field 5012460 "Location Code" renamed to "Tool/Insert Location Code"
    //   Field 5012461 "Bin Code" renamed to "Tool/Insert Bin Code"
    // 
    // #PMW17.00.00.02:T502 13.05.13 DEMSR.IST
    //   TableRelation of field 5012461 "Tool/Insert Bin Code" corrected
    // 
    // #PMW17.10.00.01:T509 19.12.13 DEMSR.IST
    //   Fieldname and ENU caption of field 5012450 "Guaranteed Output Quantity" corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :DMW13.60.01:1:01 # Zusatzfeld 5013211 Kalkulationsgruppe
    // :DMW13.60.03:1:01 # Zusatzfelder für Fremdfertigung mit Beistellung:
    //  # 5013400 "Standard Verbindungcode"
    //  # 5013410 "Kreditoren Lagerortcode"
    // :DMW14.02:1:01 #    Das Feld 5013400 darf jetzt auch gefüllt werden ohne weitere Überprüfung
    // :DMW14.03:1:01 #    TableRelation im Feld Kalkulationsgruppe geändert
    // #DMW16.00.02:T114 16.11.10 DEMSR.SSZ
    //   #Deleted "Calculation Group"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T107 03.06.15 DEMSR.SSZ
    //   #Completed OnDelete trigger with new table
    //   #New FlowField 5013420 "Subcontracting Price exist"
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)
    // 
    // #AMPW17.10:T100 17.10.13 DEMSR.IST
    //   Restore Object Version List

    Caption = 'Work Center';
    DataCaptionFields = "No.", Name;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(5; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(6; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(7; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(8; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(12; "Alternate Work Center"; Code[20])
        {
            Caption = 'Alternate Work Center';
            TableRelation = "Work Center";
        }
        field(14; "Work Center Group Code"; Code[10])
        {
            Caption = 'Work Center Group Code';
            TableRelation = "Work Center Group";
        }
        field(16; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(17; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(18; "Subcontractor No."; Code[20])
        {
            Caption = 'Subcontractor No.';
            TableRelation = Vendor;
        }
        field(19; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            MinValue = 0;
        }
        field(20; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(21; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            DecimalPlaces = 2 : 5;
            MinValue = 0;
        }
        field(22; "Queue Time"; Decimal)
        {
            Caption = 'Queue Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(23; "Queue Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Queue Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(26; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(27; Comment; Boolean)
        {
            CalcFormula = Exist ("Manufacturing Comment Line" WHERE ("Table Name" = CONST ("Work Center"),
                                                                    "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(31; Capacity; Decimal)
        {
            Caption = 'Capacity';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
        }
        field(32; Efficiency; Decimal)
        {
            Caption = 'Efficiency';
            DecimalPlaces = 0 : 5;
            InitValue = 100;
            MinValue = 0;
        }
        field(33; "Maximum Efficiency"; Decimal)
        {
            Caption = 'Maximum Efficiency';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(34; "Minimum Efficiency"; Decimal)
        {
            Caption = 'Minimum Efficiency';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(35; "Calendar Rounding Precision"; Decimal)
        {
            Caption = 'Calendar Rounding Precision';
            DecimalPlaces = 0 : 5;
            InitValue = 0.0001;
            MinValue = 0.0001;
            NotBlank = true;
        }
        field(36; "Simulation Type"; Option)
        {
            Caption = 'Simulation Type';
            OptionCaption = 'Moves,Moves When Necessary,Critical';
            OptionMembers = Moves,"Moves When Necessary",Critical;
        }
        field(37; "Shop Calendar Code"; Code[10])
        {
            Caption = 'Shop Calendar Code';
            TableRelation = "Shop Calendar";
        }
        field(38; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(39; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(40; "Work Shift Filter"; Code[10])
        {
            Caption = 'Work Shift Filter';
            FieldClass = FlowFilter;
            TableRelation = "Work Shift";
        }
        field(41; "Capacity (Total)"; Decimal)
        {
            CalcFormula = Sum ("Calendar Entry"."Capacity (Total)" WHERE ("Capacity Type" = CONST ("Work Center"),
                                                                         "No." = FIELD ("No."),
                                                                         "Work Shift Code" = FIELD ("Work Shift Filter"),
                                                                         Date = FIELD ("Date Filter")));
            Caption = 'Capacity (Total)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(42; "Capacity (Effective)"; Decimal)
        {
            CalcFormula = Sum ("Calendar Entry"."Capacity (Effective)" WHERE ("Capacity Type" = CONST ("Work Center"),
                                                                             "No." = FIELD ("No."),
                                                                             "Work Shift Code" = FIELD ("Work Shift Filter"),
                                                                             Date = FIELD ("Date Filter")));
            Caption = 'Capacity (Effective)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(44; "Prod. Order Need (Qty.)"; Decimal)
        {
            CalcFormula = Sum ("Prod. Order Capacity Need"."Allocated Time" WHERE ("Work Center No." = FIELD ("No."),
                                                                                  Status = FIELD ("Prod. Order Status Filter"),
                                                                                  Date = FIELD ("Date Filter"),
                                                                                  "Requested Only" = CONST (false)));
            Caption = 'Prod. Order Need (Qty.)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(45; "Prod. Order Need Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Prod. Order Routing Line"."Expected Operation Cost Amt." WHERE ("Work Center No." = FIELD ("No."),
                                                                                               Status = FIELD ("Prod. Order Status Filter")));
            Caption = 'Prod. Order Need Amount';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "Prod. Order Status Filter"; Option)
        {
            Caption = 'Prod. Order Status Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(50; "Unit Cost Calculation"; Option)
        {
            Caption = 'Unit Cost Calculation';
            OptionCaption = 'Time,Units';
            OptionMembers = Time,Units;
        }
        field(51; "Specific Unit Cost"; Boolean)
        {
            Caption = 'Specific Unit Cost';
        }
        field(52; "Consolidated Calendar"; Boolean)
        {
            Caption = 'Consolidated Calendar';
        }
        field(53; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            InitValue = Manual;
            OptionCaption = 'Manual,Forward,Backward';
            OptionMembers = Manual,Forward,Backward;
        }
        field(80; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(81; "Overhead Rate"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Overhead Rate';
        }
        field(82; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(83; County; Text[30])
        {
            Caption = 'County';
        }
        field(84; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(7300; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location.Code WHERE ("Use As In-Transit" = CONST (false),
                                                 "Bin Mandatory" = CONST (true));
        }
        field(7301; "Open Shop Floor Bin Code"; Code[20])
        {
            Caption = 'Open Shop Floor Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(7302; "To-Production Bin Code"; Code[20])
        {
            Caption = 'To-Production Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(7303; "From-Production Bin Code"; Code[20])
        {
            Caption = 'From-Production Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(5000200; "Project Account No. (Run)"; Code[20])
        {
            Caption = 'Project Account No. (Run)';
            TableRelation = "Project Account";
        }
        field(5000201; "Project Account No. (Setup)"; Code[20])
        {
            Caption = 'Project Account No. (Setup)';
            TableRelation = "Project Account";
        }
        field(5012405; Cavity; Integer)
        {
            Caption = 'Cavity';
            Description = ':PMW13.71:1:1';
            InitValue = 1;
            MinValue = 1;
        }
        field(5012406; "Cycle Time"; Decimal)
        {
            Caption = 'Cycle Time';
            DecimalPlaces = 0 : 5;
            Description = ':PMW13.71:1:1';
        }
        field(5012407; "Cycle Time Unit of Measure"; Code[10])
        {
            Caption = 'Cycle Time Unit of Measure';
            Description = ':PMW13.71:1:1';
            TableRelation = "Capacity Unit of Measure";
        }
        field(5012408; "Cycle Quantity"; Decimal)
        {
            Caption = 'Cycle Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':PMW13.71:1:1';
        }
        field(5012409; "Cycle Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Cycle Quantity Unit of Measure';
            Description = ':PMW13.71:1:1';
            TableRelation = "Unit of Measure".Code;
        }
        field(5012410; "Ramp-up time"; Decimal)
        {
            Caption = 'Ramp-up time';
            DecimalPlaces = 0 : 5;
            Description = ':PMW13.71:1:1';
            MinValue = 0;
        }
        field(5012411; "Ramp-up time Unit of Measure"; Code[10])
        {
            Caption = 'Ramp-up time Unit of Measure';
            Description = ':PMW13.71:1:1';
            TableRelation = "Capacity Unit of Measure";
        }
        field(5012412; "Tool Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.00:2539:1';
            MinValue = 0;
        }
        field(5012413; "Tool Setup Time Unit of Meas."; Code[10])
        {
            Caption = 'Setup Time Unit of Meas.';
            Description = ':PMW14.00:2539:1';
            TableRelation = "Capacity Unit of Measure";
        }
        field(5012414; "Acquisition Date"; Date)
        {
            Caption = 'Acquisition Date';
            Description = ':PMW13.71:1:1';
        }
        field(5012415; "Acquisition Cost"; Decimal)
        {
            Caption = 'Acquisition Cost';
            Description = ':PMW13.71:1:1';
        }
        field(5012420; "Physical Life"; DateFormula)
        {
            Caption = 'Physical Life';
            Description = ':PMW13.71:1:1';
        }
        field(5012421; "Projected Disposal Date"; Date)
        {
            Caption = 'Projected Disposal Date';
            Description = ':PMW13.71:1:1';
        }
        field(5012430; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            Description = ':PMW13.71:1:1';
            TableRelation = Customer."No.";
        }
        field(5012440; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Description = ':PMW13.71:1:1';
            TableRelation = Item."No.";
        }
        field(5012450; "Guaranteed Output Quantity"; Decimal)
        {
            Caption = 'Guaranteed Output Quantity';
            Description = ':PMW13.71:1:1';
        }
        field(5012451; "Guarant. Output Quanitity Unit"; Code[20])
        {
            Caption = 'Guaranteed Output Quanitity Unit';
            Description = ':PMW13.71:1:1';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            IF ("Item No." = FILTER ('')) "Unit of Measure".Code;
        }
        field(5012452; "Output Quantity"; Decimal)
        {
            CalcFormula = Sum ("Capacity Ledger Entry"."Output Quantity" WHERE ("No." = FIELD ("No."),
                                                                               "Item No." = FIELD ("Item No."),
                                                                               "Unit of Measure Code" = FIELD ("Guarant. Output Quanitity Unit")));
            Caption = 'Output Quantity';
            Description = ':PMW13.71:1:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012460; "Tool/Insert Location Code"; Code[20])
        {
            Caption = 'Tool/Insert Location Code';
            Description = ':PMW13.71:1:1';
            TableRelation = Location.Code;
        }
        field(5012461; "Tool/Insert Bin Code"; Code[20])
        {
            Caption = 'Tool/Insert Bin Code';
            Description = ':PMW13.71:1:1';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Tool/Insert Location Code"));
        }
        field(5012462; "Sprue Bush Weight"; Decimal)
        {
            Caption = 'Sprue Bush Weight';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:2523:1';
            MinValue = 0;
        }
        field(5012470; "Check Tool Usage"; Boolean)
        {
            Caption = 'Check Tool Usage';
            Description = ':PMW14.02.01:103:1';
        }
        field(5012471; "Check Insert Usage"; Boolean)
        {
            Caption = 'Check Insert Usage';
            Description = ':PMW14.02.01:103:1';
        }
        field(5012482; "Allow Fix. from Sales Order"; Boolean)
        {
            Caption = 'Allow Fix. from Sales Order';
            Description = ':PMW15.00:209:1';
        }
        field(5012493; "Shortcut Mfg. Dim. 1 Code 2"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Description = 'MFGDIM:PMW15.01:84:1';
            TableRelation = IF ("Work Center Type" = FILTER (" " | "Sequence Planning")) "Manufacturing Dimension Value".Code WHERE ("Work Center Mfg. Dimension No." = CONST (1))
            ELSE
            IF ("Work Center Type" = FILTER (Tool)) "Manufacturing Dimension Value".Code WHERE ("Tool Mfg. Dimension No." = CONST (1))
            ELSE
            IF ("Work Center Type" = FILTER (Insert)) "Manufacturing Dimension Value".Code WHERE ("Insert Mfg. Dimension No." = CONST (1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012494; "Shortcut Mfg. Dim. 2 Code 2"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Description = 'MFGDIM:PMW15.01:84:1';
            TableRelation = IF ("Work Center Type" = FILTER (" " | "Sequence Planning")) "Manufacturing Dimension Value".Code WHERE ("Work Center Mfg. Dimension No." = CONST (2))
            ELSE
            IF ("Work Center Type" = FILTER (Tool)) "Manufacturing Dimension Value".Code WHERE ("Tool Mfg. Dimension No." = CONST (2))
            ELSE
            IF ("Work Center Type" = FILTER (Insert)) "Manufacturing Dimension Value".Code WHERE ("Insert Mfg. Dimension No." = CONST (2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012495; "Shortcut Mfg. Dim. 1 Code 3"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Description = 'MFGDIM:PMW15.01:84:1';
            TableRelation = IF ("Work Center Type" = FILTER (" " | "Sequence Planning")) "Manufacturing Dimension Value".Code WHERE ("Work Center Mfg. Dimension No." = CONST (1))
            ELSE
            IF ("Work Center Type" = FILTER (Tool)) "Manufacturing Dimension Value".Code WHERE ("Tool Mfg. Dimension No." = CONST (1))
            ELSE
            IF ("Work Center Type" = FILTER (Insert)) "Manufacturing Dimension Value".Code WHERE ("Insert Mfg. Dimension No." = CONST (1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012496; "Shortcut Mfg. Dim. 2 Code 3"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Description = 'MFGDIM:PMW15.01:84:1';
            TableRelation = IF ("Work Center Type" = FILTER (" " | "Sequence Planning")) "Manufacturing Dimension Value".Code WHERE ("Work Center Mfg. Dimension No." = CONST (2))
            ELSE
            IF ("Work Center Type" = FILTER (Tool)) "Manufacturing Dimension Value".Code WHERE ("Tool Mfg. Dimension No." = CONST (2))
            ELSE
            IF ("Work Center Type" = FILTER (Insert)) "Manufacturing Dimension Value".Code WHERE ("Insert Mfg. Dimension No." = CONST (2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012600; Toolkits; Code[20])
        {
            Caption = 'Toolkits';
            Description = ':PMW13.71:1:1';
            TableRelation = "QC Test Header"."No.";
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00:T100';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(5012700; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = '#PXW16.00:101';
        }
        field(5012701; "Work Center Type"; Option)
        {
            Caption = 'Work Center Type';
            Description = '#PXW16.00:101';
            OptionCaption = ' ,Sequence Planning,Tool,Insert';
            OptionMembers = " ","Sequence Planning",Tool,Insert;
        }
        field(5012702; Rescheduling; Option)
        {
            Caption = 'Rescheduling';
            Description = '#PXW16.00:101';
            OptionCaption = 'Automatic,Manual';
            OptionMembers = Automatic,Manual;
        }
        field(5012703; "Scheduling Required"; Boolean)
        {
            Caption = 'Scheduling Required';
            Description = '#PXW16.00:101';
            Editable = false;
        }
        field(5012710; "Mfg. Dimension Template Code"; Code[10])
        {
            Caption = 'Mfg. Dimension Template Code';
            Description = '#PXW16.00:106';
            TableRelation = "Mfg. Dimension Template".Code;
        }
        field(5012711; "Shortcut Mfg. Dim. 1 Code 1"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Description = '#PXW16.00:106';
            TableRelation = IF ("Work Center Type" = FILTER (" " | "Sequence Planning")) "Manufacturing Dimension Value".Code WHERE ("Work Center Mfg. Dimension No." = CONST (1))
            ELSE
            IF ("Work Center Type" = FILTER (Tool)) "Manufacturing Dimension Value".Code WHERE ("Tool Mfg. Dimension No." = CONST (1))
            ELSE
            IF ("Work Center Type" = FILTER (Insert)) "Manufacturing Dimension Value".Code WHERE ("Insert Mfg. Dimension No." = CONST (1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012712; "Shortcut Mfg. Dim. 2 Code 1"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Description = '#PXW16.00:106';
            TableRelation = IF ("Work Center Type" = FILTER (" " | "Sequence Planning")) "Manufacturing Dimension Value".Code WHERE ("Work Center Mfg. Dimension No." = CONST (2))
            ELSE
            IF ("Work Center Type" = FILTER (Tool)) "Manufacturing Dimension Value".Code WHERE ("Tool Mfg. Dimension No." = CONST (2))
            ELSE
            IF ("Work Center Type" = FILTER (Insert)) "Manufacturing Dimension Value".Code WHERE ("Insert Mfg. Dimension No." = CONST (2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012713; "PO Need (Work Center No.)"; Decimal)
        {
            CalcFormula = Sum ("Prod. Order Capacity Need"."Allocated Time" WHERE (Type = CONST ("Work Center"),
                                                                                  "No." = FIELD ("No."),
                                                                                  Status = FILTER (Simulated .. Released),
                                                                                  Date = FIELD ("Date Filter"),
                                                                                  "Requested Only" = CONST (false)));
            Caption = 'PO Need (Work Center No.)';
            DecimalPlaces = 0 : 5;
            Description = '#PXW16.00:107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012714; "Work Center Group Filter"; Code[20])
        {
            Caption = 'Work Center Group Filter';
            Description = '#PXW16.00:107';
            FieldClass = FlowFilter;
            TableRelation = "Work Center Group";
        }
        field(5012715; "Shop Calendar Filter"; Code[20])
        {
            Caption = 'Shop Calendar Filter';
            Description = '#PXW16.00:107';
            FieldClass = FlowFilter;
            TableRelation = "Shop Calendar";
        }
        field(5013400; "Standard Routing Link"; Code[10])
        {
            Caption = 'Standard Routing Link';
            Description = ':DMW13.60.03:1:01';
            TableRelation = "Routing Link".Code;
        }
        field(5013410; "Vendor Location Code"; Code[10])
        {
            Caption = 'Vendor Location Code';
            Description = ':DMW13.60.03:1:01';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(5013420; "Subcontracting Prices Exist"; Boolean)
        {
            CalcFormula = Exist ("Subcontracting Price" WHERE ("Work Center No." = FIELD ("No.")));
            Caption = 'Subcontracting Prices Exist';
            Description = '#DMW18.00.01:T107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292332; "Job Calculation Group"; Code[10])
        {
            Caption = 'Job Calculation Group';
            Description = 'TR "Job Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(5292333; "Component Type"; Code[10])
        {
            Caption = 'Component Type';
            Description = 'TR "Component Type"';
            TableRelation = "PR - Component Type";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Work Center Group Code")
        {
        }
        key(Key4; "Subcontractor No.")
        {
        }
        key(Key5; Name)
        {
        }
        key(Key6; "Component Type")
        {
        }
    }

    fieldgroups
    {
    }
}

