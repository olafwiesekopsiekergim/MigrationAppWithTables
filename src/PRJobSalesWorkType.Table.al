table 5292336 "PR - Job Sales Work Type"
{
    Caption = 'Job Sales Work Type';

    fields
    {
        field(1; "Service No."; Code[20])
        {
            Caption = 'Service No.';
            Description = 'TR Resource';
            NotBlank = true;
        }
        field(2; "Person Work Type Code"; Code[10])
        {
            Caption = 'Person Work Type Code';
            NotBlank = true;
            TableRelation = "Work Type";
        }
        field(10; "Service Work Type Code"; Code[10])
        {
            Caption = 'Service Work Type Code';
            TableRelation = "Work Type";
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Service No.", "Person Work Type Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

