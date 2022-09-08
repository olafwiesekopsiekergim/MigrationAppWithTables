table 5072453 "Type Technical Data"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.01:R059    15.10.09 DEMSR.KHS Divide Items into Types: Item, Machine, Supplementary Part, Machine Component
    // #RENW16.00.01.01:T504 08.02.10 DEMSR.KHS The Extended Data Type for the "Internet Link" Field was not set to URL
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Type Technical Data';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(2; "Type of Counter"; Option)
        {
            Caption = 'Type of Counter';
            OptionCaption = ' ,Hours,Miles,Hours+Miles';
            OptionMembers = " ",Hours,Miles,"Hours+Miles";
        }
        field(3; "Performance (KW)"; Decimal)
        {
            Caption = 'Performance (kW)';
            DecimalPlaces = 0 : 2;
        }
        field(4; "Performance (HP)"; Decimal)
        {
            Caption = 'Performance (HP)';
            DecimalPlaces = 0 : 2;
        }
        field(5; "External Colour"; Code[10])
        {
            Caption = 'External Colour';
            TableRelation = "Machine Color";
        }
        field(6; "Internal Colour"; Code[10])
        {
            Caption = 'Internal Colour';
            TableRelation = "Machine Color";
        }
        field(7; "Internet Link"; Text[250])
        {
            Caption = 'Internet Link';
            Description = '#RENW16.00.01.01:T504';
            ExtendedDatatype = URL;
        }
    }

    keys
    {
        key(Key1; "Item No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

