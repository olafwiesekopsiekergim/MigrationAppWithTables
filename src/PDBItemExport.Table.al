table 5013870 "PDB Item Export"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Corrected Caption
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB Item Export';
    DataCaptionFields = "Session ID", "Item No.", "Variant Code";

    fields
    {
        field(10; "Session ID"; Integer)
        {
            Caption = 'Session ID';
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
        }
        field(30; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            NotBlank = true;
        }
        field(40; "Description 1"; Text[30])
        {
            Caption = 'Description 1';
        }
        field(50; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(60; "Base Unit of Measure"; Code[10])
        {
            Caption = 'Base Unit of Measure';
        }
        field(70; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            DecimalPlaces = 5 : 5;
            NotBlank = false;
        }
        field(80; "Unit Cost"; Decimal)
        {
            Caption = 'Unit Cost';
            DecimalPlaces = 5 : 5;
        }
        field(90; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
        }
        field(100; "Vendor Item No."; Code[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(110; Weight; Decimal)
        {
            Caption = 'Weight';
            DecimalPlaces = 5 : 5;
        }
        field(120; Volume; Decimal)
        {
            Caption = 'Volume';
            DecimalPlaces = 5 : 5;
        }
        field(130; "Product Group Code"; Code[10])
        {
            Caption = 'Product Group Code';
        }
    }

    keys
    {
        key(Key1; "Session ID", "Item No.", "Variant Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

