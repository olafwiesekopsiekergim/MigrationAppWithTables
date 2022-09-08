table 5013677 "Checklist Relation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #NotBlank = No in field 100
    // #DMW16.00.02.03:A0018 15.06.11 DEMSR.SSZ
    //   #Changed the test a bit because of behavior in RTC
    // #DMW17.00.00.01:A0001 15.05.13 DEMSR.SSZ  Codereview and don't allow to rename
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Checklist Relation';
    DataCaptionFields = "Table ID", "Code", Variant, "Code 2", "Checklist Type";

    fields
    {
        field(5; "Table ID"; Option)
        {
            Caption = 'Table ID';
            OptionCaption = ' ,Item,Resource,Customer,Vendor,Item/Vendor';
            OptionMembers = " ",Item,Resource,Customer,Vendor,"Item/Vendor";
        }
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = IF ("Table ID" = CONST (Item)) Item
            ELSE
            IF ("Table ID" = CONST (Resource)) Resource
            ELSE
            IF ("Table ID" = CONST (Customer)) Customer
            ELSE
            IF ("Table ID" = CONST (Vendor)) Vendor
            ELSE
            IF ("Table ID" = CONST ("Item/Vendor")) Item;
        }
        field(20; Variant; Code[10])
        {
            Caption = 'Variant';
            TableRelation = IF ("Table ID" = FILTER (Item | "Item/Vendor")) "Item Variant".Code WHERE ("Item No." = FIELD (Code));
        }
        field(25; "Code 2"; Code[20])
        {
            Caption = 'Code 2';
            TableRelation = IF ("Table ID" = CONST ("Item/Vendor")) Vendor;
        }
        field(30; "Checklist Type"; Code[20])
        {
            Caption = 'Checklist Type';
            NotBlank = true;
            TableRelation = "Checklist Type";
        }
        field(40; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(100; "Checklist Code"; Code[20])
        {
            Caption = 'Checklist Code';
            TableRelation = "Checklist Header Template".Code WHERE ("Checklist Type" = FIELD ("Checklist Type"));
        }
        field(110; Purchase; Boolean)
        {
            Caption = 'Purchase';
        }
        field(120; Sales; Boolean)
        {
            Caption = 'Sales';
        }
        field(130; Construction; Boolean)
        {
            Caption = 'Construction';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Code", Variant, "Code 2", "Checklist Type", "Starting Date")
        {
            Clustered = true;
            SQLIndex = Code, Variant, "Code 2", "Checklist Type", "Starting Date", "Table ID";
        }
    }

    fieldgroups
    {
    }
}

