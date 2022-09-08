table 5012413 "Production Simulation Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02.01:12:1
    //   # Object renamed to "Production Simulation Line"
    //   # New field 28 "Due Time"
    //   # New field 71 "Quantity Avail. on Due Date"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Production Simulation Line';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Attached to Entry No."; Integer)
        {
            Caption = 'Attached to Entry No.';
            Editable = false;
        }
        field(3; Level; Integer)
        {
            Caption = 'Level';
        }
        field(4; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
            Editable = false;
        }
        field(5; Unfold; Boolean)
        {
            Caption = 'Unfold';
        }
        field(6; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
        }
        field(8; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Substance Where-Used List,Structure,Ingredients,Formulation Where-Used List';
            OptionMembers = " ","Substance Where-Used List",Structure,Ingredients,"Formulation Where-Used List";
        }
        field(9; Warning; Boolean)
        {
            Caption = 'Warning';
        }
        field(10; Text; Text[250])
        {
            Caption = 'Text';
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Work Center,Machine Center,Item,Share of Recipe,,Tool';
            OptionMembers = " ","Work Center","Machine Center",Item,"Share of Recipe",,Tool;
        }
        field(21; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Work Center")) "Work Center"."No." WHERE ("Work Center Type" = FILTER (<> Tool))
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center"."No."
            ELSE
            IF (Type = CONST (Item)) Item."No."
            ELSE
            IF (Type = CONST ("Share of Recipe")) Item."No."
            ELSE
            IF (Type = CONST (Tool)) "Work Center"."No." WHERE ("Work Center Type" = CONST (Tool));
        }
        field(23; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(24; "Description 2"; Text[250])
        {
            Caption = 'Description 2';
        }
        field(25; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(26; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(27; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(28; "Due Time"; Time)
        {
            Caption = 'Due Time';
            Description = ':PMW14.02.01:12:1';
        }
        field(30; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header";
        }
        field(31; "Production BOM Version Code"; Code[10])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(40; "Demand Quantity"; Decimal)
        {
            Caption = 'Demand Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(41; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(42; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
        }
        field(43; "Demand Quantity (Base)"; Decimal)
        {
            Caption = 'Demand Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(50; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header"."No.";
        }
        field(51; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(60; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(61; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(62; "Wait Time"; Decimal)
        {
            Caption = 'Wait Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(63; "Move Time"; Decimal)
        {
            Caption = 'Move Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(64; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(65; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(66; "Wait Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Wait Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(67; "Move Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Move Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(70; Inventory; Decimal)
        {
            BlankZero = true;
            Caption = 'Inventory';
            DecimalPlaces = 0 : 5;
        }
        field(71; "Quantity Avail. on Due Date"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity Avail. on Due Date';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

