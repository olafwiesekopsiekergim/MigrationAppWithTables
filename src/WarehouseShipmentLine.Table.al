table 7321 "Warehouse Shipment Line"
{
    // :PMW14.00:2473:1
    //   # New function "CheckDeliveryTolerance"
    //   # Qty. to Ship - OnValidate, call "CheckDeliveryTolerance"
    // 
    // :PMW14.01.00.01 SP1:24:1
    //   # Changes in PMW14.01 due to SP1 Standard Navision
    // 
    // :PMW14.02:53:1
    //   # New field 5012400 "Returnable Container"
    //   # OnDelete, call "DeleteAttachedWhseShptLine"
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW16.00.03:T511 29.09.11 DEMSR.IST
    //   New function to suspend Delivery Tolerance Check
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T112 24.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    // 
    // cc|mobile solution (CCMS)
    //   CCMS01  17.09.14  DEDRS.RKRA
    //     New fields (see description column)

    Caption = 'Warehouse Shipment Line';
    PasteIsValid = false;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(3; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Editable = false;
        }
        field(4; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(6; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
        }
        field(7; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Editable = false;
        }
        field(9; "Source Document"; Option)
        {
            Caption = 'Source Document';
            Editable = false;
            OptionCaption = ',Sales Order,,,Sales Return Order,Purchase Order,,,Purchase Return Order,,Outbound Transfer,,,,,,,,Service Order';
            OptionMembers = ,"Sales Order",,,"Sales Return Order","Purchase Order",,,"Purchase Return Order",,"Outbound Transfer",,,,,,,,"Service Order";
        }
        field(10; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Editable = false;
            TableRelation = Location;
        }
        field(11; "Shelf No."; Code[10])
        {
            Caption = 'Shelf No.';
        }
        field(12; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
            TableRelation = IF ("Zone Code" = FILTER ('')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"))
            ELSE
            IF ("Zone Code" = FILTER (<> '')) Bin.Code WHERE ("Location Code" = FIELD ("Location Code"),
                                                                               "Zone Code" = FIELD ("Zone Code"));
        }
        field(13; "Zone Code"; Code[10])
        {
            Caption = 'Zone Code';
            TableRelation = Zone.Code WHERE ("Location Code" = FIELD ("Location Code"));
        }
        field(14; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(15; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(16; "Qty. (Base)"; Decimal)
        {
            Caption = 'Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(19; "Qty. Outstanding"; Decimal)
        {
            Caption = 'Qty. Outstanding';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(20; "Qty. Outstanding (Base)"; Decimal)
        {
            Caption = 'Qty. Outstanding (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(21; "Qty. to Ship"; Decimal)
        {
            Caption = 'Qty. to Ship';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(22; "Qty. to Ship (Base)"; Decimal)
        {
            Caption = 'Qty. to Ship (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(23; "Qty. Picked"; Decimal)
        {
            Caption = 'Qty. Picked';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = Normal;
        }
        field(24; "Qty. Picked (Base)"; Decimal)
        {
            Caption = 'Qty. Picked (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(25; "Qty. Shipped"; Decimal)
        {
            Caption = 'Qty. Shipped';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(26; "Qty. Shipped (Base)"; Decimal)
        {
            Caption = 'Qty. Shipped (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(27; "Pick Qty."; Decimal)
        {
            CalcFormula = Sum ("Warehouse Activity Line"."Qty. Outstanding" WHERE ("Activity Type" = CONST (Pick),
                                                                                  "Whse. Document Type" = CONST (Shipment),
                                                                                  "Whse. Document No." = FIELD ("No."),
                                                                                  "Whse. Document Line No." = FIELD ("Line No."),
                                                                                  "Unit of Measure Code" = FIELD ("Unit of Measure Code"),
                                                                                  "Action Type" = FILTER (" " | Place),
                                                                                  "Original Breakbulk" = CONST (false),
                                                                                  "Breakbulk No." = CONST (0),
                                                                                  "Assemble to Order" = CONST (false)));
            Caption = 'Pick Qty.';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Pick Qty. (Base)"; Decimal)
        {
            CalcFormula = Sum ("Warehouse Activity Line"."Qty. Outstanding (Base)" WHERE ("Activity Type" = CONST (Pick),
                                                                                         "Whse. Document Type" = CONST (Shipment),
                                                                                         "Whse. Document No." = FIELD ("No."),
                                                                                         "Whse. Document Line No." = FIELD ("Line No."),
                                                                                         "Action Type" = FILTER (" " | Place),
                                                                                         "Original Breakbulk" = CONST (false),
                                                                                         "Breakbulk No." = CONST (0),
                                                                                         "Assemble to Order" = CONST (false)));
            Caption = 'Pick Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(30; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 1;
        }
        field(31; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(32; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(33; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(34; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = ' ,Partially Picked,Partially Shipped,Completely Picked,Completely Shipped';
            OptionMembers = " ","Partially Picked","Partially Shipped","Completely Picked","Completely Shipped";
        }
        field(35; "Sorting Sequence No."; Integer)
        {
            Caption = 'Sorting Sequence No.';
            Editable = false;
        }
        field(36; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(39; "Destination Type"; Option)
        {
            Caption = 'Destination Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Location';
            OptionMembers = " ",Customer,Vendor,Location;
        }
        field(40; "Destination No."; Code[20])
        {
            Caption = 'Destination No.';
            Editable = false;
            TableRelation = IF ("Destination Type" = CONST (Customer)) Customer."No."
            ELSE
            IF ("Destination Type" = CONST (Vendor)) Vendor."No."
            ELSE
            IF ("Destination Type" = CONST (Location)) Location.Code;
        }
        field(41; Cubage; Decimal)
        {
            Caption = 'Cubage';
            DecimalPlaces = 0 : 5;
        }
        field(42; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(44; "Shipping Advice"; Option)
        {
            Caption = 'Shipping Advice';
            Editable = false;
            OptionCaption = 'Partial,Complete';
            OptionMembers = Partial,Complete;
        }
        field(45; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(46; "Completely Picked"; Boolean)
        {
            Caption = 'Completely Picked';
            Editable = false;
        }
        field(48; "Not upd. by Src. Doc. Post."; Boolean)
        {
            Caption = 'Not upd. by Src. Doc. Post.';
            Editable = false;
        }
        field(49; "Posting from Whse. Ref."; Integer)
        {
            Caption = 'Posting from Whse. Ref.';
            Editable = false;
        }
        field(900; "Assemble to Order"; Boolean)
        {
            AccessByPermission = TableData "BOM Component" = R;
            Caption = 'Assemble to Order';
            Editable = false;
        }
        field(5012400; "Returnable Container"; Boolean)
        {
            Caption = 'Returnable Container';
            Description = ':PMW14.02:53:1';
        }
        field(5307940; "Mobile Dialog Processed"; Boolean)
        {
            Caption = 'Mobile Dialog Processed';
            Description = 'CCMS';
        }
        field(5307941; "Mobile Session GUID"; Guid)
        {
            Caption = 'Mobile Session GUID';
            Description = 'CCMS';
        }
    }

    keys
    {
        key(Key1; "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "No.", "Sorting Sequence No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key3; "No.", "Item No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key4; "No.", "Source Document", "Source No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key5; "No.", "Shelf No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key6; "No.", "Bin Code")
        {
            MaintainSQLIndex = false;
        }
        key(Key7; "No.", "Due Date")
        {
            MaintainSQLIndex = false;
        }
        key(Key8; "No.", "Destination Type", "Destination No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key9; "Source Type", "Source Subtype", "Source No.", "Source Line No.", "Assemble to Order")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding", "Qty. Outstanding (Base)";
        }
        key(Key10; "No.", "Source Type", "Source Subtype", "Source No.", "Source Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key11; "Item No.", "Location Code", "Variant Code", "Due Date")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = "Qty. Outstanding (Base)", "Qty. Picked (Base)", "Qty. Shipped (Base)";
        }
        key(Key12; "Bin Code", "Location Code")
        {
            MaintainSIFTIndex = false;
            SumIndexFields = Cubage, Weight;
        }
    }

    fieldgroups
    {
    }
}

