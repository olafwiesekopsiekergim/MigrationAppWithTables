table 5171714 "CMNM Document Type"
{
    Caption = 'Multinav Mail Document Type';

    fields
    {
        field(1; Type; Code[20])
        {
            Caption = 'Type';
            NotBlank = true;
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Type)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

