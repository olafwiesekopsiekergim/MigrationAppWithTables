table 5292349 "PR - Job Line Shipment Plan"
{
    Caption = 'Job Line Shipment Plan';
    Permissions = TableData "Job Ledger Entry" = rm;

    fields
    {
        field(1; "Shipment Plan No."; Code[20])
        {
            Caption = 'Shipment Plan No.';
            Description = 'ne';
            Editable = false;
            NotBlank = true;
        }
        field(10; "Shipment Outline No."; Code[160])
        {
            Caption = 'Shipment Outline No.';
            Description = 'ne';
            Editable = false;
        }
        field(11; "Shipment Outline Level"; Integer)
        {
            Caption = 'Shipment Outline Level';
            Description = 'ne';
            Editable = false;
        }
        field(19; Summary; Boolean)
        {
            Caption = 'Summary';
            Description = 'ne';
            Editable = false;
        }
        field(20; "Line Type"; Option)
        {
            Caption = 'Line Type';
            Description = 'ne  ,Top,Sum';
            Editable = false;
            OptionCaption = ' ,Top,Sum';
            OptionMembers = " ",Top,"Sum";
        }
        field(40; "Outline Code"; Code[20])
        {
            Caption = 'Outline Code';
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
            Description = 'Resource,Item,G/L Account';
            OptionCaption = 'Resource,Item,G/L Account';
            OptionMembers = Resource,Item,"G/L Account";
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
        field(7030; "Shipment Contact No."; Code[20])
        {
            Caption = 'Shipment Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(7040; "Shipment Plan"; Boolean)
        {
            Caption = 'Shipment Plan';
        }
        field(7090; "Shipment Status"; Option)
        {
            Caption = 'Shipment Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(7100; "Shipment Direction"; Option)
        {
            Caption = 'Shipment Direction';
            Description = ' ,Inbound,Outbound';
            OptionCaption = ' ,Inbound,Outbound';
            OptionMembers = " ",Inbound,Outbound;
        }
        field(7110; "Job Shipment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Shipment Line" WHERE ("Job Shipment Plan No." = FIELD ("Shipment Plan No.")));
            Caption = 'Job Shipment';
            Description = 'LU Job Shipment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7120; "Posted Job Shipment"; Boolean)
        {
            CalcFormula = Exist ("PR - Posted Job Shpt. Line" WHERE ("Job Shipment Plan No." = FIELD ("Shipment Plan No.")));
            Caption = 'Posted Job Shipment';
            Description = 'LU Job Shipment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7540; "Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(7550; "Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(5292332; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292333; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292334; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
        }
        field(5292335; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292336; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292337; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(5292338; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292339; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292340; WBS; Code[50])
        {
            Caption = 'WBS';
        }
        field(5292341; "Provided Quantity"; Boolean)
        {
            Caption = 'Provided Quantity';
        }
        field(5292342; "Provided Entry No."; Integer)
        {
            Caption = 'Provided Entry No.';
            Description = 'TR "Job Ledger Entry"';
            TableRelation = "Job Ledger Entry";
        }
    }

    keys
    {
        key(Key1; "Shipment Plan No.")
        {
            Clustered = true;
        }
        key(Key2; "Shipment Outline No.", "Shipment Status", "Shipment Channel")
        {
        }
        key(Key3; "Shipment Outline No.", "Shipment Plan No.", "Shipment Channel")
        {
        }
        key(Key4; "Job No.", "Job Line Unique No.", "Shipment Status", "Shipment Channel", "Person Responsible")
        {
        }
        key(Key5; "Job No.", "Shipment Status", "Shipment Channel", "Person Responsible", "Job Line Unique No.")
        {
        }
        key(Key6; "Shipment Contact No.", "Shipment Direction", "Shipment Outline No.")
        {
        }
        key(Key7; "Person Responsible", "Shipment Status", "Shipment Plan", "Shipment Date")
        {
        }
    }

    fieldgroups
    {
    }
}

