table 7153 "Item Analysis View Filter"
{
    // #RENW16.00.01:R057 06.11.09 DEMSR.KHS
    //   Analysis by Dimensions

    Caption = 'Item Analysis View Filter';

    fields
    {
        field(1; "Analysis Area"; Option)
        {
            Caption = 'Analysis Area';
            OptionCaption = 'Sales,Purchase,Inventory,,,,,,,,,,Service';
            OptionMembers = Sales,Purchase,Inventory,,,,,,,,,,Service;
        }
        field(2; "Analysis View Code"; Code[10])
        {
            Caption = 'Analysis View Code';
            NotBlank = true;
            TableRelation = "Item Analysis View".Code WHERE ("Analysis Area" = FIELD ("Analysis Area"),
                                                             Code = FIELD ("Analysis View Code"));
        }
        field(3; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(4; "Dimension Value Filter"; Code[250])
        {
            Caption = 'Dimension Value Filter';
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Analysis Area", "Analysis View Code", "Dimension Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

