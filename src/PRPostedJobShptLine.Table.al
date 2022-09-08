table 5292377 "PR - Posted Job Shpt. Line"
{
    Caption = 'Posted Job Shipment Line';
    PasteIsValid = false;

    fields
    {
        field(1; "Header No."; Code[20])
        {
            Caption = 'Header No.';
            Editable = false;
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(91; Source; Option)
        {
            Caption = 'Source';
            Description = ' ,Budget,Package,Procurement';
            OptionCaption = ' ,Budget,Package,Procurement';
            OptionMembers = " ",Budget,Package,Procurement;
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,Resource,Item,G/L Account';
            OptionCaption = ' ,Resource,Item,G/L Account';
            OptionMembers = " ",Resource,Item,"G/L Account";
        }
        field(1011; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account";
        }
        field(1100; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = 'TR "Item Variant"';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(1200; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
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
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Resource)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            "Unit of Measure";
        }
        field(2051; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4020; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
        }
        field(7000; "-- Shipment"; Integer)
        {
            Caption = '-- Shipment';
            Enabled = false;
        }
        field(7010; "Shipment Channel"; Option)
        {
            Caption = 'Shipment Channel';
            Description = ' ,...,Structure Position,Job Line,Posted Item';
            OptionCaption = ' ,...,Structure Position,Job Line,Posted Item';
            OptionMembers = " ","...","Structure Position","Job Line","Posted Item";
        }
        field(7020; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(7510; "Qty. Outstanding"; Decimal)
        {
            Caption = 'Qty. Outstanding';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(7511; "Qty. Outstanding (Base)"; Decimal)
        {
            Caption = 'Qty. Outstanding (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(7520; "Qty. to Ship"; Decimal)
        {
            Caption = 'Qty. to Ship';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(7521; "Qty. to Ship (Base)"; Decimal)
        {
            Caption = 'Qty. to Ship (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(7530; "Qty. Shipped"; Decimal)
        {
            Caption = 'Qty. Shipped';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(7531; "Qty. Shipped (Base)"; Decimal)
        {
            Caption = 'Qty. Shipped (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(7540; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(7550; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292334; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292335; "Posted Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Posted Job Comment Line" WHERE ("Table ID" = CONST (5292377),
                                                                      "Document No." = FIELD ("Header No."),
                                                                      "Line No." = FIELD ("Line No.")));
            Caption = 'Posted Job Comment';
            Description = 'CF Posted Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292336; "Job Shipment Plan No."; Code[20])
        {
            Caption = 'Job Shipment Plan No.';
            Description = 'TR "Job Line Shipment Plan"';
            TableRelation = "PR - Job Line Shipment Plan";
        }
        field(5292337; "Provided Quantity"; Boolean)
        {
            Caption = 'Provided Quantity';
        }
        field(5292338; "Provided Entry No."; Integer)
        {
            Caption = 'Provided Entry No.';
            Description = 'TR "Job Ledger Entry"';
            TableRelation = "Job Ledger Entry";
        }
    }

    keys
    {
        key(Key1; "Header No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Job Line Unique No.")
        {
        }
        key(Key3; "Job Shipment Plan No.")
        {
        }
    }

    fieldgroups
    {
    }
}

