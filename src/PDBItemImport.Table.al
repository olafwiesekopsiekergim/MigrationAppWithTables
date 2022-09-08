table 5013871 "PDB Item Import"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB Item Import';
    DataCaptionFields = "Item No.", "Variant Code";

    fields
    {
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
        }
        field(30; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(40; "Description 1"; Text[30])
        {
            Caption = 'Description 1';
        }
        field(50; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(60; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
        }
        field(70; "Unit Price"; Integer)
        {
            Caption = 'Unit Price';
        }
        field(80; "Unit Cost"; Integer)
        {
            Caption = 'Unit Cost';
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
        field(140; User; Code[20])
        {
            Caption = 'User';
        }
        field(150; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(160; "Assembly Unit"; Integer)
        {
            Caption = 'Assembly Unit';
            MaxValue = 1;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

