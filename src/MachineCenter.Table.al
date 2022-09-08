table 99000758 "Machine Center"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Key:
    //                                     - Component Type
    // :PMW16.00:167:1
    //   # Filter in table relation of field "Work Center" added
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   New field 5012650 "Calculation Group Code"
    // 
    // #PMW16.00.02:T100 16.09.10 DEMSR.IST
    //   Calculation fields and programming rearranged --> #CAW16.00:T100
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #RENW16.00.00.01:T513 09.07.09 DEMSR.KHS
    //   Table Relations on "Capacity Unit of Measure" updated (Rental Rate Code = No)

    Caption = 'Machine Center';
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
        field(14; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center"."No." WHERE ("Work Center Type" = FILTER (" " | "Sequence Planning"));
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
            CalcFormula = Exist ("Manufacturing Comment Line" WHERE ("Table Name" = CONST ("Machine Center"),
                                                                    "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; Capacity; Decimal)
        {
            Caption = 'Capacity';
            DecimalPlaces = 0 : 5;
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
            CalcFormula = Sum ("Calendar Entry"."Capacity (Total)" WHERE ("Capacity Type" = CONST ("Machine Center"),
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
            CalcFormula = Sum ("Calendar Entry"."Capacity (Effective)" WHERE ("Capacity Type" = CONST ("Machine Center"),
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
            CalcFormula = Sum ("Prod. Order Capacity Need"."Allocated Time" WHERE (Type = CONST ("Machine Center"),
                                                                                  "No." = FIELD ("No."),
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
            CalcFormula = Sum ("Prod. Order Routing Line"."Expected Operation Cost Amt." WHERE (Type = CONST ("Machine Center"),
                                                                                               "No." = FIELD ("No."),
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
        field(50; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(52; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(53; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(54; "Fixed Scrap Quantity"; Decimal)
        {
            Caption = 'Fixed Scrap Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(55; "Scrap %"; Decimal)
        {
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(56; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(57; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(58; "Send-Ahead Quantity"; Decimal)
        {
            Caption = 'Send-Ahead Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(59; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            Description = '#RENW16.00.00.01:T513';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (false));
        }
        field(60; "Flushing Method"; Option)
        {
            Caption = 'Flushing Method';
            InitValue = Manual;
            OptionCaption = 'Manual,Forward,Backward';
            OptionMembers = Manual,Forward,Backward;
        }
        field(62; "Minimum Process Time"; Decimal)
        {
            Caption = 'Minimum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(63; "Maximum Process Time"; Decimal)
        {
            Caption = 'Maximum Process Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(64; "Concurrent Capacities"; Decimal)
        {
            Caption = 'Concurrent Capacities';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(65; "Item Filter"; Code[20])
        {
            Caption = 'Item Filter';
            FieldClass = FlowFilter;
            TableRelation = Item;
        }
        field(66; "Stop Code Filter"; Code[10])
        {
            Caption = 'Stop Code Filter';
            FieldClass = FlowFilter;
            TableRelation = Stop;
        }
        field(67; "Scrap Code Filter"; Code[10])
        {
            Caption = 'Scrap Code Filter';
            FieldClass = FlowFilter;
            TableRelation = Scrap;
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
            Editable = false;
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
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00:T100';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Capacity));
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
        key(Key3; "Work Center No.")
        {
        }
        key(Key4; "Component Type")
        {
        }
    }

    fieldgroups
    {
    }
}

