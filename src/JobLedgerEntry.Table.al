table 169 "Job Ledger Entry"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    //                                     New Keys:
    //                                     - Job No.,Job Line Unique No.,Entry Type,Posting Date,Type,No.,Travel Code,
    //                                        Special Position,Provided Quantity
    //                                     - Job No.,Job Line Unique No.,Entry Type,Posting Date,Resource Group No.,
    //                                        Travel Code,Special Position
    //                                     - Job No.,Job Procurement No.,Entry Type,Posting Date,Special Position
    //                                     - Job No.,Sales Position Unique No.,Entry Type,Posting Date,Special Position
    //                                     - Posted Inv. Request No.
    //                                     - Job No.,Posted Inv. Request No.
    //                                     - Ledger Entry Type,Ledger Entry No.
    //                                     - Job Process No.,Entry Type,Posting Date
    //                                     - Job No.,Job Line Unique No.,Entry Type,Posting Date,Resource Group No.,Travel Code
    //                                     - "WIP Job No.","WIP Position No.","Entry Type","Posting Date","Special Position","Activatable WIP"
    //                                     Update Field:
    //                                     - Field 64: Usage,Sale,Job Shipment
    //                                            WIP Job No.,WIP Position No.,Entry Type,Posting
    //                                            Date,Special Position
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    // 
    // TrdngUnit:PMW15.00:219:1
    //   # New field 5012500 "Lot No. Trading Unit"
    //   # New field 5012501 "Trading Unit No."

    Caption = 'Job Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Resource,Item,G/L Account';
            OptionMembers = Resource,Item,"G/L Account";
        }
        field(7; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(11; "Direct Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost (LCY)';
        }
        field(12; "Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost (LCY)';
            Editable = false;
        }
        field(13; "Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost (LCY)';
            Editable = false;
        }
        field(14; "Unit Price (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price (LCY)';
            Editable = false;
        }
        field(15; "Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price (LCY)';
            Editable = false;
        }
        field(16; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            Editable = false;
            TableRelation = "Resource Group";
        }
        field(17; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Resource)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."));
        }
        field(20; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(29; "Job Posting Group"; Code[10])
        {
            Caption = 'Job Posting Group';
            TableRelation = "Inventory Posting Group";
        }
        field(30; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(31; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(32; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(33; "Customer Price Group"; Code[10])
        {
            Caption = 'Customer Price Group';
            TableRelation = "Customer Price Group";
        }
        field(37; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(38; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(60; "Amt. to Post to G/L"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amt. to Post to G/L';
        }
        field(61; "Amt. Posted to G/L"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amt. Posted to G/L';
        }
        field(64; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Description = 'Usage,Sale,Job Shipment';
            OptionCaption = 'Usage,Sale,Job Shipment';
            OptionMembers = Usage,Sale,"Job Shipment";
        }
        field(75; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(76; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(77; "Transaction Type"; Code[10])
        {
            Caption = 'Transaction Type';
            TableRelation = "Transaction Type";
        }
        field(78; "Transport Method"; Code[10])
        {
            Caption = 'Transport Method';
            TableRelation = "Transport Method";
        }
        field(79; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(80; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(81; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(82; "Entry/Exit Point"; Code[10])
        {
            Caption = 'Entry/Exit Point';
            TableRelation = "Entry/Exit Point";
        }
        field(83; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(84; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(85; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(86; "Transaction Specification"; Code[10])
        {
            Caption = 'Transaction Specification';
            TableRelation = "Transaction Specification";
        }
        field(87; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(88; "Additional-Currency Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Additional-Currency Total Cost';
        }
        field(89; "Add.-Currency Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Add.-Currency Total Price';
        }
        field(94; "Add.-Currency Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Add.-Currency Line Amount';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(1000; "Job Task No."; Code[20])
        {
            Caption = 'Job Task No.';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(1001; "Line Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount (LCY)';
            Editable = false;
        }
        field(1002; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(1003; "Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost';
        }
        field(1004; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(1005; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
        }
        field(1006; "Line Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Amount';
        }
        field(1007; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
        }
        field(1008; "Line Discount Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount (LCY)';
            Editable = false;
        }
        field(1009; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(1010; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
        field(1016; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(1017; "Ledger Entry Type"; Option)
        {
            Caption = 'Ledger Entry Type';
            OptionCaption = ' ,Resource,Item,G/L Account';
            OptionMembers = " ",Resource,Item,"G/L Account";
        }
        field(1018; "Ledger Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'Ledger Entry No.';
            TableRelation = IF ("Ledger Entry Type" = CONST (Resource)) "Res. Ledger Entry"
            ELSE
            IF ("Ledger Entry Type" = CONST (Item)) "Item Ledger Entry"
            ELSE
            IF ("Ledger Entry Type" = CONST ("G/L Account")) "G/L Entry";
        }
        field(1019; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(1020; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(1021; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
        }
        field(1022; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(1023; "Original Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Original Unit Cost (LCY)';
            Editable = false;
        }
        field(1024; "Original Total Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Total Cost (LCY)';
            Editable = false;
        }
        field(1025; "Original Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Original Unit Cost';
        }
        field(1026; "Original Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Total Cost';
        }
        field(1027; "Original Total Cost (ACY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Total Cost (ACY)';
        }
        field(1028; Adjusted; Boolean)
        {
            Caption = 'Adjusted';
        }
        field(1029; "DateTime Adjusted"; DateTime)
        {
            Caption = 'DateTime Adjusted';
        }
        field(5402; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(5403; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(5404; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(5405; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
        }
        field(5900; "Service Order No."; Code[20])
        {
            Caption = 'Service Order No.';
        }
        field(5901; "Posted Service Shipment No."; Code[20])
        {
            Caption = 'Posted Service Shipment No.';
        }
        field(5012500; "Lot No. Trading Unit"; Code[20])
        {
            Caption = 'Lot No. Trading Unit';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5012501; "Trading Unit No."; Code[20])
        {
            Caption = 'Trading Unit No.';
            Description = 'TrdngUnit:PMW15.00:219:1';
        }
        field(5292332; "Posted Inv. Request No."; Code[20])
        {
            Caption = 'Posted Inv. Request No.';
            Description = 'TR Posted Inv. Request';
            TableRelation = "PR - Posted Inv. Request";
        }
        field(5292333; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5292334; "Indirect Cost %"; Decimal)
        {
            Caption = 'Indirect Cost %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(5292335; "Extra Charge %"; Decimal)
        {
            Caption = 'Extra Charge %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292336; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292337; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292338; Comment; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (3),
                                                               Code1 = FIELD ("Job No."),
                                                               Int1 = FIELD ("Job Line Unique No."),
                                                               Type = CONST (Processing)));
            Caption = 'Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292339; "Posted Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Posted Job Comment Line" WHERE ("Table ID" = CONST (169),
                                                                      "Line No." = FIELD ("Entry No.")));
            Caption = 'Posted Job Comment';
            Description = 'CF Posted Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292340; "Special Position"; Option)
        {
            Caption = 'Special Position';
            Description = ' ,,,Supplement,,Increase,Reclamation';
            OptionCaption = ' ,,,Supplement,,Increase,Reclamation';
            OptionMembers = " ",,,Supplement,,Increase,Reclamation;
        }
        field(5292341; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(5292342; "Time From"; Time)
        {
            Caption = 'Time From';
        }
        field(5292343; "Time To"; Time)
        {
            Caption = 'Time To';
        }
        field(5292344; "Break"; Decimal)
        {
            Caption = 'Break';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292345; "Time Quantity"; Time)
        {
            Caption = 'Time';
        }
        field(5292346; "Outstanding Qty. (Base)"; Decimal)
        {
            Caption = 'Outstanding Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292347; "Total Planned Qty. (Base)"; Decimal)
        {
            Caption = 'Total Planned Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292348; "Planning Resource No."; Code[20])
        {
            Caption = 'Planning Resource No.';
            Description = 'ne, TR "Planning Resource"';
            Editable = false;
            TableRelation = "PR - Planning Resource";
        }
        field(5292349; "Processing Hours"; Decimal)
        {
            Caption = 'Processing Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
        }
        field(5292350; "Job Order No."; Code[20])
        {
            Caption = 'Job Order No.';
            Description = 'TR "Job Order"';
            TableRelation = Job;
        }
        field(5292351; "Job Procurement No."; Code[20])
        {
            Caption = 'Job Procurement No.';
            Description = 'TR "Job Line Procurement"';
            TableRelation = "PR - Job Line Procurement";
        }
        field(5292352; "Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost (LCY)';
        }
        field(5292353; "Procurement Finished"; Boolean)
        {
            Caption = 'Procurement Finished';
        }
        field(5292354; "Source Channel"; Option)
        {
            Caption = 'Source Channel';
            Description = ' ,Time Entry,Purchase,Inventory Request,Job Shipment,Service';
            OptionCaption = ' ,Time Entry,Purchase,Inventory Request,Job Shipment,Service';
            OptionMembers = " ","Time Entry",Purchase,"Inventory Request","Job Shipment",Service;
        }
        field(5292355; "Quantity Sale"; Decimal)
        {
            Caption = 'Quantity Sale';
            DecimalPlaces = 0 : 5;
        }
        field(5292356; "Quantity Sale (Base)"; Decimal)
        {
            Caption = 'Quantity Sale (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(5292357; "Limited Quantity"; Boolean)
        {
            Caption = 'Limited Quantity';
        }
        field(5292358; "Sales Position Unique No."; Integer)
        {
            Caption = 'Sales Position Unique No.';
            Description = 'TR "Job Line Budget"';
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Sales Position Unique No."));
        }
        field(5292359; "Sale Release"; Boolean)
        {
            Caption = 'Sale Release';
        }
        field(5292360; "Invoicing Planned"; Boolean)
        {
            Caption = 'Invoicing Planned';
            Editable = false;
        }
        field(5292361; "Invoicing Used"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Line Invoicing" WHERE ("Job Ledger Entry No." = FIELD ("Entry No.")));
            Caption = 'Invoicing Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292362; "Invoicing Trigger"; Option)
        {
            Caption = 'Invoicing Trigger';
            Description = ' ,Planning Invoicing,Enter in Job Journal Line,Posting Process';
            OptionCaption = ' ,Planning Invoicing,Enter in Job Journal Line,Posting Process';
            OptionMembers = " ","Planning Invoicing","Enter in Job Journal Line","Posting Process";
        }
        field(5292363; "Sales Price Source"; Option)
        {
            Caption = 'Sales Price Source';
            Description = ' ,Job Line,Standard Prices,Cost Plus';
            OptionCaption = ' ,Job Line,Standard Prices,Cost Plus';
            OptionMembers = " ","Job Line","Standard Prices","Cost Plus";
        }
        field(5292364; "Job Shipment Plan No."; Code[20])
        {
            Caption = 'Job Shipment Plan No.';
            Description = 'TR "Job Line Shipment"';
            TableRelation = Job;
        }
        field(5292365; "Travel Code"; Code[10])
        {
            Caption = 'Travel Code';
            Description = 'TR Job Travel Code';
            TableRelation = "PR - Job Travel Code".Code WHERE (Module = CONST (Job),
                                                               "Module No." = FIELD ("Job No."));
        }
        field(5292366; Reimbursement; Boolean)
        {
            Caption = 'Reimbursement';
        }
        field(5292367; Reimbursed; Boolean)
        {
            Caption = 'Reimbursed';
        }
        field(5292368; "Completed %"; Decimal)
        {
            Caption = 'Completed %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5292369; "Provided Quantity"; Boolean)
        {
            Caption = 'Provided Quantity';
        }
        field(5292370; "Shipment Call"; Option)
        {
            Caption = 'Shipment Call';
            Description = ' ,Shipment Plan,Shipment Line';
            OptionCaption = ' ,Shipment Plan,Shipment Line';
            OptionMembers = " ","Shipment Plan","Shipment Line";
        }
        field(5292371; "Main Job No."; Code[20])
        {
            Caption = 'Main Job No.';
            TableRelation = Job;
        }
        field(5292372; "Direct Job Shipment"; Boolean)
        {
            Caption = 'Direct Job Shipment';
        }
        field(5292373; "Shipment Direction"; Option)
        {
            Caption = 'Shipment Direction';
            Description = ' ,Inbound,Outbound';
            Editable = false;
            OptionCaption = ' ,Inbound,Outbound';
            OptionMembers = " ",Inbound,Outbound;
        }
        field(5292650; "Cost Type"; Option)
        {
            Caption = 'Cost Type';
            Editable = false;
            OptionCaption = ' ,Wages,Material,External Service,Equipment,Other';
            OptionMembers = " ",Wages,Material,"External Service",Equipment,Other;
        }
        field(5292750; "Job Process No."; Code[20])
        {
            Caption = 'Job Process No.';
            Description = 'TR "Job Line Process"';
            TableRelation = "PRPL - Job Line Process";
        }
        field(5292751; "WIP Job No."; Code[20])
        {
            Caption = 'WIP Job No.';
            TableRelation = Job;
        }
        field(5292752; "WIP Position No."; Integer)
        {
            Caption = 'WIP Position No.';
        }
        field(5292753; "Activatable WIP"; Boolean)
        {
            Caption = 'Activatable WIP';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Job Task No.", "Entry Type", "Posting Date")
        {
            SumIndexFields = "Total Cost (LCY)", "Line Amount (LCY)";
        }
        key(Key3; "Document No.", "Posting Date")
        {
        }
        key(Key4; "Job No.", "Posting Date")
        {
        }
        key(Key5; "Entry Type", Type, "No.", "Posting Date")
        {
        }
        key(Key6; "Service Order No.", "Posting Date")
        {
        }
        key(Key7; "Job No.", "Entry Type", Type, "No.")
        {
        }
        key(Key8; Type, "Entry Type", "Country/Region Code", "Source Code", "Posting Date")
        {
        }
        key(Key9; "Job No.", "Job Line Unique No.", "Entry Type", "Posting Date", Type, "No.", "Travel Code", "Special Position", "Provided Quantity")
        {
            SumIndexFields = "Quantity (Base)", "Total Direct Cost (LCY)", "Total Cost (LCY)", "Total Price (LCY)", "Line Amount (LCY)", "Processing Hours";
        }
        key(Key10; "Job No.", "Job Line Unique No.", "Entry Type", "Posting Date", "Resource Group No.", "Travel Code", "Special Position")
        {
            SumIndexFields = "Quantity (Base)", "Total Direct Cost (LCY)", "Total Cost (LCY)", "Total Price (LCY)", "Line Amount (LCY)", "Processing Hours";
        }
        key(Key11; "Job No.", "Job Procurement No.", "Entry Type", "Posting Date", "Special Position")
        {
            SumIndexFields = "Quantity (Base)", "Total Direct Cost (LCY)", "Total Cost (LCY)", "Processing Hours";
        }
        key(Key12; "Job No.", "Sales Position Unique No.", "Entry Type", "Posting Date", "Special Position")
        {
            SumIndexFields = "Quantity (Base)", "Total Cost (LCY)", "Line Amount (LCY)";
        }
        key(Key13; "Posted Inv. Request No.")
        {
        }
        key(Key14; "Job No.", "Posted Inv. Request No.")
        {
        }
        key(Key15; "Ledger Entry Type", "Ledger Entry No.")
        {
        }
        key(Key16; "Job Process No.", "Entry Type", "Posting Date", "Planning Resource No.")
        {
            SumIndexFields = "Processing Hours";
        }
        key(Key17; "WIP Job No.", "WIP Position No.", "Entry Type", "Posting Date", "Special Position", "Activatable WIP")
        {
            SumIndexFields = "Quantity (Base)", "Total Cost (LCY)", "Line Amount (LCY)";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", "Job No.", "Posting Date", "Document No.")
        {
        }
    }
}

