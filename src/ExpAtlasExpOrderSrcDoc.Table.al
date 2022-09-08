table 5138367 "Exp Atlas Exp.Order Src. Doc."
{
    Caption = 'Atlas Exp.Order Src. Doc.';

    fields
    {
        field(1; "AAK No."; Code[20])
        {
            Caption = 'AAK No.';
        }
        field(3; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            Editable = false;
        }
        field(6; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            Editable = false;
        }
        field(7; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            Editable = false;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(13; "Destination Type"; Option)
        {
            Caption = 'Destination Type';
            Editable = false;
            OptionCaption = ' ,Customer,Vendor,Location';
            OptionMembers = " ",Customer,Vendor,Location;
        }
        field(14; "Destination No."; Code[20])
        {
            Caption = 'Destination No.';
            Editable = false;
            TableRelation = IF ("Destination Type" = CONST (Customer)) Customer."No."
            ELSE
            IF ("Destination Type" = CONST (Vendor)) Vendor."No."
            ELSE
            IF ("Destination Type" = CONST (Location)) Location.Code;
        }
        field(15; "Destination Adress Type"; Option)
        {
            Caption = 'Destination Adress Type';
            Description = 'Shipment Address,Sell Address,Bill Adress';
            OptionCaption = 'Shipment Address,Sell Address,Bill Adress';
            OptionMembers = "Shipment Address","Sell Address","Bill Adress";
        }
        field(101; "GV Rechnungspreis"; Decimal)
        {
            Caption = 'Business transaction Invoice price';
            DecimalPlaces = 2 : 2;
        }
        field(102; "GV Waehrung"; Code[10])
        {
            Caption = 'Business transaction Currency';
            TableRelation = Currency;
        }
        field(139; "Empfaenger Ident. Art"; Code[1])
        {
            Caption = 'Consignee Ident. Type';
            Description = 'A1340 (Identifikationsart)';
        }
        field(140; "Empfaenger TIN"; Code[17])
        {
            Caption = 'Consignee Customs registration numbers';
        }
        field(141; "Empfaenger DE Zollnummer"; Code[1])
        {
            Caption = 'Consignee German Customs Number';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = FILTER ('A0027'));
        }
        field(142; "Empfaenger Name"; Text[50])
        {
            Caption = 'Consignee Name';
        }
        field(143; "Empfaenger Name 2"; Text[50])
        {
            Caption = 'Consignee Name 2';
        }
        field(144; "Empfaenger Kontakt"; Text[50])
        {
            Caption = 'Consignee Contact';
        }
        field(145; "Empfaenger Adresse"; Text[50])
        {
            Caption = 'Consignee Address';
        }
        field(146; "Empfaenger Adresse 2"; Text[50])
        {
            Caption = 'Consignee Address 2';
        }
        field(147; "Empfaenger Post Code"; Code[20])
        {
            Caption = 'Consignee Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(148; "Empfaenger Ort"; Text[35])
        {
            Caption = 'Consignee City Name';
        }
        field(149; "Empfaenger Laendercode"; Code[10])
        {
            Caption = 'Consignee Country Code';
            TableRelation = "Exp Atlas Table Code".Code WHERE ("Table Code" = FILTER ('C0008'));
        }
        field(150; "Shipment Method Code"; Code[10])
        {
            Caption = 'Shipment Method Code';
            TableRelation = "Shipment Method";
        }
        field(200; "Reg. AAK No."; Boolean)
        {
            CalcFormula = Exist ("Exp Atlas Reg Export Order" WHERE ("No." = FIELD ("AAK No.")));
            Caption = 'Reg. AAK No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1000; "External Document No."; Code[20])
        {
            Caption = 'External Document No.';
            Description = 'für eigene Referenzierungen';
        }
        field(1001; "External Document No. 2"; Code[20])
        {
            Caption = 'External Document No. 2';
            Description = 'für eigene Referenzierungen';
        }
        field(1002; "Shipping Agent No."; Code[20])
        {
            Caption = 'Shipping Agent No.';
            Description = 'für eigene Referenzierungen';
            TableRelation = Vendor;
        }
        field(1100; "Textfield 1"; Text[30])
        {
            Caption = 'Textfeld 1';
            Description = 'für eigene Verwendung';
        }
        field(1101; "Textfield 2"; Text[30])
        {
            Caption = 'Textfeld 2';
            Description = 'für eigene Verwendung';
        }
        field(1102; "Tariff Description"; Text[250])
        {
            Caption = 'Tariff Description';
            Description = 'für eigene Verwendung';
        }
    }

    keys
    {
        key(Key1; "AAK No.", "Source Type", "Source Subtype", "Source No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source Subtype", "Source No.")
        {
        }
    }

    fieldgroups
    {
    }
}

