table 99000772 "Production BOM Line"
{
    // #CAW16.00.01:T101 07.07.11 DEMSR.IST
    //   New field 5012650 "Calculation Group Code" added
    //   Transfer "Calculation Group Code" from Item
    // 
    // :PMW13.70:1:1
    //   # Ergänzungen für die Nutzung als Rezeptur
    //   # New field 5012560 Artikelart
    //   # New field 5012561 "Anteil %"
    //   # New field 5012562 Anteile
    //   # Erweiterung Feld 44 Calculation Formula um den Wert Rezeptur
    // 
    // :PMW14.01:19:1
    //   # OptionCaptionML für Feld 44 "Calculation Formula" um Rezeptur erweitert.
    // 
    // :PMW14.02:88:1
    //   # New field 5012400 "Lot Determining"
    //   # New function "CheckLotDetermining"
    //   # No. - OnValidate, call function "CheckLotDetermining"
    // 
    // :PMW14.02:50:1
    //   # No. - OnValidate, check of "Production BOM Type" in "Prod. BOM Header" changed
    // 
    // :PMW15.00.01:45:1
    //   # Check license permissions
    // 
    // #PMW16.00.02:T302 25.10.10 DEMSR.IST
    //   New field 5012402 "Expiration Determining"
    // 
    // #PMW16.00.03:T102 18.07.11 DESMR.IST
    //   New field 5012403 "Comp. Location Code"
    //   New field 5012404 "Comp. Bin Code"
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T101 10.04.2014 DEMSR.IST
    //   Delete Ingredient
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // :DMW13.60.03:1:01 #neues Feld: Kalkulationsgruppe
    //  # neue Felder: "Konstruktionsnr." und "Konstruktionszeilennr."; Key angelegt
    // :DMW13.60.03:1:02 #neues Feld 5013430 Beistellung
    // 
    // :DMW13.70.01:1:01 #neues Feld Quelltyp: woher kommen die Komponeten: "Beleg Stückliste" oder Konstruktion
    //  # Felder: "Konstruktionsnr." und "Konstruktionszeilennr." umbenannt in
    //  #         "Quellnr." und "Quellzeilennr."
    // 
    // :DMW13.70.01:1:02 #neues Feld 5013440 Lagerortcode
    // 
    // :DMW13.71:1:01 #  neues Feld 5013450 "Separate Prod. Order"
    // :DMW14.03:1:01 #  neues Feld 5013500 "Base Material"
    // :DMW14.04:1:01 #  DMW14.03-02 corrected
    // :DMW14.04:1:02 #  DMW13.71-01 corrected: it's a system field. It's not allowed to change it manually
    // :DMW15.01:21:01 #Added new field 5013510 "Separate Delivery"
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.02:6:01 #Get "Separate Prod. Order" from Item
    // :DMW16.00.01:70:01 #New function to manage Attributes
    // #DMW16.00.02:T102 19.10.10 DEMSR.SSZ
    //   #Description fields 2,3,4,5
    // #DMW16.00.02:T114 15.11.10 DEMSR.SSZ
    //   #deleted field: "Calculation Group"
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 5013435 "Enclosure Drop Shipment", make some tests when changing settings
    // #DMW16.00.03:T009 26.09.11 DEMSR.SSZ
    //   #New field 5013520 "Copy BOM to Text"
    // #DMW16.00.03.01:A009 07.12.11 DEMSR.LV
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Description 2: Text 30 -> 50
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.00.02:T500 04.03.15 DEMSR.SSZ
    //   #Check if Line No. is not 0 in function LookUpAttributes
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00:A1201         24.11.09 DEMSR.AM Licensetest for Text Module
    // #TMW17.00.00.01:A0001   02.05.13 DEMSR.SSZ Codereview
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code
    // 
    // #QMW16.00.03:R472 09.08.11 DEMSR.KHS
    //   New Field: "Test Plan Setup exist"
    //   New function: OpenTestPlanSetup

    Caption = 'Production BOM Line';

    fields
    {
        field(1; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            NotBlank = true;
            TableRelation = "Production BOM Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Item,Production BOM';
            OptionMembers = " ",Item,"Production BOM";
        }
        field(11; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Item)) Item WHERE (Type = CONST (Inventory))
            ELSE
            IF (Type = CONST ("Production BOM")) "Production BOM Header";
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST ("Production BOM")) "Unit of Measure";
        }
        field(14; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(15; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(16; "Position 2"; Code[10])
        {
            Caption = 'Position 2';
        }
        field(17; "Position 3"; Code[10])
        {
            Caption = 'Position 3';
        }
        field(18; "Lead-Time Offset"; DateFormula)
        {
            Caption = 'Lead-Time Offset';
        }
        field(19; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
            TableRelation = "Routing Link";
        }
        field(20; "Scrap %"; Decimal)
        {
            BlankNumbers = BlankNeg;
            Caption = 'Scrap %';
            DecimalPlaces = 0 : 5;
            MaxValue = 100;
        }
        field(21; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(22; Comment; Boolean)
        {
            CalcFormula = Exist ("Production BOM Comment Line" WHERE ("Production BOM No." = FIELD ("Production BOM No."),
                                                                     "Version Code" = FIELD ("Version Code"),
                                                                     "BOM Line No." = FIELD ("Line No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(29; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(40; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 0 : 5;
        }
        field(41; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 0 : 5;
        }
        field(42; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 0 : 5;
        }
        field(43; Depth; Decimal)
        {
            Caption = 'Depth';
            DecimalPlaces = 0 : 5;
        }
        field(44; "Calculation Formula"; Option)
        {
            Caption = 'Calculation Formula';
            Description = ':PMW13.70:1:1';
            OptionCaption = ' ,Length,Length * Width,Length * Width * Depth,Weight,,,,,,,,,,,Recipe';
            OptionMembers = " ",Length,"Length * Width","Length * Width * Depth",Weight,,,,,,,,,,,Recipe;
        }
        field(45; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
        }
        field(5012400; "Lot Determining"; Boolean)
        {
            Caption = 'Lot Determining';
            Description = ':PMW14.02:88:1';
        }
        field(5012402; "Expiration Determining"; Boolean)
        {
            Caption = 'Expiration Determining';
            Description = '#PMW16.00.02:T302';
        }
        field(5012403; "Comp. Location Code"; Code[10])
        {
            Caption = 'Comp. Location Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Location;
        }
        field(5012404; "Comp. Bin Code"; Code[20])
        {
            Caption = 'Comp. Bin Code';
            Description = '#PMW16.00.03:T102';
            TableRelation = Bin.Code WHERE ("Location Code" = FIELD ("Comp. Location Code"));
        }
        field(5012560; "Item Type"; Option)
        {
            Caption = 'Item Type';
            Description = ':PMW13.70:1:1';
            OptionCaption = ' ,Share of Recipe,Item';
            OptionMembers = " ","Share of Recipe",Item;
        }
        field(5012561; "Share %"; Decimal)
        {
            Caption = 'Share %';
            DecimalPlaces = 0 : 3;
            Description = ':PMW13.70:1:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012562; Shares; Decimal)
        {
            Caption = 'Shares';
            DecimalPlaces = 0 : 5;
            Description = ':PMW13.70:1:1';
            MinValue = 0;
        }
        field(5012650; "Calculation Group Code"; Code[10])
        {
            Caption = 'Calculation Group Code';
            Description = '#CAW16.00.01:T101';
            TableRelation = "Calculation Group".Code WHERE (Type = CONST (Item));
        }
        field(5013405; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = ':DMW13.70.01:1:01';
            OptionCaption = ' ,Document BOM,Construction';
            OptionMembers = " ","Document BOM",Construction;
        }
        field(5013410; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013420; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            Description = ':DMW13.60.03:1:01';
            Editable = false;
        }
        field(5013430; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
            Description = ':DMW13.60.03:1:02';
        }
        field(5013435; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(5013440; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Description = ':DMW13.70.01:1:02';
            TableRelation = Location.Code;
        }
        field(5013470; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
            Description = ':DMW13.71:1:01';
            Editable = false;
        }
        field(5013491; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Description = '#DMW16.00.02:T102';
        }
        field(5013492; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = '#DMW16.00.02:T102';
        }
        field(5013493; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = '#DMW16.00.02:T102';
        }
        field(5013494; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = '#DMW16.00.02:T102';
        }
        field(5013500; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            Description = ':DMW14.03:1:01';
            TableRelation = "Base Material";
        }
        field(5013510; "Separate Delivery"; Boolean)
        {
            Caption = 'Separate Delivery';
            Description = ':DMW15.01:21:01';
        }
        field(5013520; "Copy BOM to Text"; Option)
        {
            Caption = 'Copy BOM to Text';
            Description = '#DMW16.00.03:T009';
            OptionCaption = ' ,Production BOM,Doc./Constr. BOM';
            OptionMembers = " ","Production BOM","Doc./Constr. BOM";
        }
        field(5034550; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            Description = '#QMW16.00.03:R472';
            TableRelation = "Test Plan";
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Production BOM No.", "Version Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "No.")
        {
        }
        key(Key3; "Source No.", "Source Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

