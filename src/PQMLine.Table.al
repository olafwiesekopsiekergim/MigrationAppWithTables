table 5292852 "PQM - Line"
{
    Caption = 'PQM Line';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(21; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,G/L Account,Item,,Fixed Asset,Charge (Item)';
            OptionCaption = ' ,G/L Account,Item,,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,,"Fixed Asset","Charge (Item)";
        }
        field(1011; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST(" ")) "Standard Text"
            ELSE
            IF (Type = CONST("G/L Account")) "G/L Account"
            ELSE
            IF (Type = CONST(Item)) Item
            ELSE
            IF (Type = CONST(3)) Resource
            ELSE
            IF (Type = CONST("Fixed Asset")) "Fixed Asset"
            ELSE
            IF (Type = CONST("Charge (Item)")) "Item Charge";
        }
        field(1100; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = 'TR "Item Variant"';
            TableRelation = IF (Type = CONST(Item)) "Item Variant".Code WHERE("Item No." = FIELD("No."));
        }
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(2010; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2021; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2050; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(2051; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2100; "Source Vendor No."; Code[20])
        {
            Caption = 'Source Vendor No.';
            Description = 'TR Vendor';
            TableRelation = Vendor;
        }
        field(2110; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Description = 'TR Currency';
            TableRelation = Currency;
        }
        field(2111; "Currency Date"; Date)
        {
            Caption = 'Currency Date';
        }
        field(2112; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = '0:15';
            Editable = false;
            MinValue = 0;
        }
        field(2120; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            Description = 'AF2';
        }
        field(2130; "Line Discount %"; Decimal)
        {
            Caption = 'Line Discount %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(2131; "Line Discount Amount"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Line Discount Amount';
        }
        field(2200; "Direct Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost (LCY)';
            Description = 'AF2';
        }
        field(2220; "Total Direct Cost (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Direct Cost (LCY)';
            Description = 'AF1, ne';
            Editable = false;
        }
        field(2230; "Source Unit Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Source Unit Cost';
            Description = 'AF1';
            Editable = false;
        }
        field(3000; "-- Assignments"; Integer)
        {
            Caption = '-- Assignments';
            Enabled = false;
        }
        field(3010; "Assigned Vendors"; Integer)
        {
            CalcFormula = Count("PQM - Vendor" WHERE("Document No." = FIELD("Document No."),
                                                      "Document Line No." = FIELD("Line No.")));
            Caption = 'Assigned Vendors';
            Description = 'FF Purch. Quote Manager Vendor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3011; Assigned; Boolean)
        {
            Caption = 'Assigned';
        }
        field(3020; "Status Created"; Boolean)
        {
            CalcFormula = Exist("PQM - Vendor" WHERE("Document No." = FIELD("Document No."),
                                                      "Document Line No." = FIELD("Line No."),
                                                      Status = CONST(Created)));
            Caption = 'Status Created';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3021; "Status Verified"; Boolean)
        {
            CalcFormula = Exist("PQM - Vendor" WHERE("Document No." = FIELD("Document No."),
                                                      "Document Line No." = FIELD("Line No."),
                                                      Status = CONST(Verified)));
            Caption = 'Status Verified';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3022; "Status Placed"; Boolean)
        {
            CalcFormula = Exist("PQM - Vendor" WHERE("Document No." = FIELD("Document No."),
                                                      "Document Line No." = FIELD("Line No."),
                                                      Status = CONST(Placed)));
            Caption = 'Status Placed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3023; "Status Not Placed"; Boolean)
        {
            CalcFormula = Exist("PQM - Vendor" WHERE("Document No." = FIELD("Document No."),
                                                      "Document Line No." = FIELD("Line No."),
                                                      Status = CONST("Not Placed")));
            Caption = 'Status Not Placed';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4010; "Order Date"; Date)
        {
            Caption = 'Order Date';
        }
        field(4020; "Planned Lead Time Calculation"; DateFormula)
        {
            Caption = 'Planned Lead Time Calculation';
        }
        field(4030; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(5000; "-- Placing"; Integer)
        {
            Caption = '-- Placing';
            Enabled = false;
        }
        field(5010; "Placing Quantity"; Decimal)
        {
            Caption = 'Placing Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(5030; "Placing Exp. Receipt Date"; Date)
        {
            Caption = 'Placing Exp. Receipt Date';
        }
        field(5050; "Placing Unit of Measure Code"; Code[10])
        {
            Caption = 'Placing Unit of Measure Code';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            "Unit of Measure";
        }
        field(5100; "Placing Vendor No."; Code[20])
        {
            Caption = 'Placing Vendor No.';
            Description = 'TR Vendor, ne';
            Editable = false;
            TableRelation = Vendor;
        }
        field(5110; "Placing Currency Code"; Code[10])
        {
            Caption = 'Placing Currency Code';
            Description = 'TR Currency';
            TableRelation = Currency;
        }
        field(5120; "Placing Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Placing Direct Unit Cost';
            Description = 'AF2,ne';
            Editable = false;
        }
        field(5130; "Placing Line Discount %"; Decimal)
        {
            Caption = 'Placing Line Discount %';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(5200; "Placing Direct Unit Cost (LCY)"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Placing Direct Unit Cost (LCY)';
            Description = 'AF2,ne';
            Editable = false;
        }
        field(5230; "Placing Unit Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Placing Unit Cost';
            Description = 'AF1,ne';
            Editable = false;
        }
        field(5240; "Difference Unit Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Difference Unit Cost';
            Description = 'AF1,ne';
            Editable = false;
        }
        field(6000; "-- Source"; Integer)
        {
            Caption = '-- Source';
            Enabled = false;
        }
        field(6001; "Source Status"; Option)
        {
            Caption = 'Source Status';
            Description = ' ,From Document,Updated,Release';
            Editable = false;
            OptionCaption = ' ,From Document,Updated,Release';
            OptionMembers = " ","From Document",Updated,Release;
        }
        field(6010; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(6011; "Source Subtype"; Integer)
        {
            Caption = 'Source Subtype';
        }
        field(6012; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(6013; "Source Batch Name"; Code[20])
        {
            Caption = 'Source Batch Name';
        }
        field(6014; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(6015; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source Subtype", "Source ID", "Source Batch Name", "Source Prod. Order Line", "Source Ref. No.", "Source Status")
        {
        }
    }

    fieldgroups
    {
    }
}

