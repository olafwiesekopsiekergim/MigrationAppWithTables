table 5012580 "Restricted Sales Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.02:T250 13.10.10 DEMSR.KHS
    //   Object created
    // 
    // #PMW16.00.02.02:T502 04.01.11 DEMSR.IST
    //   Table relation to "Customer Group" for field "Customer Group Code"
    // 
    // #PMW17.00.00.01:T505 17.04.13 DEMSR.KHS
    //   Add Lookup to Filter fields to avoid find-as-you-type when entering filter strings
    // 
    // #PMW17.00.00.03:T502 22.07.13 DEMSR.KHS
    //   Added: Field "Combination"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Restricted Sales Setup';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(2; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(3; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(5; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(10; "Customer Filter"; Code[160])
        {
            Caption = 'Customer Filter';
            Description = '#PMW17.00.00.01:T505';
            TableRelation = Customer;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(15; "Customer Group Filter"; Code[160])
        {
            Caption = 'Customer Group Filter';
            Description = '#PMW17.00.00.01:T505';
            TableRelation = "Customer Group".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(20; "Country Filter"; Code[160])
        {
            Caption = 'Country Filter';
            Description = '#PMW17.00.00.01:T505';
            TableRelation = "Country/Region";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(21; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(30; Combination; Option)
        {
            Caption = 'Combination';
            Description = '#PMW17.00.00.03:T502';
            OptionCaption = 'OR,AND';
            OptionMembers = "OR","AND";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.", "Variant Code")
        {
        }
        key(Key3; "Item Category Code")
        {
        }
        key(Key4; "Customer Filter")
        {
        }
        key(Key5; "Customer Group Filter")
        {
        }
        key(Key6; "Country Filter")
        {
        }
    }

    fieldgroups
    {
    }
}

