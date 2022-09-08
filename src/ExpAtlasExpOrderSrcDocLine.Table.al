table 5138379 "Exp Atlas ExpOrder SrcDoc Line"
{
    Caption = 'Atlas ExpOrder SrcDoc Line';

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
        field(10; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(101; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (" ")) "Standard Text"
            ELSE
            IF (Type = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (Resource)) Resource
            ELSE
            IF (Type = CONST ("Fixed Asset")) "Fixed Asset"
            ELSE
            IF (Type = CONST ("Charge (Item)")) "Item Charge";
        }
        field(102; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(103; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(104; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(105; "Unit of Measure"; Text[10])
        {
            Caption = 'Unit of Measure';
        }
        field(108; "Qty. to Export"; Decimal)
        {
            Caption = 'Qty. to Export';
            DecimalPlaces = 0 : 5;
        }
        field(109; "Qty. to Export (Base)"; Decimal)
        {
            Caption = 'Qty. to Export (Base)';
            DecimalPlaces = 0 : 5;
        }
        field(110; "Gross Weight"; Decimal)
        {
            Caption = 'Gross Weight';
            DecimalPlaces = 0 : 5;
        }
        field(111; "Net Weight"; Decimal)
        {
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
        }
        field(112; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(114; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 2 : 2;
        }
        field(115; "Statistic Value"; Decimal)
        {
            BlankZero = true;
            Caption = 'Statistic Value';
            DecimalPlaces = 2 : 2;
            Editable = false;
        }
        field(116; "Statistic Quantity"; Decimal)
        {
            BlankZero = true;
            Caption = 'Statistic Quantity';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(117; Correction; Boolean)
        {
            Caption = 'Correction';
            Description = 'Kennzeichen für Gutschrift in der Codeunit "Calcwareline"';
        }
        field(118; "Orig. Item Tariff No."; Code[10])
        {
            Caption = 'Orig. Item Tariff No.';
            TableRelation = "Tariff Number";
        }
        field(119; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(120; "Country of Origin Code"; Code[10])
        {
            Caption = 'Country of Origin Code';
            TableRelation = "Country/Region";
        }
        field(121; "Tariff No."; Code[10])
        {
            Caption = 'Tariff No.';
            TableRelation = "Tariff Number";
        }
        field(122; "Aggregation Code 2"; Code[20])
        {
            Caption = 'Aggregation Code 2';
            Description = '2. Verdichtungscode (angem. Verfahren), bei CalcWareLine';
        }
        field(123; "Aggregation Code 3"; Code[20])
        {
            Caption = 'Aggregation Code 3';
            Description = '3. Verdichtungscode (vorang. Verfahren), bei CalcWareLine';
        }
        field(124; "Country of Dest. Code"; Code[10])
        {
            Caption = 'Country of Dest. Code';
            TableRelation = "Country/Region";
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
            Caption = 'Textfield 1';
            Description = 'für eigene Verwendung';
        }
        field(1101; "Textfield 2"; Text[30])
        {
            Caption = 'Textfield 2';
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
        key(Key1; "AAK No.", "Source Type", "Source Subtype", "Source No.", "Source Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Tariff No.", "Area", "Aggregation Code 2", "Aggregation Code 3")
        {
        }
    }

    fieldgroups
    {
    }
}

