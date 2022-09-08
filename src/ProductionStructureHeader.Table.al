table 5012405 "Production Structure Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.01:4110:1
    //   # OnInsert, Änderung für wahlweise Erstellung von Fert.-Stückliste/Arbeitsplan
    // 
    // :PMW14.01:2466:1
    //   # New field 300 "Production Variant"
    //   # New field 301 "Variant Code"
    //   # New field 302 "Location Code"
    //   # New field 303 "Minimum Lot Size"
    //   # New field 304 "Maximum Lot Size"
    //   # New key <Status,Production Structur Type,Item No.,Production Variant,Variant Code,Location Code>
    //   # Item No. - OnValidate, Löschen der Variante, Beschreibung und Beschreibung 2
    //   # New function "SetUpControls"
    // 
    // :PMW14.01:2465:1
    //   # New field 61 "Lot Size"
    //   # New field 60 "Production Structur Type"
    //   # Item No. - OnValidate, Prüfung Feld "Production Structur Type"
    //   # Zur Erfassung einer Prod.-Struktur ohne Artikel Relation für Einheit geändert.
    //   # Bei leerer Artikelnr. Relation auf Einheit
    //   # New function "CheckLotSize"
    // 
    // :PMW14.01:2926:1
    //   # New key <Item No., Status>
    // 
    // :PMW14.01:13:1
    //   # New function "SetStatusClosed"
    //   # Status - OnValidate, call function "SetStatusClosed"
    //   # Bei Status Abgelaufen Fert.-Stückliste und Arbeitsplan ändern
    //   # OnInsert, Filter Artikelnr. als Artilelnr. übernehmen
    // 
    // :PMW14.01:2465:1
    //   # Status - OnValidate, Aufuf der Prüfung Entwickungsstruktur
    //   # Production Structur Type - OnValidate, Update der Produktionsstruktur Zeilen
    // 
    // :PMW14.02:148:1
    //   # New field 400 "Ship-to Customer No."
    //   # New field 401 "Ship-to Contact No."
    //   # New field 402 "Ship-to Code"
    //   # New field 403 "Ship-to Name"
    //   # New field 404 "Ship-to Name 2"
    //   # New field 405 "Ship-to Address"
    //   # New field 406 "Ship-to Address 2"
    //   # New field 407 "Ship-to Post Code"
    //   # New field 408 "Ship-to City"
    //   # New field 409 "Ship-to County"
    //   # New field 410 "Ship-to Country Code"
    //   # New field 411 "Ship-to Contact"
    //   # New field 412 "Your Reference"
    //   # New field 413 "Document Date"
    //   # New field 414 "Shipment Date"
    //   # New field 415 "Language Code"
    //   # New field 416 "Responsibility Center"
    //   # New field 420 "Sample Shipment"
    //   # New function "UpdateSellToCont"
    //   # New function "UpdateSellToCust"
    //   # New function "SetHideValidationDialog"
    // 
    // :PMW14.02:55:1
    //   # New field 62 "Max. Incorporation %"
    // 
    // :PMW14.02:175:1
    //   # New field 31 "Comment"
    // 
    // :PMW14.02.01:14:1
    //   # New key "Production Structure Type"
    // 
    // :PMW14.02.01:82:1
    //   # New field 63 "Expected Unit Cost"
    // 
    // :PMW14.02.01:76:1
    //   # Deleteall on Production Structure Line without parameter TRUE
    // 
    // :PMW14.02.01:78:1
    //   # New function "CheckUnitOfMeasureChange"
    //   # Unit of Measure Code - OnValidate, call new function "CheckUnitOfMeasureChange"
    // 
    // :PMW14.02.01:88:1
    //   # Delete Prod. Structure Header Comments
    // 
    // :PMW14.02.01:14:1
    //   # New field 64 "Created from Prod. Struc. No."
    // 
    // :PMW14.02.01:55:1
    //   # Delete Incorporation Lines
    // 
    // :PMW14.02.01:9999:1
    //   # Sample Shipment without customer
    // 
    // BOTTLING:PMW15.00:204:1
    //   # New option "Bottling Structure" in field "Production Structure Type"
    //   # TableRelation field "Item No." changed
    // 
    // :PMW15.00:225:1
    //   # New field 65 "Content Specification on"
    //   # New field 66 "Expected Density"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // :PMW16.00:109:1
    //   # LookupFormID and DrillDownFormID changed to "Structure List"
    // 
    // #PMW16.00.00.01:T504 07.04.09 DEMSR.IG
    //   Ship-to fields length expanded
    // 
    // #PMW16.00.00.02:T500 29.04.09 DEMSR.IST
    //   Check used Production Structure, Production BOM and Routing
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW16.00.02.05:T510 16.06.11 DEMSR.IST
    //   New Key <Production BOM No.>
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   PM Integration
    // 
    // #RAW17.00 19.10.12 DEMSR.KHS
    //   "Last Modified by" set to 50 Chars, TableRelation updated to User."User Name"
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   Functions on field "Ship-to Post Code" and "Ship-to City" changed to NAV 2013
    //   Field "Ship-to Country Code" changed to "Ship-to Country/Region Code"
    // 
    // #PMW17.00.00.03:T504 26.08.13 DEMSR.IST
    //   Expand field 11 Description and 12 "Description 2" from 30 to 50 characters
    // 
    // #PMW17.10:T102 29.10.13 DEMSR.IST
    //   Changed relation for Item No. field, only items with Type=Inventory
    // 
    // #AMPW17.00:T100 11.06.13 DEMSR.IST
    //   Call of PostCode.ClearFields in field 410 "Ship-to Country/Region Code" disabled
    //   Function does not exist is NAV 2013 update rollup 1
    // 
    // #PMW17.10.00.02:T101 04.04.14 DEMSR.LV
    //   Redesign Ingredients
    //   Check and Update Item
    //   Call Function "Update.UpdateProdStrucHeaderIngredients"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.10.01:T507 01.08.14 DEMSR.IST
    //   Ingredients are not copied to production structure header if production structure is created from item
    //   Set CurrFieldNo to "Item No." in OnInsert

    Caption = 'Production Structure Header';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = IF ("Production Structure Type" = CONST ("Bottling Structure")) Item."No." WHERE (Type = CONST (Inventory),
                                                                                                           "Trading Unit per Item UOM" = FILTER (<> " "))
            ELSE
            Item."No." WHERE (Type = CONST (Inventory));
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
            Description = '#PMW17.00.00.03:T504';
        }
        field(12; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
            Description = '#PMW17.00.00.03:T504';
        }
        field(20; "BOM Type"; Option)
        {
            Caption = 'BOM Type';
            OptionCaption = 'Standard,Recipe';
            OptionMembers = Standard,Recipe;
        }
        field(30; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(31; Comment; Boolean)
        {
            CalcFormula = Exist ("Manufacturing Comment Line" WHERE ("Table Name" = CONST ("Production Structure Header"),
                                                                    "No." = FIELD ("No.")));
            Caption = 'Comment';
            Description = ':PMW14.02:175:1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(45; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(51; "Series No."; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(60; "Production Structure Type"; Option)
        {
            Caption = 'Production Structure Type';
            Description = 'BOTTLING:PMW15.00:204:1';
            InitValue = "Manufacturing Structure";
            OptionCaption = ' ,Development Structure,Laboratory Structure,Manufacturing Structure,Bottling Structure';
            OptionMembers = " ","Development Structure","Laboratory Structure","Manufacturing Structure","Bottling Structure";
        }
        field(61; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:2465:1';
            MinValue = 0;
        }
        field(62; "Max. Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation %';
            DecimalPlaces = 0 : 2;
            Description = ':PMW14.02:55:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(63; "Expected Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Expected Unit Cost';
            Description = ':PMW14.02.01:82:1';
            MinValue = 0;
        }
        field(64; "Created from Prod. Struc. No."; Code[20])
        {
            Caption = 'Created from Prod. Struc. No.';
            Description = ':PMW14.02.01:14:1';
            Editable = false;
            TableRelation = "Production Structure Header"."No.";
        }
        field(65; "Content Specification on"; Option)
        {
            Caption = 'Content Specification on';
            Description = ':PMW15.00:225:1';
            OptionCaption = 'Mass %,Volume Share %';
            OptionMembers = "Mass %","Volume Share %";
        }
        field(66; "Expected Density"; Decimal)
        {
            BlankZero = true;
            Caption = 'Expected Density';
            DecimalPlaces = 0 : 5;
            Description = ':PMW15.00:225:1';
            Editable = false;
        }
        field(100; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(101; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(102; "Production BOM Series No."; Code[10])
        {
            Caption = 'Production BOM Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(103; "New Production BOM"; Boolean)
        {
            Caption = 'New Production BOM';
        }
        field(104; "Production BOM Vers.Series No."; Code[10])
        {
            Caption = 'Production BOM Vers.Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(111; "Manuf. BOM No."; Code[20])
        {
            Caption = 'Manuf. BOM No.';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(112; "Manuf. BOM Version Code"; Code[20])
        {
            Caption = 'Manuf. BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(113; "Manuf. BOM Series No."; Code[10])
        {
            Caption = 'Manuf. BOM Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(114; "Manuf. BOM Vers.Series No."; Code[10])
        {
            Caption = 'Manuf. BOM Vers.Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(121; "Recipe BOM No."; Code[20])
        {
            Caption = 'Recipe BOM No.';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(122; "Recipe BOM Version Code"; Code[20])
        {
            Caption = 'Recipe BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(123; "Recipe BOM Series No."; Code[10])
        {
            Caption = 'Recipe BOM Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(124; "Recipe BOM Vers.Series No."; Code[10])
        {
            Caption = 'Recipe BOM Vers.Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(150; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            IF ("Item No." = FILTER ('')) "Unit of Measure".Code;
        }
        field(200; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header"."No." WHERE (Status = CONST (Certified));
        }
        field(201; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(202; "Routing Series No."; Code[10])
        {
            Caption = 'Routing Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(203; "New Routing"; Boolean)
        {
            Caption = 'New Routing';
        }
        field(204; "Routing Vers. Series No."; Code[10])
        {
            Caption = 'Routing Vers. Series No.';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(300; "Production Variant"; Boolean)
        {
            Caption = 'Production Variant';
            Description = ':PMW14.01:2466:1';
        }
        field(301; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = ':PMW14.01:2466:1';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(302; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Description = ':PMW14.01:2466:1';
            TableRelation = Location;
        }
        field(303; "Minimum Lot Size"; Decimal)
        {
            Caption = 'Minimum Lot Size';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:2466:1';
            MinValue = 0;
        }
        field(304; "Maximum Lot Size"; Decimal)
        {
            Caption = 'Maximum Lot Size';
            DecimalPlaces = 0 : 5;
            Description = ':PMW14.01:2466:1';
            MinValue = 0;
        }
        field(400; "Ship-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            Description = ':PMW14.02:148:1';
            TableRelation = Customer;
        }
        field(401; "Ship-to Contact No."; Code[20])
        {
            Caption = 'Sell-to Contact No.';
            Description = ':PMW14.02:148:1';
            TableRelation = Contact;
        }
        field(402; "Ship-to Code"; Code[10])
        {
            Caption = 'Ship-to Code';
            Description = ':PMW14.02:148:1';
            TableRelation = "Ship-to Address".Code WHERE ("Customer No." = FIELD ("Ship-to Customer No."));
        }
        field(403; "Ship-to Name"; Text[50])
        {
            Caption = 'Ship-to Name';
            Description = '#PMW16.00.00.01:T504';
        }
        field(404; "Ship-to Name 2"; Text[50])
        {
            Caption = 'Ship-to Name 2';
            Description = '#PMW16.00.00.01:T504';
        }
        field(405; "Ship-to Address"; Text[50])
        {
            Caption = 'Ship-to Address';
            Description = '#PMW16.00.00.01:T504';
        }
        field(406; "Ship-to Address 2"; Text[50])
        {
            Caption = 'Ship-to Address 2';
            Description = '#PMW16.00.00.01:T504';
        }
        field(407; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            Description = ':PMW14.02:148:1';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(408; "Ship-to City"; Text[30])
        {
            Caption = 'Ship-to City';
            Description = ':PMW14.02:148:1';
            TableRelation = "Post Code".City;
        }
        field(409; "Ship-to County"; Text[30])
        {
            Caption = 'Ship-to County';
            Description = ':PMW14.02:148:1';
        }
        field(410; "Ship-to Country/Region Code"; Code[10])
        {
            Caption = 'Ship-to Country/Region Code';
            Description = ':PMW14.02:148:1';
            TableRelation = "Country/Region";
        }
        field(411; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
            Description = '#PMW16.00.00.01:T504';
        }
        field(412; "Your Reference"; Text[30])
        {
            Caption = 'Your Reference';
            Description = ':PMW14.02:148:1';
        }
        field(413; "Document Date"; Date)
        {
            Caption = 'Document Date';
            Description = ':PMW14.02:148:1';
        }
        field(414; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
            Description = ':PMW14.02:148:1';
        }
        field(415; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            Description = ':PMW14.02:148:1';
            TableRelation = Language;
        }
        field(416; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            Description = ':PMW14.02:148:1';
            TableRelation = "Responsibility Center";
        }
        field(420; "Sample Shipment"; Boolean)
        {
            Caption = 'Sample Shipment';
            Description = ':PMW14.02:148:1';
        }
        field(5060461; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#RAW16.00:T100,#RAW17.00';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", Status)
        {
        }
        key(Key3; Status, "Production Structure Type", "Item No.", "Production Variant", "Variant Code", "Location Code")
        {
        }
        key(Key4; "Production Structure Type")
        {
        }
        key(Key5; "Production BOM No.")
        {
        }
    }

    fieldgroups
    {
    }
}

