table 42014830 "Servotion Arch Serv. Item Line"
{
    Caption = 'Archive Service Item Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
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
            CalcFormula = Exist ("Servotion Arch Serv. Com. Line" WHERE ("Table Name" = CONST ("Service Header"),
                                                                        "Table Subtype" = FIELD ("Document Type"),
                                                                        "No." = FIELD ("Document No."),
                                                                        "Table Line No." = FIELD ("Line No.")));
            Caption = 'Fault Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "Resolution Comment"; Boolean)
        {
            CalcFormula = Exist ("Servotion Arch Serv. Com. Line" WHERE ("Table Name" = CONST ("Service Header"),
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
            CalcFormula = Exist ("Servotion Arch Serv. Com. Line" WHERE ("Table Name" = CONST ("Service Header"),
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
            CalcFormula = Count ("Servotion Arch Serv. O. Alloc." WHERE ("Document Type" = FIELD ("Document Type"),
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
            CalcFormula = Count ("Servotion Arch Serv. O. Alloc." WHERE (Status = FIELD ("Allocation Status Filter"),
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
            TableRelation = "Servotion Arch Serv. Header"."No.";
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
        field(42012823; "User Filter"; Code[50])
        {
            Caption = 'User Filter';
            Description = 'MobileNAV';
            FieldClass = FlowFilter;
        }
        field(42012824; "Page No. Filter"; Integer)
        {
            Caption = 'Page No. Filter';
            Description = 'MobileNAV';
            FieldClass = FlowFilter;
        }
        field(42012826; RecGUID; Guid)
        {
            Caption = 'RecGUID';
            Description = 'MobileNAV';
        }
        field(42012827; "Last DateTime Modified Ticks"; Decimal)
        {
            CalcFormula = Lookup ("MobileNAV Offline Admin."."Last DateTime Modified Ticks" WHERE ("User ID" = FIELD ("User Filter"),
                                                                                                  "Page No." = FIELD ("Page No. Filter"),
                                                                                                  "Record GUID" = FIELD (RecGUID)));
            Caption = 'Last DateTime Modified Ticks';
            Description = 'MobileNAV';
            FieldClass = FlowField;
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
            Caption = 'Fixed';
            Description = 'SNST1.0.0.0';
            Editable = false;
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
            CalcFormula = Lookup ("Servotion Arch Serv. O. Alloc."."Allocation Date" WHERE ("Document No." = FIELD ("Document No."),
                                                                                           "Service Item Line No." = FIELD ("Line No."),
                                                                                           Status = CONST (Active),
                                                                                           "Resource No." = FIELD ("Resource Filter")));
            Caption = 'Allocation Date';
            Description = 'SNST1.0.0.28';
            FieldClass = FlowField;
        }
        field(42014833; "Allocation Start Time FF"; Time)
        {
            CalcFormula = Lookup ("Servotion Arch Serv. O. Alloc."."Starting Time" WHERE ("Document No." = FIELD ("Document No."),
                                                                                         "Service Item Line No." = FIELD ("Line No."),
                                                                                         Status = CONST (Active),
                                                                                         "Resource No." = FIELD ("Resource Filter")));
            Caption = 'Allocation Start Time';
            Description = 'SNST1.0.0.28';
            FieldClass = FlowField;
        }
        field(42014834; "Allocation Finish Time FF"; Time)
        {
            CalcFormula = Lookup ("Servotion Arch Serv. O. Alloc."."Finishing Time" WHERE ("Document No." = FIELD ("Document No."),
                                                                                          "Service Item Line No." = FIELD ("Line No."),
                                                                                          Status = CONST (Active),
                                                                                          "Resource No." = FIELD ("Resource Filter")));
            Caption = 'Allocation Finish Time';
            Description = 'SNST1.0.0.28';
            FieldClass = FlowField;
        }
        field(42014835; "Allocation Date"; Date)
        {
            Caption = 'Allocation Date';
            Description = 'SNST1.0.0.28';
        }
        field(42014836; "Allocation Start Time"; Time)
        {
            Caption = 'Allocation Start Time';
            Description = 'SNST1.0.0.28';
        }
        field(42014837; "Allocation Finish Time"; Time)
        {
            Caption = 'Allocation Finish Time';
            Description = 'SNST1.0.0.28';
        }
        field(42014851; "DateTime Archived"; DateTime)
        {
            Caption = 'Date Archived';
        }
        field(42014890; "Source Document Type"; Option)
        {
            Caption = 'Source Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund,Shipment';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund,Shipment;
        }
        field(42014891; "Source Document No."; Code[20])
        {
            Caption = 'Source Document No.';
        }
        field(42014900; "Fault Reason"; Text[50])
        {
            Caption = 'Fault Reason';
        }
        field(42014901; "Fault Area"; Text[50])
        {
            Caption = 'Fault Area';
        }
        field(42014902; Symptom; Text[50])
        {
            Caption = 'Symptom';
        }
        field(42014903; Fault; Text[80])
        {
            Caption = 'Fault';
        }
        field(42014904; Resolution; Text[80])
        {
            Caption = 'Resolution';
        }
        field(42014905; "Customer Symptom"; Text[50])
        {
            Caption = 'Customer Symptom';
        }
        field(42015000; "Ship-to Name"; Text[50])
        {
            Caption = 'Ship-to Name';
        }
        field(42015001; "Ship-to Name 2"; Text[50])
        {
            Caption = 'Ship-to Name 2';
        }
        field(42015002; "Ship-to Address"; Text[50])
        {
            Caption = 'Ship-to Address';
        }
        field(42015003; "Ship-to Address 2"; Text[50])
        {
            Caption = 'Ship-to Address 2';
        }
        field(42015004; "Ship-to City"; Text[30])
        {
            Caption = 'Ship-to City';
        }
        field(42015005; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
        }
        field(42015006; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
        }
        field(42015007; "Ship-to County"; Text[30])
        {
            Caption = 'Ship-to County';
        }
        field(42015008; "Ship-to Country/Region Code"; Code[10])
        {
            Caption = 'Ship-to Country/Region Code';
        }
        field(42015009; "Ship-to Phone"; Text[30])
        {
            Caption = 'Ship-to Phone';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Document Type", "Source Document No.")
        {
        }
        key(Key3; "Allocation Date", "Allocation Start Time")
        {
        }
    }

    fieldgroups
    {
    }
}

