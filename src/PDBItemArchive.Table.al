table 5013877 "PDB Item Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #NotBlank = No in fields Item No. and Variant Code
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, "User ID"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB Item Archive';
    DataCaptionFields = ID, "Item No.", "Variant Code";

    fields
    {
        field(10; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(20; "Item No."; Code[20])
        {
            Caption = 'Item No.';
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
        field(140; "Date Time"; DateTime)
        {
            Caption = 'Date Time';
        }
        field(150; "Action"; Code[40])
        {
            Caption = 'Action';
        }
        field(160; User; Code[50])
        {
            Caption = 'User';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Variant Code")
        {
        }
    }

    fieldgroups
    {
    }
}

