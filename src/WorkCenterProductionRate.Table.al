table 5012702 "Work Center Production Rate"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:103 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW16.00.03:T107 21.07.11 DEMSR.IST
    //   New field 50 "Entry No.", AutoIncrement = Yes
    // 
    // #PXW17.00:T201 19.11.12 DEMSR.IST
    //   Usage of Prod. Rate Comment Line, Prod. Rate Tool, Prod. Rate Personnel and
    //   Prod. Rate Quality Measure in connection with "Standard Task Code"
    //   New functions ShowComment, ShowTools, ShowPersonnel and ShowQualityMeasures
    // 
    // #PXW17.00.00.02:T501 07.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PXW17.00.00.02:T502 07.05.13 DEMSR.IST
    //   Expand item description and work center name fields to standard length
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :PMW16.00:167:1
    //   New field 5012400 "Tool No." added
    //   New field 5012401 "Tool Name" added
    //   New field 5012402 "Tool Setup Time" added
    //   New field 5012403 "Tool Setup Time Unit of Meas." added
    //   New field 5012404 "Insert No." added
    //   New field 5012405 "Insert Name" added
    //   New field 5012406 Cavity added
    //   New field 5012407 "Standard Tool" added
    //   New field 5012408 "Cycle Time" added
    //   New field 5012409 "Cycle Time Unit of Measure" added
    //   New field 5012410 "Cycle Quantity" added
    //   New field 5012411 "Cycle Quantity Unit of Measure" added
    //   New field 5012412 "Ramp-up time" added
    //   New field 5012413 "Ramp-up time Unit of Measure" added
    //   New field 5012414 "Sprue Bush Weight"
    //   New function CalculateProductionRate
    //   New function CalculateSetup
    //   New function ProdRateSetupTimesCalculable
    //   New function CalculateTimes
    //   Primary key expanded with "Tool No." and "Insert No."
    //   DataCaptionFields expanded with "Tool No." and "Tool Name"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.00.00.02:T503 14.05.13 DEMSR.IST
    //   Expand tool and insert name to standard lenght
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Work Center Production Rate';
    DataCaptionFields = "Item No.", "Item Description", "Item Category Code", "Work Center No.", "Work Center Name";

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(2; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            NotBlank = true;
            TableRelation = "Work Center" WHERE ("Work Center Type" = FILTER (" " | "Sequence Planning"));
        }
        field(3; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(7; "Item Description"; Text[50])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("Item No.")));
            Caption = 'Item Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Work Center Name"; Text[50])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Work Center No.")));
            Caption = 'Work Center Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(12; "Setup Time Unit of Measure"; Code[10])
        {
            Caption = 'Setup Time Unit of Measure';
            TableRelation = "Capacity Unit of Measure";
        }
        field(20; "Production Rate"; Decimal)
        {
            Caption = 'Production Rate';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(21; "Prod. Rate Unit of Measure"; Code[10])
        {
            Caption = 'Prod. Rate Unit of Measure';
            TableRelation = IF (Source = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            "Unit of Measure".Code;
        }
        field(22; "Prod. Rate per UOM"; Code[10])
        {
            Caption = 'Prod. Rate per UOM';
            TableRelation = "Capacity Unit of Measure";
        }
        field(23; "Production Rate Time"; Decimal)
        {
            BlankZero = true;
            Caption = 'Production Rate Time';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
            MinValue = 0;
            NotBlank = true;
        }
        field(24; "Fixed-Step Prod. Rate Time"; Boolean)
        {
            Caption = 'Fixed-Step Prod. Rate Time';
        }
        field(30; Source; Option)
        {
            Caption = 'Source';
            Editable = false;
            OptionCaption = ' ,Item,Item Category';
            OptionMembers = " ",Item,"Item Category";
        }
        field(40; "Standard Task Code"; Code[10])
        {
            Caption = 'Standard Task Code';
            TableRelation = "Standard Task";
        }
        field(50; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
            Description = '#PXW16.00.03:T107';
            Editable = false;
        }
        field(100; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
            MinValue = 0;
        }
        field(5012400; "Tool No."; Code[20])
        {
            Caption = 'Tool No.';
            Description = ':PMW16.00:167:1';
            TableRelation = "Work Center" WHERE ("Work Center Type" = CONST (Tool));
        }
        field(5012401; "Tool Name"; Text[50])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Tool No.")));
            Caption = 'Tool Name';
            Description = ':PMW16.00:167:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012402; "Tool Setup Time"; Decimal)
        {
            Caption = 'Tool Setup Time';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:167:1';
            MinValue = 0;
        }
        field(5012403; "Tool Setup Time Unit of Meas."; Code[10])
        {
            Caption = 'Tool Setup Time Unit of Meas.';
            Description = ':PMW16.00:167:1';
            TableRelation = "Capacity Unit of Measure";
        }
        field(5012404; "Insert No."; Code[20])
        {
            Caption = 'Insert No.';
            Description = ':PMW16.00:167:1';
            TableRelation = "Work Center" WHERE ("Work Center Type" = CONST (Insert));
        }
        field(5012405; "Insert Name"; Text[50])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Insert No.")));
            Caption = 'Insert Name';
            Description = ':PMW16.00:167:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5012406; Cavity; Integer)
        {
            Caption = 'Cavity';
            Description = ':PMW16.00:167:1';
            InitValue = 1;
            MinValue = 1;
        }
        field(5012407; "Standard Tool"; Boolean)
        {
            Caption = 'Standard Tool';
            Description = ':PMW16.00:167:1';
        }
        field(5012408; "Cycle Time"; Decimal)
        {
            Caption = 'Cycle Time';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:167:1';
            MinValue = 0;
        }
        field(5012409; "Cycle Time Unit of Measure"; Code[10])
        {
            Caption = 'Cycle Time Unit of Measure';
            Description = ':PMW16.00:167:1';
            TableRelation = "Capacity Unit of Measure";
        }
        field(5012410; "Cycle Quantity"; Decimal)
        {
            Caption = 'Cycle Quantity';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:167:1';
            MinValue = 0;
        }
        field(5012411; "Cycle Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Cycle Quantity Unit of Measure';
            Description = ':PMW16.00:167:1';
            TableRelation = "Unit of Measure";
        }
        field(5012412; "Ramp-up time"; Decimal)
        {
            Caption = 'Ramp-up time';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:167:1';
            MinValue = 0;
        }
        field(5012413; "Ramp-up time Unit of Measure"; Code[10])
        {
            Caption = 'Ramp-up time Unit of Measure';
            Description = ':PMW16.00:167:1';
            TableRelation = "Capacity Unit of Measure";
        }
        field(5012414; "Sprue Bush Weight"; Decimal)
        {
            Caption = 'Sprue Bush Weight';
            DecimalPlaces = 0 : 5;
            Description = ':PMW16.00:167:1';
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Item Category Code", "Work Center No.", "Tool No.", "Insert No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

