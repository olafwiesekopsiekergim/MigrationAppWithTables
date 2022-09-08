table 5901 "Service Item Line"
{
    // #RENW16.00.01:R170 15.10.09 DEMSR.KHS
    //   Internal Service Order
    // 
    // #RENW16.00.01:R065 15.10.09 DEMSR.KHS
    //   Operation Counters
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.01:T506 10.12.13 DEMSR.KHS
    //   Add Source Code Rental Management
    // 
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 3,4,5
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // cc|formatted documents (CCFD)
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // cc|translate (TNS)
    // 
    // * Dime.Scheduler - Standard Solutions - Service Management
    //   Added code to "Repair Status Code" - OnValidate()

    Caption = 'Service Item Line';
    Permissions = TableData "Loaner Entry" = rimd,
                  TableData "Service Order Allocation" = rimd;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
            TableRelation = "Service Header"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Service Item No."; Code[20])
        {
            Caption = 'Service Item No.';
            TableRelation = "Service Item"."No.";
        }
        field(4; "Service Item Group Code"; Code[10])
        {
            Caption = 'Service Item Group Code';
            TableRelation = "Service Item Group".Code;
        }
        field(5; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item."No.";
        }
        field(6; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(9; "Repair Status Code"; Code[10])
        {
            Caption = 'Repair Status Code';
            InitValue = 'INITIAL';
            TableRelation = "Repair Status";
        }
        field(10; Priority; Option)
        {
            Caption = 'Priority';
            OptionCaption = 'Low,Medium,High';
            OptionMembers = Low,Medium,High;
        }
        field(11; "Response Time (Hours)"; Decimal)
        {
            Caption = 'Response Time (Hours)';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Response Date"; Date)
        {
            Caption = 'Response Date';
        }
        field(13; "Response Time"; Time)
        {
            Caption = 'Response Time';
        }
        field(14; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(15; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(16; "Finishing Date"; Date)
        {
            Caption = 'Finishing Date';
        }
        field(17; "Finishing Time"; Time)
        {
            Caption = 'Finishing Time';
        }
        field(18; "Service Shelf No."; Code[10])
        {
            Caption = 'Service Shelf No.';
            TableRelation = "Service Shelf";
        }
        field(19; "Warranty Starting Date (Parts)"; Date)
        {
            Caption = 'Warranty Starting Date (Parts)';
        }
        field(20; "Warranty Ending Date (Parts)"; Date)
        {
            Caption = 'Warranty Ending Date (Parts)';
        }
        field(21; Warranty; Boolean)
        {
            Caption = 'Warranty';
        }
        field(22; "Warranty % (Parts)"; Decimal)
        {
            Caption = 'Warranty % (Parts)';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(23; "Warranty % (Labor)"; Decimal)
        {
            Caption = 'Warranty % (Labor)';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(24; "Warranty Starting Date (Labor)"; Date)
        {
            Caption = 'Warranty Starting Date (Labor)';
        }
        field(25; "Warranty Ending Date (Labor)"; Date)
        {
            Caption = 'Warranty Ending Date (Labor)';
        }
        field(26; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
            TableRelation = "Service Contract Header"."Contract No." WHERE ("Contract Type" = CONST (Contract));
        }
        field(27; "Location of Service Item"; Text[30])
        {
            CalcFormula = Lookup ("Service Item"."Location of Service Item" WHERE ("No." = FIELD ("Service Item No.")));
            Caption = 'Location of Service Item';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Loaner No."; Code[20])
        {
            Caption = 'Loaner No.';
            TableRelation = Loaner."No.";
        }
        field(29; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(30; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(31; "Fault Reason Code"; Code[10])
        {
            Caption = 'Fault Reason Code';
            TableRelation = "Fault Reason Code";
        }
        field(32; "Service Price Group Code"; Code[10])
        {
            Caption = 'Service Price Group Code';
            TableRelation = "Service Price Group";
        }
        field(33; "Fault Area Code"; Code[10])
        {
            Caption = 'Fault Area Code';
            TableRelation = "Fault Area";
        }
        field(34; "Symptom Code"; Code[10])
        {
            Caption = 'Symptom Code';
            TableRelation = "Symptom Code";
        }
        field(35; "Fault Code"; Code[10])
        {
            Caption = 'Fault Code';
            TableRelation = "Fault Code".Code WHERE ("Fault Area Code" = FIELD ("Fault Area Code"),
                                                     "Symptom Code" = FIELD ("Symptom Code"));
        }
        field(36; "Resolution Code"; Code[10])
        {
            Caption = 'Resolution Code';
            TableRelation = "Resolution Code";
        }
        field(37; "Fault Comment"; Boolean)
        {
            CalcFormula = Exist ("Service Comment Line" WHERE ("Table Name" = CONST ("Service Header"),
                                                              "Table Subtype" = FIELD ("Document Type"),
                                                              "No." = FIELD ("Document No."),
                                                              Type = CONST (Fault),
                                                              "Table Line No." = FIELD ("Line No.")));
            Caption = 'Fault Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "Resolution Comment"; Boolean)
        {
            CalcFormula = Exist ("Service Comment Line" WHERE ("Table Name" = CONST ("Service Header"),
                                                              "Table Subtype" = FIELD ("Document Type"),
                                                              "No." = FIELD ("Document No."),
                                                              Type = CONST (Resolution),
                                                              "Table Line No." = FIELD ("Line No.")));
            Caption = 'Resolution Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(41; "Service Item Loaner Comment"; Boolean)
        {
            CalcFormula = Exist ("Service Comment Line" WHERE ("Table Name" = CONST ("Service Header"),
                                                              "Table Subtype" = FIELD ("Document Type"),
                                                              "No." = FIELD ("Document No."),
                                                              Type = CONST ("Service Item Loaner"),
                                                              "Table Line No." = FIELD ("Line No.")));
            Caption = 'Service Item Loaner Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42; "Actual Response Time (Hours)"; Decimal)
        {
            Caption = 'Actual Response Time (Hours)';
            DecimalPlaces = 0 : 5;
        }
        field(43; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = 'Quote,Order';
            OptionMembers = Quote,"Order";
        }
        field(44; "Serv. Price Adjmt. Gr. Code"; Code[10])
        {
            Caption = 'Serv. Price Adjmt. Gr. Code';
            Editable = false;
            TableRelation = "Service Price Adjustment Group";
        }
        field(45; "Adjustment Type"; Option)
        {
            Caption = 'Adjustment Type';
            Editable = false;
            OptionCaption = 'Fixed,Maximum,Minimum';
            OptionMembers = "Fixed",Maximum,Minimum;
        }
        field(46; "Base Amount to Adjust"; Decimal)
        {
            Caption = 'Base Amount to Adjust';
            Editable = false;
        }
        field(60; "No. of Active/Finished Allocs"; Integer)
        {
            CalcFormula = Count ("Service Order Allocation" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                  "Document No." = FIELD ("Document No."),
                                                                  "Service Item Line No." = FIELD ("Line No."),
                                                                  "Resource No." = FIELD ("Resource Filter"),
                                                                  "Resource Group No." = FIELD ("Resource Group Filter"),
                                                                  "Allocation Date" = FIELD ("Allocation Date Filter"),
                                                                  Status = FILTER (Active | Finished)));
            Caption = 'No. of Active/Finished Allocs';
            Editable = false;
            FieldClass = FlowField;
        }
        field(61; "No. of Allocations"; Integer)
        {
            CalcFormula = Count ("Service Order Allocation" WHERE (Status = FIELD ("Allocation Status Filter"),
                                                                  "Resource No." = FIELD ("Resource Filter"),
                                                                  "Resource Group No." = FIELD ("Resource Group Filter"),
                                                                  "Document Type" = FIELD ("Document Type"),
                                                                  "Document No." = FIELD ("Document No."),
                                                                  "Service Item Line No." = FIELD ("Line No.")));
            Caption = 'No. of Allocations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "No. of Previous Services"; Integer)
        {
            CalcFormula = Count ("Service Shipment Item Line" WHERE ("Item No." = FIELD ("Item No."),
                                                                    "Serial No." = FIELD ("Serial No.")));
            Caption = 'No. of Previous Services';
            Editable = false;
            FieldClass = FlowField;
        }
        field(63; "Contract Line No."; Integer)
        {
            Caption = 'Contract Line No.';
            TableRelation = "Service Contract Line"."Line No." WHERE ("Contract Type" = CONST (Contract),
                                                                      "Contract No." = FIELD ("Contract No."));
        }
        field(64; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            Editable = false;
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Customer No."));
        }
        field(65; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            Editable = false;
            TableRelation = Customer."No.";
        }
        field(91; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(92; "Resource Filter"; Code[20])
        {
            Caption = 'Resource Filter';
            FieldClass = FlowFilter;
            TableRelation = Resource;
        }
        field(93; "Allocation Date Filter"; Date)
        {
            Caption = 'Allocation Date Filter';
            FieldClass = FlowFilter;
        }
        field(94; "Repair Status Code Filter"; Code[10])
        {
            Caption = 'Repair Status Code Filter';
            FieldClass = FlowFilter;
            TableRelation = "Repair Status".Code;
        }
        field(96; "Allocation Status Filter"; Option)
        {
            Caption = 'Allocation Status Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Nonactive,Active,Finished,Canceled,Reallocation Needed';
            OptionMembers = Nonactive,Active,Finished,Canceled,"Reallocation Needed";
        }
        field(97; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Editable = false;
            TableRelation = "Responsibility Center";
        }
        field(98; "Service Order Filter"; Code[20])
        {
            Caption = 'Service Order Filter';
            FieldClass = FlowFilter;
            TableRelation = "Service Header"."No.";
        }
        field(99; "Resource Group Filter"; Code[20])
        {
            Caption = 'Resource Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "Resource Group";
        }
        field(100; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(101; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(130; "Release Status"; Option)
        {
            Caption = 'Release Status';
            OptionCaption = 'Open,Released to Ship';
            OptionMembers = Open,"Released to Ship";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(50001; Servicebarcode; Code[10])
        {
            Description = '#AT';
        }
        field(50002; SignatureName; Text[50])
        {
            Caption = 'Name Signature';
            Description = '#AT';
        }
        field(50003; "Gebäude"; Text[50])
        {
            CalcFormula = Lookup ("Service Item"."Gebäude" WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50004; Ebene; Text[30])
        {
            CalcFormula = Lookup ("Service Item".Ebene WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50005; Raum; Text[30])
        {
            CalcFormula = Lookup ("Service Item".Raum WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50006; Standort; Text[30])
        {
            CalcFormula = Lookup ("Service Item"."Location of Service Item" WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50010; InternerKommentar; Integer)
        {
            CalcFormula = Count ("Service Comment Line" WHERE ("No." = FIELD ("Document No."),
                                                              Type = CONST (Internal),
                                                              "Table Line No." = FIELD ("Line No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50020; Modelnr; Code[20])
        {
            CalcFormula = Lookup ("Service Item".Model WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50021; Seriennr; Code[20])
        {
            CalcFormula = Lookup ("Service Item"."Serial No." WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50022; "Customer Service ID"; Code[20])
        {
            CalcFormula = Lookup ("Service Item"."Customer Service ID" WHERE ("No." = FIELD ("Service Item No.")));
            Description = '#AT';
            FieldClass = FlowField;
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
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
        field(5072450; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            Description = '#RENW16.00.01:R170';
            TableRelation = "Gen. Product Posting Group";
        }
        field(5072451; "Operation Hours"; Integer)
        {
            Caption = 'Operation Hours';
            Description = '#RENW16.00.01:R065';
        }
        field(5072452; "Operation Miles"; Integer)
        {
            Caption = 'Operation Miles';
            Description = '#RENW16.00.01:R065';
        }
        field(5305932; "FD Blob"; BLOB)
        {
            Caption = 'FD Blob';
            Description = 'CCFD';
        }
        field(42014822; "Promised Date"; Date)
        {
            Caption = 'Promised Date';
            Description = 'SNST1.0.0.0';
        }
        field(42014823; "Promised Start Time"; Time)
        {
            Caption = 'Promised Start Time';
            Description = 'SNST1.0.0.0';
        }
        field(42014824; "Promised Finish Time"; Time)
        {
            Caption = 'Promised Finish Time';
            Description = 'SNST1.0.0.0';
        }
        field(42014825; "Fixed"; Boolean)
        {
            CalcFormula = Exist ("Service Order Allocation" WHERE (Posted = CONST (false),
                                                                  Status = CONST (Active),
                                                                  "Document Type" = CONST (Order),
                                                                  "Document No." = FIELD ("Document No."),
                                                                  "Service Item Line No." = FIELD ("Line No."),
                                                                  "Allocation Date" = FIELD ("Date Filter"),
                                                                  Fixed = CONST (true),
                                                                  "Resource No." = FILTER (<> '')));
            Caption = 'Fixed';
            Description = 'SNST1.0.0.0';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42014826; "Estimated Duration (Hours)"; Decimal)
        {
            Caption = 'Estimated Duration (Hours)';
            Description = 'SNST1.0.0.0';
        }
        field(42014827; "Customer Symptom Code"; Code[10])
        {
            Caption = 'Customer Symptom Code';
            Description = 'SNST1.0.0.0';
            TableRelation = "Servotion Symptom Code";
        }
        field(42014828; Signature; BLOB)
        {
            Caption = 'Signature';
            Description = 'SNST1.0.0.26';
            SubType = Bitmap;
        }
        field(42014829; "SN Picture 1"; BLOB)
        {
            Caption = 'Picture 1';
            Description = 'SNST1.0.0.26';
            SubType = Bitmap;
        }
        field(42014830; "SN Picture 2"; BLOB)
        {
            Caption = 'Picture 2';
            Description = 'SNST1.0.0.26';
            SubType = Bitmap;
        }
        field(42014831; "SN Picture 3"; BLOB)
        {
            Caption = 'Picture 3';
            Description = 'SNST1.0.0.26';
            SubType = Bitmap;
        }
        field(42014832; "Allocation Date FF"; Date)
        {
            CalcFormula = Lookup ("Service Order Allocation"."Allocation Date" WHERE ("Document No." = FIELD ("Document No."),
                                                                                     "Service Item Line No." = FIELD ("Line No."),
                                                                                     Status = CONST (Active),
                                                                                     "Resource No." = FIELD ("Resource Filter")));
            Caption = 'Allocation Date';
            Description = 'SNST1.0.0.28';
            FieldClass = FlowField;
        }
        field(42014833; "Allocation Start Time FF"; Time)
        {
            CalcFormula = Lookup ("Service Order Allocation"."Starting Time" WHERE ("Document No." = FIELD ("Document No."),
                                                                                   "Service Item Line No." = FIELD ("Line No."),
                                                                                   Status = CONST (Active),
                                                                                   "Resource No." = FIELD ("Resource Filter")));
            Caption = 'Allocation Start Time';
            Description = 'SNST1.0.0.28';
            FieldClass = FlowField;
        }
        field(42014834; "Allocation Finish Time FF"; Time)
        {
            CalcFormula = Lookup ("Service Order Allocation"."Finishing Time" WHERE ("Document No." = FIELD ("Document No."),
                                                                                    "Service Item Line No." = FIELD ("Line No."),
                                                                                    Status = CONST (Active),
                                                                                    "Resource No." = FIELD ("Resource Filter")));
            Caption = 'Allocation Finish Time';
            Description = 'SNST1.0.0.28';
            FieldClass = FlowField;
        }
        field(42014835; "Allocation Date"; Date)
        {
            Description = 'SNST1.0.0.28';
        }
        field(42014836; "Allocation Start Time"; Time)
        {
            Description = 'SNST1.0.0.28';
        }
        field(42014837; "Allocation Finish Time"; Time)
        {
            Description = 'SNST1.0.0.28';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Line No.", "Document Type")
        {
        }
        key(Key3; "Document Type", "Document No.", "Service Item No.", "Contract No.", "Contract Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key4; "Service Item No.")
        {
        }
        key(Key5; "Document Type", "Document No.", "Response Date", "Response Time")
        {
        }
        key(Key6; "Response Date", "Response Time", Priority)
        {
        }
        key(Key7; "Loaner No.")
        {
        }
        key(Key8; "Document Type", "Document No.", "Starting Date", "Starting Time")
        {
            MaintainSQLIndex = false;
        }
        key(Key9; "Document Type", "Document No.", "Finishing Date", "Finishing Time")
        {
            MaintainSQLIndex = false;
        }
        key(Key10; "Fault Reason Code")
        {
        }
        key(Key11; "Contract No.")
        {
        }
        key(Key12; "Repair Status Code", "Promised Date")
        {
        }
        key(Key13; "Allocation Date", "Allocation Start Time")
        {
        }
    }

    fieldgroups
    {
    }
}

