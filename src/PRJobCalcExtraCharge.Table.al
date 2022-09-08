table 5292354 "PR - Job Calc. Extra Charge"
{
    Caption = 'Job Calc. Extra Charge';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            Description = 'Absolute,Percentage';
            OptionCaption = 'Absolute,Percentage';
            OptionMembers = Absolute,Percentage;
        }
        field(30; Rate; Decimal)
        {
            Caption = 'Rate';
        }
    }

    keys
    {
        key(Key1; "Code", "Starting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

