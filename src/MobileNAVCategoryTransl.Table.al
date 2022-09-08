table 42012828 "MobileNAV Category Transl."
{
    Caption = 'Category Translation';

    fields
    {
        field(1; Category; Code[20])
        {
            Caption = 'Category';
        }
        field(2; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Category, "Language Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

