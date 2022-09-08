table 5013553 "Item - Master BOM"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:6:01 #changed property NotBlank in PrimaryKey fields to Yes
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #Corrected Caption
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T506 07.10.14 DEMSR.SSZ
    //   #Changed the ENU error message

    Caption = 'Item - Master BOM';
    DataCaptionFields = Item, Type, "Master BOM";

    fields
    {
        field(10; Item; Code[20])
        {
            Caption = 'Item';
            NotBlank = true;
            TableRelation = Item;
        }
        field(20; Type; Code[20])
        {
            Caption = 'Type';
            NotBlank = true;
            TableRelation = "BOM Type";
        }
        field(30; "Master BOM"; Code[20])
        {
            Caption = 'Master BOM';
            TableRelation = "Master BOM Header";
        }
        field(40; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Item, Type)
        {
            Clustered = true;
        }
        key(Key2; "Master BOM")
        {
        }
    }

    fieldgroups
    {
    }
}

