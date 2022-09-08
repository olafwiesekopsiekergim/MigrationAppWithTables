table 5012500 "Prod. Order Splitting Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:76:1
    //   # Object created.
    // 
    // :PMW14.02.01:79:1
    //   # New field 8 "Sequence Planning"
    //   # Tablerelation for field "Work Center No."
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Prod. Order Splitting Line';

    fields
    {
        field(1; "Prod. Order Status"; Option)
        {
            Caption = 'Prod. Order Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            NotBlank = true;
        }
        field(3; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center"."No." WHERE ("Work Center Type" = FILTER (" " | "Sequence Planning"));
        }
        field(6; "Work Center Name"; Text[30])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Work Center No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(8; "Sequence Planning"; Boolean)
        {
            Caption = 'Sequence Planning';
            Description = ':PMW14.02.01:79:1';
            Editable = false;
        }
        field(10; Number; Integer)
        {
            Caption = 'Number';
            NotBlank = true;
        }
        field(11; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(12; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(13; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(14; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(15; "Total Quantity"; Decimal)
        {
            Caption = 'Total Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(16; "Total Quantity (Base)"; Decimal)
        {
            Caption = 'Total Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Prod. Order Status", "Prod. Order No.", "Prod. Order Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

