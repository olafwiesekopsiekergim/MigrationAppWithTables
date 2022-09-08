table 5013882 "PDB Constr. BOM Export"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, "User ID"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB Constr. BOM Export';
    DataCaptionFields = "Document No.", "Item No.", "Variant Code";

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(20; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(30; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
        }
        field(40; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(50; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(60; "Entry No. PDB"; Integer)
        {
            Caption = 'Entry No. PDB';
        }
        field(70; "Description 1"; Text[50])
        {
            Caption = 'Description 1';
        }
        field(80; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(90; Comment; Text[50])
        {
            Caption = 'Comment';
        }
        field(100; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 5 : 5;
        }
        field(110; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 5 : 5;
        }
        field(120; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 5 : 5;
        }
        field(130; Height; Decimal)
        {
            Caption = 'Height';
            DecimalPlaces = 5 : 5;
        }
        field(140; "Position No."; Code[10])
        {
            Caption = 'Position No.';
        }
        field(150; Status; Code[20])
        {
            Caption = 'Status';
        }
        field(160; "Last  Date Modified"; Date)
        {
            Caption = 'Last  Date Modified';
        }
        field(170; "Last User ID Modified"; Code[50])
        {
            Caption = 'Last User ID Modified';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(180; "Assembly Unit"; Boolean)
        {
            Caption = 'Assembly Unit';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No.", "Belongs to Entry No.", "Item No.", "Variant Code")
        {
        }
    }

    fieldgroups
    {
    }
}

