table 5171656 "Scan Setup"
{
    Caption = 'Scan Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(10; "Delete Lines when ready"; Boolean)
        {
            Caption = 'delete Lines when ready';
        }
        field(60; "Source Reserv. Quantity"; Decimal)
        {
            CalcFormula = Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Source Type" = FIELD ("Source Type Filter"),
                                                                           "Source Subtype" = FIELD ("Source Subtype Filter"),
                                                                           "Source ID" = FIELD ("Source ID Filter"),
                                                                           "Source Batch Name" = FIELD ("Source Batch Name Filter"),
                                                                           "Source Prod. Order Line" = FIELD ("Source Prod. Order Line Filter"),
                                                                           "Source Ref. No." = FIELD ("Source Ref. No. Filter")));
            Caption = 'Source Reserv. Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(62; "Source Scan Ref. No Quantity"; Decimal)
        {
            CalcFormula = Sum ("Scan Buffer"."Qty. to Handle (Base)" WHERE ("Source Type" = FIELD ("Source Type Filter"),
                                                                           "Source Subtype" = FIELD ("Source Subtype Filter"),
                                                                           "Source ID" = FIELD ("Source ID Filter"),
                                                                           "Source Batch Name" = FIELD ("Source Batch Name Filter"),
                                                                           "Source Prod. Order Line" = FIELD ("Source Prod. Order Line Filter"),
                                                                           "Source Ref. No." = FIELD ("Source Ref. No. Filter")));
            Caption = 'Source Scan Quantity';
            Description = 'Gesamtmenge';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "No. Scan Quantity"; Decimal)
        {
            CalcFormula = Sum ("Scan Buffer"."Qty. to Handle (Base)" WHERE ("Item No." = FIELD ("Item No. Filter"),
                                                                           "Serial No." = FIELD ("Serial No. Filter"),
                                                                           "Variant Code" = FIELD ("Variant Filter"),
                                                                           "Lot No." = FIELD ("Lot No. Filter")));
            Caption = 'No. Scan Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "No. Inventory"; Decimal)
        {
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE ("Item No." = FIELD ("Item No. Filter"),
                                                                  "Serial No." = FIELD ("Serial No. Filter"),
                                                                  "Variant Code" = FIELD ("Variant Filter"),
                                                                  "Lot No." = FIELD ("Lot No. Filter"),
                                                                  "Location Code" = FIELD ("Location Filter")));
            Caption = 'No. Inventory';
            DecimalPlaces = 0 : 5;
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "No. Reserv. Quantity"; Decimal)
        {
            CalcFormula = Sum ("Reservation Entry"."Quantity (Base)" WHERE ("Item No." = FIELD ("Item No. Filter"),
                                                                           "Serial No." = FIELD ("Serial No. Filter"),
                                                                           "Lot No." = FIELD ("Lot No. Filter"),
                                                                           "Variant Code" = FIELD ("Variant Filter")));
            Caption = 'No. Reserv. Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "No. Scanprotocol Quantity"; Decimal)
        {
            CalcFormula = Sum ("Scan Protocol"."Qty. to Handle (Base)" WHERE ("Source Type" = FIELD ("Source Type Filter"),
                                                                             "Source Subtype" = FIELD ("Source Subtype Filter"),
                                                                             "Source ID" = FIELD ("Source ID Filter"),
                                                                             "Source Batch Name" = FIELD ("Source Batch Name Filter"),
                                                                             "Source Prod. Order Line" = FIELD ("Source Prod. Order Line Filter"),
                                                                             "Source Ref. No." = FIELD ("Source Ref. No. Filter")));
            Caption = 'No. Scanprotocol Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "No. Scanprotocol Quantity 2"; Decimal)
        {
            CalcFormula = Sum ("Scan Protocol"."Qty. to Handle (Base)" WHERE ("Base Type" = FIELD ("Source Type Filter"),
                                                                             "Base Subtype" = FIELD ("Source Subtype Filter"),
                                                                             "Base ID" = FIELD ("Source ID Filter")));
            Caption = 'No. Scanprotocol Quantity';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Source Type Filter"; Integer)
        {
            Caption = 'Source Type Filter';
            FieldClass = FlowFilter;
        }
        field(101; "Source Subtype Filter"; Option)
        {
            Caption = 'Source Subtype';
            FieldClass = FlowFilter;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(102; "Source ID Filter"; Code[20])
        {
            Caption = 'Source ID';
            FieldClass = FlowFilter;
        }
        field(103; "Source Batch Name Filter"; Code[10])
        {
            Caption = 'Source Batch Name';
            FieldClass = FlowFilter;
        }
        field(104; "Source Prod. Order Line Filter"; Integer)
        {
            Caption = 'Source Prod. Order Line';
            FieldClass = FlowFilter;
        }
        field(105; "Source Ref. No. Filter"; Integer)
        {
            Caption = 'Source Ref. No.';
            FieldClass = FlowFilter;
        }
        field(200; "Serial No. Filter"; Code[50])
        {
            Caption = 'Serial No. Filter';
            FieldClass = FlowFilter;
        }
        field(201; "Lot No. Filter"; Code[20])
        {
            Caption = 'Lot No. Filter';
            FieldClass = FlowFilter;
        }
        field(202; "Item No. Filter"; Code[20])
        {
            Caption = 'Item No. Filter';
            FieldClass = FlowFilter;
            TableRelation = Item."No.";
        }
        field(203; "Variant Filter"; Code[20])
        {
            Caption = 'Variant Filter';
            FieldClass = FlowFilter;
            TableRelation = "Item Variant".Code;
        }
        field(204; "Location Filter"; Code[20])
        {
            Caption = 'Location Filter';
            FieldClass = FlowFilter;
            TableRelation = Location;
        }
        field(400; "Itemsearch Type"; Option)
        {
            Caption = 'Itemsearch Type';
            OptionCaption = 'Itemnumber,Itembarcode,Item Vendor Cataloge,Vendor Itemnumber,Item Reference,,None';
            OptionMembers = Itemnumber,Itembarcode,"Item Vendor Cataloge","Vendor Itemnumber",ItemReference,,"None";
        }
        field(402; "Itemsearch Type 2"; Option)
        {
            Caption = 'Itemsearch Type 2';
            OptionCaption = 'Itemnumber,Itembarcode,Item Vendor Cataloge,Vendor Itemnumber,Item Reference,,None';
            OptionMembers = Itemnumber,Itembarcode,"Item Vendor Cataloge","Vendor Itemnumber",ItemReference,,"None";
        }
        field(404; "Itemsearch Type 3"; Option)
        {
            Caption = 'Itemsearch Type 3';
            OptionCaption = 'Itemnumber,Itembarcode,Item Vendor Cataloge,Vendor Itemnumber,Item Reference,,None';
            OptionMembers = Itemnumber,Itembarcode,"Item Vendor Cataloge","Vendor Itemnumber",ItemReference,,"None";
        }
        field(420; "Itemsearch Scanmethodcode"; Code[20])
        {
            Caption = 'Itemsearch Scanmethodcode';
            TableRelation = "Scan Rules";
        }
        field(430; Commandstring; Code[2])
        {
            Caption = 'Commandstring';
        }
        field(440; "Beep on Error"; Boolean)
        {
            Caption = 'Beep on Error';
        }
        field(450; "Error confirm"; Boolean)
        {
            Caption = 'Error confirm';
        }
        field(460; "Convert Scancharacter from"; Text[30])
        {
            Caption = 'Convert Scancharacter from';
        }
        field(470; "Convert Scancharacter to"; Text[30])
        {
            Caption = 'Convert Scancharacter to';
        }
        field(471; "Truncate leading Character"; Text[1])
        {
            Caption = 'Truncate leading Character';
        }
        field(472; "Delete Character"; Text[30])
        {
            Caption = 'Delete Character';
        }
        field(473; "Delete Space"; Boolean)
        {
            Caption = 'Delete Space';
        }
        field(510; "Warning incomplete Scan"; Boolean)
        {
            Caption = 'Warning incomplete Scan';
        }
        field(520; "Transfer when next Doc"; Boolean)
        {
            Caption = 'Transfer when next Doc';
        }
        field(530; "Transfer when Form close"; Boolean)
        {
            Caption = 'Übertragen beim Schließen';
        }
        field(600; Itemtracking; Boolean)
        {
            Caption = 'Itemtracking';
        }
        field(610; "Base Qty. to ship"; Boolean)
        {
            Caption = 'Basis Menge zu liefern';
        }
        field(700; "Max StrLen Barcode"; Integer)
        {
            Caption = 'max. Länge Barcode';
        }
        field(710; "Warning max StrLen Barcode"; Boolean)
        {
            Caption = 'Warnung max.Länge Barcode';
        }
        field(50000; "Löschen alter Pufferdaten"; Boolean)
        {
            Caption = 'Löschen alter Pufferdaten';
        }
        field(50001; "Löschen alte Scanprot.daten"; Boolean)
        {
            Caption = 'Löschen alte Scanprot.daten';
        }
        field(50002; "Lösch. Scanprot. älter als"; DateFormula)
        {
            Caption = 'Lösch. Scanprot. älter als';
            InitValue = '-3M';
        }
        field(50003; "Links auffüllen mit"; Text[30])
        {
            Caption = 'Links auffüllen mit';
        }
        field(50004; "Links auffüllen wenn kürzer"; Integer)
        {
            Caption = 'Links auffüllen wenn kürzer';
        }
        field(50005; "Ausführen bei Scan-Complete"; Text[3])
        {
            Caption = 'Ausführen bei Scan-Complete';
        }
        field(50006; "Ausführen bei F11"; Text[3])
        {
            Caption = 'Ausführen bei F11';
        }
        field(50007; "CMS Integration"; Boolean)
        {
            Caption = 'CMS Integration';
        }
        field(50008; "CMS CU Create Ship"; Integer)
        {
            Caption = 'CMS CU Create Ship';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
        }
        field(50009; "CMS CU Process Ship"; Integer)
        {
            Caption = 'CMS CU Process Ship';
            TableRelation = Object.ID WHERE (Type = CONST (Codeunit));
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

