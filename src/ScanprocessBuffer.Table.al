table 5171657 "Scanprocess Buffer"
{
    // CDA8.00:
    //   New Fields:
    //     Multiscan Rolle
    //     WST ID
    //     Wabe Bin
    //     Orderno.
    //     Order Lineno.
    //     PZN

    Caption = 'Scan Process Buffer';

    fields
    {
        field(1; User; Code[30])
        {
            Caption = 'Benutzer';
        }
        field(2; Barcode; Text[100])
        {
            Caption = 'Barcode';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(4; Quantity; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(15; "Source Lineno."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(20; "Base ID"; Code[20])
        {
            Caption = 'Base ID';
        }
        field(21; "Base Type"; Integer)
        {
            Caption = 'Base Type';
        }
        field(22; "Base Subtype"; Option)
        {
            Caption = 'Base Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(30; "Document complete"; Boolean)
        {
            Caption = 'Beleg komplett';
        }
        field(31; "Line complete"; Boolean)
        {
            Caption = 'Zeile komplett';
        }
        field(40; "Quantity Document"; Decimal)
        {
            Caption = 'Menge Beleg';
        }
        field(41; "Quantity Scan"; Decimal)
        {
            Caption = 'Menge Scan';
        }
        field(42; "Quantity Protocol"; Decimal)
        {
            Caption = 'Menge Protokoll';
        }
        field(44; "Quantity Rest"; Decimal)
        {
            Caption = 'Menge Rest';
        }
        field(46; "Quantity shipped"; Decimal)
        {
            Caption = 'Menge geliefert';
        }
        field(50; "DocInfo 1"; Text[50])
        {
            Caption = 'Beleginfo 1';
        }
        field(51; "DocInfo 2"; Text[50])
        {
            Caption = 'Beleginfo 2';
        }
        field(52; "DocInfo 3"; Text[50])
        {
            Caption = 'Beleginfo 3';
        }
        field(53; "DocInfo 4"; Text[50])
        {
            Caption = 'Beleginfo 4';
        }
        field(60; "Quantity Input"; Boolean)
        {
            Caption = 'Menge Eingabe';
        }
        field(70; "Info Code"; Code[20])
        {
            Caption = 'Infocode';
        }
        field(80; "Called From Source Doc"; Boolean)
        {
            Caption = 'Aufgerufen von Herkunftsbeleg';
        }
        field(90; ScanInfo; Text[30])
        {
            Caption = 'Scan Information';
        }
        field(100; Infoticker; Text[150])
        {
            Caption = 'Infoticker';
        }
        field(110; "MHD Date"; Date)
        {
            Caption = 'MHD Datum';
        }
        field(120; "Item Tracking Code"; Code[10])
        {
            Caption = 'Item Tracking Code';
            TableRelation = "Item Tracking Code";
        }
        field(130; "Document Scan"; Boolean)
        {
            Caption = 'Beleg Scan';
        }
        field(140; "Item Scan"; Boolean)
        {
            Caption = 'Artikel Scan';
        }
        field(150; "Item Scan Rules"; Code[20])
        {
            Caption = 'Artikel Scan Regel';
            TableRelation = "Scan Rules";
            ValidateTableRelation = false;
        }
        field(160; "Location Code"; Code[20])
        {
        }
        field(170; "Bin Code"; Code[20])
        {
        }
        field(50000; "Multiscan Rolle"; Option)
        {
            OptionMembers = " ",Verpackung,Lager,Qualicheck,"Qualicheck (AP)","Qualicheck (RX)";
        }
        field(50001; "WST ID"; Code[10])
        {
        }
        field(50002; "Wabe Bin"; Code[10])
        {
        }
        field(50003; "Orderno."; Code[20])
        {
        }
        field(50004; "Order Lineno."; Integer)
        {
        }
        field(50005; PZN; Code[20])
        {
        }
    }

    keys
    {
        key(Key1; User)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

