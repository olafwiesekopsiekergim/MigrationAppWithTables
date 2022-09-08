table 5012520 "Detail Calculation Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.00:3008:1
    //   # New field 9 "Accept Quantity"
    // 
    // :PMW14.01:20:1
    //   # New field 20 "Production BOM No."
    //   # New field 21 "Production BOM Version Code"
    //   # New field 22 "Routing No."
    //   # New field 23 "Routing Version Code"
    // 
    // :PMW14.02.01:5:1
    //   # Code Base Translation
    // 
    // :PMW14.02.01:82:1
    //   # New field 25 "Production Structure No."
    // 
    // :PMW14.02.01:124:1
    //   # New field 26 "Use Production BOM"
    //   # New field 27 "Use Routing"
    // 
    // :PMW15.00:240:1
    //   # Wrong TableRelation of fields "Use Production BOM" and "Use Routing" deleted
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // #PMW17.00:T503 14.01.13 DEMSR.IST
    //   Field 8 "Multi-Level Calculation", Field name and ENU-Caption corrected
    // 
    // #PMW17.10.00.01:T505
    //   Field 2 Description: 30 -> 50
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Detail Calculation Header';
    DataCaptionFields = "Item No.", Description;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(4; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(5; Quantity; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(6; "Act. Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Act. Unit Cost';
            Editable = false;
        }
        field(7; "Act. Standard Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Act. Standard Cost';
            Editable = false;
            MinValue = 0;
        }
        field(8; "Multi-Level Calculation"; Boolean)
        {
            Caption = 'Multi-Level Calculation';
        }
        field(9; "Accept Quantity"; Boolean)
        {
            Caption = 'Accept Quantity';
            Description = ':PMW14.00:3008:1';
        }
        field(20; "Production Structur Calc."; Boolean)
        {
            Caption = 'Production Structur Calc.';
            Description = ':PMW14.01:20:1';
        }
        field(21; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            Description = ':PMW14.01:20:1';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(22; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            Description = ':PMW14.01:20:1';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(23; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Description = ':PMW14.01:20:1';
            TableRelation = "Routing Header"."No." WHERE (Status = CONST (Certified));
        }
        field(24; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            Description = ':PMW14.01:20:1';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(25; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            Description = ':PMW14.02.01:82:1';
            TableRelation = "Production Structure Header";
        }
        field(26; "Use Production BOM"; Boolean)
        {
            Caption = 'Use Production BOM';
            Description = ':PMW14.02.01:124:1';
        }
        field(27; "Use Routing"; Boolean)
        {
            Caption = 'Use Routing';
            Description = ':PMW14.02.01:124:1';
        }
    }

    keys
    {
        key(Key1; "Item No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

