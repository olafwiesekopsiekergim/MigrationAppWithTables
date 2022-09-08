table 5013872 "PDB BOM Export"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Corrected Caption
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB BOM Export';
    DataCaptionFields = "Document Type", "Document No.", "Document Line No.";

    fields
    {
        field(10; "Session ID"; Integer)
        {
            Caption = 'Session ID';
        }
        field(20; "Document Type"; Code[20])
        {
            Caption = 'Document Type';
            NotBlank = true;
        }
        field(30; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(40; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            NotBlank = true;
        }
        field(50; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(60; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
        }
        field(70; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(80; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(90; "Entry No. PDB"; Integer)
        {
            Caption = 'Entry No. PDB';
        }
        field(100; "Description 1"; Text[50])
        {
            Caption = 'Description 1';
        }
        field(110; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(120; Comment; Text[50])
        {
            Caption = 'Comment';
        }
        field(130; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 5 : 5;
        }
        field(140; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 5 : 5;
        }
        field(150; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 5 : 5;
        }
        field(160; Height; Decimal)
        {
            Caption = 'Height';
            DecimalPlaces = 5 : 5;
        }
        field(170; "Position No."; Code[10])
        {
            Caption = 'Position No.';
        }
        field(180; "Assembly Unit"; Boolean)
        {
            Caption = 'Assembly Unit';
        }
        field(190; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
        field(200; "Customer Name"; Code[30])
        {
            Caption = 'Customer Name';
        }
    }

    keys
    {
        key(Key1; "Session ID", "Document Type", "Document No.", "Document Line No.", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

