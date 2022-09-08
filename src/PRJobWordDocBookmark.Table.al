table 5292380 "PR - Job Word Doc. Bookmark"
{
    Caption = 'Job Word Doc. Bookmark';

    fields
    {
        field(1; Bookmark; Text[50])
        {
            Caption = 'Bookmark';
            NotBlank = true;
        }
    }

    keys
    {
        key(Key1; Bookmark)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

