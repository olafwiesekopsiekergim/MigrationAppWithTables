table 5330282 "CMS Migration Data"
{
    Caption = 'CMS Migration Data';

    fields
    {
        field(5; "Migration Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = "CMS Migration Pack";
        }
        field(10; TableID; Integer)
        {
            Caption = 'TableID';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(20; "No."; Integer)
        {
            Caption = 'No.';
            TableRelation = "CMS Migration Record"."No." WHERE ("Migration Code" = FIELD ("Migration Code"),
                                                                TableID = FIELD (TableID));
        }
        field(30; FieldID; Integer)
        {
            Caption = 'FieldID';
            TableRelation = "CMS Migration Table Field".FieldID WHERE (TableID = FIELD (TableID));
        }
        field(40; Value; Text[250])
        {
            Caption = 'Value';
        }
        field(45; BlobValue; BLOB)
        {
        }
        field(50; Invalid; Boolean)
        {
            Caption = 'Invalid';
        }
        field(60; "To Check"; Boolean)
        {
            Caption = 'To Check';
        }
    }

    keys
    {
        key(Key1; "Migration Code", TableID, "No.", FieldID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

