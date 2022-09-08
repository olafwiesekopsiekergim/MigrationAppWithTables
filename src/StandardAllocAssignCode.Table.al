table 5000068 "Standard Alloc. Assign. Code"
{
    Caption = 'Standard Allocation Assignment Codes';
    DataCaptionFields = "Code", Description;
    PasteIsValid = false;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

