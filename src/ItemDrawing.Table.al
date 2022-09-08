table 5013401 "Item Drawing"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #deleted TableRelation in field 110, Changed LookUp function
    // #DMW16.00.03.03:A009 22.05.12 DEMSR.SSZ
    //   #Field "Item No." havn't got a table relation to table Item. That has been solved
    //   #LookUp- and DrillDownFormID's were empty. This has been solved
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Drawing';
    DataCaptionFields = "Item No.", Description;

    fields
    {
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(20; Version; Code[10])
        {
            Caption = 'Version';
            NotBlank = true;
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; "File Name"; Code[250])
        {
            Caption = 'File Name';
        }
        field(120; Date; Date)
        {
            Caption = 'Date';
        }
    }

    keys
    {
        key(Key1; "Item No.", Version)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

