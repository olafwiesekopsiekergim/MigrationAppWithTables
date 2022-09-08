table 42012837 "MobileNAV NoSeries Setup"
{
    // 2016-09-21 MNAD4.6.0.1 SZT
    // Added OfflineCard to lookup filter.

    Caption = 'NoSeries Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
        }
        field(2; "Service Name"; Text[100])
        {
            Editable = false;
        }
        field(3; "Field Name"; Text[75])
        {
        }
        field(4; "No Series Code"; Code[10])
        {
            TableRelation = "No. Series" WHERE ("Manual Nos." = CONST (true));
        }
        field(5; PageNo; Integer)
        {
        }
    }

    keys
    {
        key(Key1; "User ID", "Service Name", "Field Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Service Name", "Field Name", "No Series Code")
        {
        }
    }
}

