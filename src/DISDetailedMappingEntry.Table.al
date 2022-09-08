table 5100952 "DIS - Detailed Mapping Entry"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Detailed Mapping Entry';

    fields
    {
        field(1; "Mapping Entry No."; BigInteger)
        {
            Caption = 'Mapping Entry No.';
            TableRelation = "DIS - Mapping Entry";
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(5; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(6; "Version No."; Integer)
        {
            Caption = 'Version No.';
            TableRelation = "DIS - Mapping Version"."No." WHERE ("Mapping Code" = FIELD ("Mapping Code"));
        }
        field(7; "Mapping Line No."; Integer)
        {
            Caption = 'Mapping Line No.';
        }
        field(8; "Repository Code"; Code[20])
        {
            Caption = 'Repository Code';
            NotBlank = true;
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."));
        }
        field(20; "Repository Type"; Option)
        {
            Caption = 'Type';
            OptionCaption = 'NAV Table,Record Pool,XML Node,ADO Table,SharePoint List';
            OptionMembers = NAV,RecordPool,XML,ADO,SharePoint;
        }
        field(21; "Type of Change"; Option)
        {
            Caption = 'Type of Change';
            OptionCaption = 'Filter,Insert,Modify,Delete,Rename';
            OptionMembers = "Filter",Insert,Modify,Delete,Rename;
        }
        field(30; "Record Id"; RecordID)
        {
            Caption = 'Record Id';
        }
        field(50; "Textual Data"; BLOB)
        {
            Caption = 'Textual Data';
        }
        field(51; Compressed; Boolean)
        {
            Caption = 'Compressed';
        }
    }

    keys
    {
        key(Key1; "Mapping Entry No.", "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

