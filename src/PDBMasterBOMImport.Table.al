table 5013880 "PDB Master BOM Import"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Field: ID Code 10 -> 20
    //   #Changes because of NAV 7, "User ID"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB Master BOM Import';
    DataCaptionFields = ID, "Item No.", "Variant Code";

    fields
    {
        field(10; ID; Code[20])
        {
            Caption = 'ID';
            NotBlank = true;
        }
        field(20; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            NotBlank = true;
        }
        field(30; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(40; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
        }
        field(50; "Entry No. PDB"; Integer)
        {
            Caption = 'Entry No. PDB';
        }
        field(60; "Description 1"; Text[50])
        {
            Caption = 'Description 1';
        }
        field(70; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(80; Comment; Text[50])
        {
            Caption = 'Comment';
        }
        field(90; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 5 : 5;
        }
        field(100; Length; Decimal)
        {
            Caption = 'Length';
            DecimalPlaces = 5 : 5;
        }
        field(110; Width; Decimal)
        {
            Caption = 'Width';
            DecimalPlaces = 5 : 5;
        }
        field(120; Height; Decimal)
        {
            Caption = 'Height';
            DecimalPlaces = 5 : 5;
        }
        field(130; "Position No."; Code[10])
        {
            Caption = 'Position No.';
        }
        field(140; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
        }
        field(150; "Last User ID Modified"; Code[50])
        {
            Caption = 'Last User ID Modified';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; ID, "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

