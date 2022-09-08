table 42014824 "Servotion Route Data"
{
    Caption = 'Route Data';

    fields
    {
        field(1; "Origin Latitude"; Decimal)
        {
            Caption = 'Origin Latitude';
            DecimalPlaces = 0 : 7;
        }
        field(2; "Origin Longitude"; Decimal)
        {
            Caption = 'Origin Longitude';
            DecimalPlaces = 0 : 7;
        }
        field(3; "Destination Latitude"; Decimal)
        {
            Caption = 'Destination Latitude';
            DecimalPlaces = 0 : 7;
        }
        field(4; "Destination Longitude"; Decimal)
        {
            Caption = 'Destination Longitude';
            DecimalPlaces = 0 : 7;
        }
        field(21; Distance; Decimal)
        {
            Caption = 'Distance';
        }
        field(22; Duration; Duration)
        {
            Caption = 'Duration';
        }
        field(23; "Last Modified DateTime"; DateTime)
        {
            Caption = 'Last Modified DateTime';
        }
        field(24; "Calculation Type"; Option)
        {
            Caption = 'Calculation Type';
            OptionCaption = 'Bing,Google,Straight Line';
            OptionMembers = Bing,Google,"Straight Line";
        }
        field(25; "Last Query DateTime"; DateTime)
        {
            Caption = 'Last Query DateTime';
        }
        field(26; "Query Count"; Integer)
        {
            Caption = 'Query Count';
        }
    }

    keys
    {
        key(Key1; "Origin Latitude", "Origin Longitude", "Destination Latitude", "Destination Longitude")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

