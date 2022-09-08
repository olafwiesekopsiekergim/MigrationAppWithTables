table 50012 "Mobile Setup"
{
    // L-MOBILE LM2.00
    //   object defined
    // 
    // L-MOBILE LM2.00.05
    //   Admin Role functionality implemented
    // 
    // L-MOBILE LM2.00.07
    //   handling Directed Put-Away and Pick on templates implemented
    // 
    // L-MOBILE LM2.00.08
    //   added field to enable setup for event log
    // 
    // L-MOBILE LM2.01.00
    //   added field to enable anonymous posting (Post Adjustment)
    // 
    // L-MOBILE 2017-05-30 LMD1.01
    //   field
    //     50000 "Post Warehouse Shipment" Boolean
    //   defined

    Caption = 'Mobile Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(10; "Timer Interval"; Integer)
        {
            Caption = 'No. of Milliseconds between Runs';
        }
        field(11; "Event Log Level"; Option)
        {
            Caption = 'Event Log Level';
            Description = 'LM2.00.08';
            OptionMembers = "None","Error Only",All;
        }
        field(20; "Reclass Journal Template Name"; Code[10])
        {
            Caption = 'Reclass Journal Template Name';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST (Transfer))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST (Reclassification));
        }
        field(30; "Reclass Journal Batch Name"; Code[10])
        {
            Caption = 'Reclass Journal Batch Name';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Reclass Journal Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Reclass Journal Template Name"));
        }
        field(40; "SUPER is Admin"; Boolean)
        {
            Caption = 'SUPER is Admin';
            Description = 'LM2.00.05';
            InitValue = true;
        }
        field(41; "Mobile Administrator Role"; Code[20])
        {
            Caption = 'Mobile Administrator Role';
            Description = 'LM2.00.05';
            TableRelation = "Permission Set";
        }
        field(90; "Barcode Type"; Option)
        {
            Caption = 'Type';
            Description = 'not in use in KT';
            OptionCaption = 'EAN8,EAN13,Code39,Code128';
            OptionMembers = EAN8,EAN13,Code39,Code128;
        }
        field(100; "Barcode Size"; Integer)
        {
            Caption = 'Size';
            Description = 'not in use in KT';
        }
        field(110; "Barcode Orientation"; Option)
        {
            Caption = 'Orientation';
            Description = 'not in use in KT';
            OptionCaption = 'Horizontal,Vertical';
            OptionMembers = Horizontal,Vertical;
        }
        field(120; "Item Report No."; Integer)
        {
            Caption = 'Item Report No.';
            Description = 'not in use in KT';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Report));
        }
        field(130; "Item Report Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Item Report No.")));
            Caption = 'Item Report Name';
            Description = 'not in use in KT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140; "Stock Report No."; Integer)
        {
            Caption = 'Stock Report No.';
            Description = 'not in use in KT';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Report));
        }
        field(150; "Stock Report Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Stock Report No.")));
            Caption = 'Stock Report Name';
            Description = 'not in use in KT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160; "Invt. Journal Template Name"; Code[10])
        {
            Caption = 'Inventory Journal Template Name';
            TableRelation = "Item Journal Template" WHERE (Type = CONST ("Phys. Inventory"));
        }
        field(170; "Invt. Journal Batch Name"; Code[10])
        {
            Caption = 'Inventory Journal Batch Name';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Invt. Journal Template Name"));
        }
        field(180; "Use Background Printing"; Boolean)
        {
            Caption = 'Use Background Printing';
            Description = 'LM2.01.02';
        }
        field(300; "Batch Relocation Template Name"; Code[10])
        {
            Caption = 'Batch Relocation Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST (Transfer))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST (Reclassification));
        }
        field(301; "Batch Relocation Batch Name"; Code[10])
        {
            Caption = 'Batch Relocation Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Batch Relocation Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Batch Relocation Template Name"));
        }
        field(302; "Batch Storage Template Name"; Code[10])
        {
            Caption = 'Batch Storage Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST (Transfer))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST (Reclassification));
        }
        field(303; "Batch Storage Batch Name"; Code[10])
        {
            Caption = 'Batch Storage Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Batch Storage Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Batch Storage Template Name"));
        }
        field(306; "Production Issue Template Name"; Code[10])
        {
            Caption = 'Production Issue Template Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Template" WHERE (Type = FILTER (Transfer));
        }
        field(307; "Production Issue Batch Name"; Code[10])
        {
            Caption = 'Production Issue Batch Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Production Issue Template Name"));
        }
        field(308; "Prod. Receipt Template Name"; Code[10])
        {
            Caption = 'Production Receipt Template Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Template" WHERE (Type = FILTER (Output | "Prod. Order"));
        }
        field(309; "Production Receipt Batch Name"; Code[10])
        {
            Caption = 'Production Receipt Batch Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Prod. Receipt Template Name"));
        }
        field(310; "Prod. Unplan. Issue Temp. Name"; Code[10])
        {
            Caption = 'Production Unplanned Issue Template Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Template" WHERE (Type = FILTER (Consumption | "Prod. Order"));
        }
        field(311; "Prod. Unplanned Issue Batch N."; Code[10])
        {
            Caption = 'Production Unplanned Issue Batch Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Prod. Unplan. Issue Temp. Name"));
        }
        field(312; "Planned Relocation Temp. Name"; Code[10])
        {
            Caption = 'Planned Relocation Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST (Transfer))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST (Reclassification));
        }
        field(313; "Planned Relocation Batch Name"; Code[10])
        {
            Caption = 'Planned Relocation Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Planned Relocation Temp. Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Planned Relocation Temp. Name"));
        }
        field(314; "Replenishment Template Name"; Code[10])
        {
            Caption = 'Replenishment Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST (Transfer))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST (Reclassification));
        }
        field(315; "Replenishment Batch Name"; Code[10])
        {
            Caption = 'Replenishment Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Replenishment Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Replenishment Template Name"));
        }
        field(318; "Return Prod. Template Name"; Code[10])
        {
            Caption = 'Return Production Template Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Template" WHERE (Type = FILTER (Consumption | "Prod. Order"));
        }
        field(319; "Return Production Batch Name"; Code[10])
        {
            Caption = 'Return Production Batch Name';
            Description = 'LM2.00.03';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Return Prod. Template Name"));
        }
        field(320; "Stock Correction Template Name"; Code[10])
        {
            Caption = 'Stock Correction Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST ("Phys. Inventory"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST ("Physical Inventory"));
        }
        field(321; "Stock Correction Batch Name"; Code[10])
        {
            Caption = 'Stock Correction Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Stock Correction Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Stock Correction Template Name"));
        }
        field(322; "Stock Corr. Pick Template Name"; Code[10])
        {
            Caption = 'Stock Correction Pick Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST ("Phys. Inventory"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST ("Physical Inventory"));
        }
        field(323; "Stock Corr. Pick Batch Name"; Code[10])
        {
            Caption = 'Stock Correction Pick Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Stock Corr. Pick Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Stock Corr. Pick Template Name"));
        }
        field(324; "Stock Corr. Put Template Name"; Code[10])
        {
            Caption = 'Stock Correction Put Template Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Template" WHERE (Type = CONST ("Phys. Inventory"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Template" WHERE (Type = CONST ("Physical Inventory"));
        }
        field(325; "Stock Corr. Put Batch Name"; Code[10])
        {
            Caption = 'Stock Correction Put Batch Name';
            Description = 'LM2.00.03';
            TableRelation = IF ("Directed Put and Pick In Use" = CONST (false)) "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Stock Corr. Put Template Name"))
            ELSE
            IF ("Directed Put and Pick In Use" = CONST (true)) "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Stock Corr. Put Template Name"));
        }
        field(326; "Warehouse Inventory Temp. Name"; Code[10])
        {
            Caption = 'Warehouse Inventory Temp. Name';
            Description = 'LM2.00.05';
            TableRelation = "Warehouse Journal Template".Name WHERE (Type = CONST ("Physical Inventory"));
        }
        field(327; "Warehouse Inventory Batch Name"; Code[10])
        {
            Caption = 'Warehouse Inventory Batch Name';
            Description = 'LM2.00.05';
            TableRelation = "Warehouse Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Warehouse Inventory Temp. Name"));
        }
        field(1000; "Post Inventory Recording"; Boolean)
        {
            Caption = 'Post Inventory Recording';
            Description = 'LM2.00.02';
        }
        field(1001; "Post Warehouse Inventory"; Boolean)
        {
            Caption = 'Post Warehouse Inventory';
            Description = 'LM2.00.02';
        }
        field(1002; "Post Item Inventory"; Boolean)
        {
            Caption = 'Post Item Inventory';
            Description = 'LM2.00.02';
        }
        field(1003; "Post Stock Correction"; Boolean)
        {
            Caption = 'Post Stock Correction';
            Description = 'LM2.00.05';
        }
        field(1004; "Post Adjustment"; Boolean)
        {
            Caption = 'Post Adjustment';
            Description = 'LM2.01.00';
        }
        field(1100; "Directed Put and Pick In Use"; Boolean)
        {
            Caption = 'Directed Put and Pick In Use';
            Description = 'LM2.00.07';
        }
        field(50000; "Post Warehouse Shipment"; Boolean)
        {
            Caption = 'Post Warehouse Shipment';
            Description = 'LMD1.01';
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

