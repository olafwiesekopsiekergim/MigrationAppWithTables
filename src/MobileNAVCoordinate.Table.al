table 42012824 "MobileNAV Coordinate"
{
    Caption = 'GPS Coordinates';

    fields
    {
        field(1; "User ID"; Code[50])
        {
        }
        field(2; "DateTime Created"; DateTime)
        {
        }
        field(3; Latitude; Decimal)
        {
        }
        field(4; Longitude; Decimal)
        {
        }
        field(5; Precision; Decimal)
        {
        }
        field(6; "Device ID"; Text[190])
        {
        }
        field(7; "Entry No."; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "User ID", "DateTime Created", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

