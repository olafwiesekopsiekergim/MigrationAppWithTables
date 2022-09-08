table 5056291 "Time Account Group/T"
{
    Caption = 'Time Account Group';
    DataCaptionFields = "No.", Description;
    Description = 'GrTAGroup';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

