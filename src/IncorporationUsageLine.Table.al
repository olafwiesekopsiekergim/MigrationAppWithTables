table 5012425 "Incorporation Usage Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // INCORPORATION:PMW15.00:230:1 # Object created
    // 
    // :PMW15.00.01:40:1
    //   # Description fields expanded to Text50
    // 
    // :PMW15.01:82:1
    //   # New field 40 "Prod. Order Status Filter"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Incorporation Usage Line';

    fields
    {
        field(1; Status; Option)
        {
            Caption = 'Status';
            Description = 'INCORPORATION:PMW15.00:230:1';
            Editable = false;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            Description = 'INCORPORATION:PMW15.00:230:1';
            Editable = false;
            NotBlank = true;
            TableRelation = "Production Order"."No." WHERE (Status = FIELD (Status));
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'INCORPORATION:PMW15.00:230:1';
            Editable = false;
        }
        field(4; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(5; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Editable = false;
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."),
                                                       Code = FIELD ("Variant Code"));
        }
        field(6; Descriptaion; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(7; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Editable = false;
        }
        field(8; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Editable = false;
        }
        field(9; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Editable = false;
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(10; "Remaining Quantity"; Decimal)
        {
            Caption = 'Remaining Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
            MinValue = 0;
        }
        field(11; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(12; "Remaining Qty. (Base)"; Decimal)
        {
            Caption = 'Remaining Qty. (Base)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(13; "Demand Date"; Date)
        {
            Caption = 'Demand Date';
            Editable = false;
        }
        field(20; "Incorporation Item No."; Code[20])
        {
            Caption = 'Incorporation Item No.';
            Editable = false;
            TableRelation = Item;
        }
        field(21; "Incorp. Item Description"; Text[30])
        {
            Caption = 'Incorp. Item Description';
            Editable = false;
        }
        field(22; "Incorp. Item Description 2"; Text[30])
        {
            Caption = 'Incorp. Item Description 2';
            Editable = false;
        }
        field(23; "Incorp. Unit of Measure Code"; Code[10])
        {
            Caption = 'Incorp. Unit of Measure Code';
            Editable = false;
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(24; "Max. Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation %';
            DecimalPlaces = 0 : 2;
            Editable = false;
            MaxValue = 100;
            MinValue = 0;
        }
        field(25; "Max. Incorporation Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(26; Inventory; Decimal)
        {
            BlankZero = true;
            Caption = 'Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(27; "Quantity Avail. on Demand Date"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity Avail. on Demand Date';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(30; "Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Incorporation %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
            MinValue = 0;
        }
        field(31; "Incorporation Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Incorporation Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(32; "Expected Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Expected Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(40; "Prod. Order Status Filter"; Option)
        {
            Caption = 'Prod. Order Status Filter';
            Description = ':PMW15.01:82:1';
            FieldClass = FlowFilter;
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
    }

    keys
    {
        key(Key1; Status, "Prod. Order No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Demand Date")
        {
            SumIndexFields = "Incorporation Quantity";
        }
    }

    fieldgroups
    {
    }
}

