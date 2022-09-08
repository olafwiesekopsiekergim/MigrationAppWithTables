table 77000 "Dynamic Translation"
{
    // cc|translate (TNS)

    Caption = 'Dynamic Translation';
    Permissions = TableData "Translation Dictionary" = rimd;

    fields
    {
        field(1; "Record ID"; RecordID)
        {
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language.Code;
        }
        field(3; Text; Text[250])
        {
            Caption = 'Text1Field';
        }
        field(4; "Text 2"; Text[250])
        {
            Caption = 'Text2Field';
        }
        field(5; "Text 3"; Text[250])
        {
            Caption = 'Text3Field';
        }
        field(6; "Text 4"; Text[250])
        {
            Caption = 'Text4Field';
        }
        field(7; "Text 5"; Text[250])
        {
            Caption = 'Text4Field';
        }
        field(10; "Table ID"; Integer)
        {
        }
        field(11; "Check Entry"; Boolean)
        {
            Caption = 'Check Entry';
        }
        field(50; "HTML Text"; BLOB)
        {
            Description = 'TNSW19.00.01';
        }
    }

    keys
    {
        key(Key1; "Record ID", "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

