table 77001 "Translation Dictionary"
{
    // cc|translate (TNS)

    Caption = 'Translation Dictionary';

    fields
    {
        field(1; Ref_HashCode; Integer)
        {
            Caption = 'HashCode';
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = "Windows Language"."Language ID";
        }
        field(3; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(4; Text; Text[250])
        {
            Caption = 'Text';
        }
        field(5; "No of Use"; Integer)
        {
            Caption = 'No of Use';
        }
    }

    keys
    {
        key(Key1; Ref_HashCode, "Language Code", "Entry No.")
        {
            Clustered = true;
            MaintainSQLIndex = true;
            SQLIndex = Ref_HashCode, "Language Code", "Entry No.";
        }
        key(Key2; Ref_HashCode, "Language Code", "No of Use")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
    }

    fieldgroups
    {
    }
}

