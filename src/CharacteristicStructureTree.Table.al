table 5013568 "Characteristic Structure Tree"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #Corrected variable name
    // :DMW16.00:6:01 #New option in field Type: "Master BOM"
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 85115 "Enclosure Drop Shipment"
    // #DMW17.00:A001 19.09.12 DEMSR.SSZ
    //   #Field "Description 2": Text 30 -> 50
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Characteristic Search Tree';

    fields
    {
        field(15; Symbol; Text[1])
        {
            Caption = 'Symbol';
            Editable = true;
        }
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(50; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
            Editable = false;
        }
        field(60; "Level Line No."; Integer)
        {
            Caption = 'Level Line No.';
            Editable = false;
        }
        field(70; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(80; "Entry No. Representation"; Integer)
        {
            Caption = 'Entry No. Representation';
            Editable = false;
        }
        field(90; Unfolded; Boolean)
        {
            Caption = 'Unfolded';
            Editable = false;
        }
        field(95; "Sub Level"; Boolean)
        {
            Caption = 'Sub Level';
            Editable = false;
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center,Master BOM';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center","Master BOM";
        }
        field(105; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST("Account(G/L)")) "G/L Account"
            ELSE
            IF (Type = CONST(Item)) Item
            ELSE
            IF (Type = CONST(Resource)) Resource
            ELSE
            IF (Type = CONST("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST("Machine Center")) "Machine Center";
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(120; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(130; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
        }
        field(140; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
        }
        field(150; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
        }
        field(180; Variant; Code[20])
        {
            Caption = 'Variant';
        }
        field(190; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 2 : 5;
        }
        field(200; "Exp. Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Exp. Quantity Unit of Measure';
            TableRelation = IF (Type = CONST(Item)) "Item Unit of Measure".Code WHERE("Item No." = FIELD("No."))
            ELSE
            IF (Type = CONST(Resource)) "Unit of Measure".Code
            ELSE
            IF (Type = CONST("Work Center")) "Capacity Unit of Measure".Code
            ELSE
            IF (Type = CONST("Machine Center")) "Capacity Unit of Measure".Code;
        }
        field(220; "Exp. Quantity (Base)"; Decimal)
        {
            Caption = 'Exp. Quantity (Base)';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(225; "Quantity (Base, Father)"; Decimal)
        {
            Caption = 'Quantity (Base, Father)';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(230; "Part Type"; Option)
        {
            Caption = 'Part Type';
            OptionCaption = 'Standard,Production';
            OptionMembers = Standard,Production;
        }
        field(240; "Spare Part"; Boolean)
        {
            Caption = 'Spare Part';
        }
        field(250; "Wear Part"; Boolean)
        {
            Caption = 'Wear Part';
        }
        field(260; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
        }
        field(300; "Information Line"; Boolean)
        {
            Caption = 'Information Line';
            Editable = false;
        }
        field(310; "Sub BOM"; Boolean)
        {
            Caption = 'Sub BOM';
            Editable = false;
        }
        field(390; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(400; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(600; "Unit Cost (CC)"; Decimal)
        {
            Caption = 'Unit Cost (CC)';
        }
        field(610; "Unit Ammount (CC)"; Decimal)
        {
            Caption = 'Unit Ammount (CC)';
            Editable = false;
        }
        field(620; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(85050; "Unit Ammount"; Decimal)
        {
            Caption = 'Unit Ammount';
            Editable = false;
        }
        field(85100; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(85110; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
        }
        field(85115; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(85211; "Calculation Group"; Code[10])
        {
            Caption = 'Calculation Group';
        }
        field(85212; "Belongs to Calc.option blank"; Boolean)
        {
            Caption = 'Belongs to Calc.option blank';
            Editable = false;
        }
        field(85213; "Bel. to Calc.-Option empty SH"; Boolean)
        {
            Caption = 'Belongs to Calc.option blank SalesHeader';
        }
        field(85250; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(5013400; Show; Boolean)
        {
            Caption = 'Show';
        }
        field(5013410; "Expected Quantity to Father"; Decimal)
        {
            Caption = 'Expected Quantity to Father';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Belongs to Entry No.", "Level Line No.")
        {
        }
        key(Key3; "Entry No. Representation")
        {
        }
        key(Key4; Level, "Level Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

