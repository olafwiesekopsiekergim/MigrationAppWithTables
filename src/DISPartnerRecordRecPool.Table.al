table 5100918 "DIS - Partner Record Rec. Pool"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Partner Record';

    fields
    {
        field(2; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            TableRelation = "DIS - Partner";
        }
        field(8; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(10; "Key 1"; Code[20])
        {
            Caption = 'Key 1';
        }
        field(11; "Key 2"; Code[20])
        {
            Caption = 'Key 2';
        }
        field(12; "Key 3"; Code[20])
        {
            Caption = 'Key 3';
        }
        field(13; "Key 4"; Code[20])
        {
            Caption = 'Key 4';
        }
        field(14; "Key 5"; Code[20])
        {
            Caption = 'Key 5';
        }
        field(15; "Key 6"; Code[20])
        {
            Caption = 'Key 6';
        }
        field(16; "Key 7"; Code[20])
        {
            Caption = 'Key 7';
        }
        field(17; "Key 8"; Code[20])
        {
            Caption = 'Key 8';
        }
        field(18; "Key 9"; Code[20])
        {
            Caption = 'Key 9';
        }
        field(19; "Key 10"; Code[20])
        {
            Caption = 'Key 10';
        }
        field(20; "Key 11"; Code[20])
        {
            Caption = 'Key 11';
        }
        field(21; "Key 12"; Code[20])
        {
            Caption = 'Key 12';
        }
        field(22; "Key 13"; Code[20])
        {
            Caption = 'Key 13';
        }
        field(23; "Key 14"; Code[20])
        {
            Caption = 'Key 14';
        }
        field(24; "Key 15"; Code[20])
        {
            Caption = 'Key 15';
        }
        field(30; "Record Id"; RecordID)
        {
            Caption = 'Record Id';
        }
        field(31; "Record Id Text"; Text[250])
        {
            Caption = 'Record ID Text';
        }
        field(50; "Process Record"; Boolean)
        {
            Caption = 'Process Record';
        }
    }

    keys
    {
        key(Key1; "Partner Code", "Record Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

