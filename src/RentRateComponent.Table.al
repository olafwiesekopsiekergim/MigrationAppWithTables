table 5072661 "Rent Rate Component"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.01:R053 12.10.09 DEMSR.KHS
    //   Rate Parts
    // 
    // #RENW17.00 11.04.12 DEMSR.KHS
    //   Avoid entry of "Invoicing at" for Rate Parts
    // 
    // #RENW17.00.00.02:T100 04.06.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   parameter FieldNo renamed to FieldNoCurr
    // 
    // #RENW17.10.00.02:T101 19.03.14 DEMSR.KHS
    //   Add Intermediate One-Time Invoicing: New Option "Selected" in field "Invoicing at"
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rent Rate Component';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(4; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(5; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(6; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(7; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(8; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(9; "Invoicing at"; Option)
        {
            Caption = 'Invoicing at';
            Description = '#RENW17.10.00.02:T101';
            OptionCaption = ' ,Start of Rental,End of Rental,Selected';
            OptionMembers = " ","Start of Rental","End of Rental",Selected;
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ',Rate Part,One-Time Invoicing';
            OptionMembers = ,"Rate Part","One-Time Invoicing";
        }
    }

    keys
    {
        key(Key1; Type, "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; "Gen. Prod. Posting Group")
        {
        }
    }

    fieldgroups
    {
    }
}

