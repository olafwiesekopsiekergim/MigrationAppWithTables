table 11102070 "OM - Translation Tool Rule"
{
    Caption = 'Translation Tool Rule';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            InitValue = "Field";
            OptionCaption = ',Object,Field,,Option,Text Constante,Tab Names,,Label,Tool Tip,,,Control,Menuitem';
            OptionMembers = ,"Object","Field",,Option,"Text Constante","Tab Names",,Label,"Tool Tip",,,Control,Menuitem;
        }
        field(3; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(4; "Language Id"; Integer)
        {
            BlankZero = true;
            Caption = 'Language Id';
            TableRelation = "Windows Language";
        }
        field(5; "Caption 1"; Text[200])
        {
            Caption = 'Caption';
        }
        field(6; "Caption 2"; Text[50])
        {
            Caption = 'Caption 2';
        }
        field(7; "Caption 3"; Text[250])
        {
            Caption = 'Caption 3';
        }
        field(8; "Caption 4"; Text[250])
        {
            Caption = 'Caption 4';
        }
        field(9; "Caption 5"; Text[250])
        {
            Caption = 'Caption 5';
        }
        field(10; "Translate Language Id"; Integer)
        {
            BlankZero = true;
            Caption = 'Translate Language Id';
        }
        field(11; "Translated Caption 1"; Text[250])
        {
            Caption = 'Translated Caption';
        }
        field(12; "Translated Caption 2"; Text[250])
        {
            Caption = 'Translated Caption 2';
        }
        field(13; "Translated Caption 3"; Text[250])
        {
            Caption = 'Translated Caption 3';
        }
        field(14; "Translated Caption 4"; Text[250])
        {
            Caption = 'Translated Caption 4';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Type, Name, "Language Id", "Caption 1", "Translate Language Id")
        {
        }
        key(Key3; Name, "Language Id", "Caption 1", "Translate Language Id")
        {
        }
    }

    fieldgroups
    {
    }
}

