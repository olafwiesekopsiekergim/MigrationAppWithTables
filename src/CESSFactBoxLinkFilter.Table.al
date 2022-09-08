table 5351551 "CESS - FactBox LinkFilter"
{
    Caption = 'FactBox LinkFilter';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(999; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(1000; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(1001; "Key Text 1"; Text[100])
        {
            Caption = 'Key Text 1';
        }
        field(1002; "Key Text 2"; Text[100])
        {
            Caption = 'Key Text 2';
        }
        field(1003; "Key Text 3"; Text[100])
        {
            Caption = 'Key Text 3';
        }
        field(1004; "Key Text 4"; Text[100])
        {
            Caption = 'Key Text 4';
        }
        field(1005; "Key Text 5"; Text[100])
        {
            Caption = 'Key Text 5';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

