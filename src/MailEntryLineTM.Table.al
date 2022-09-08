table 5056420 "Mail Entry Line/TM"
{
    Caption = 'Mail Entry Line';
    Description = 'GrMailEntryLine';

    fields
    {
        field(1; "Mail No."; Integer)
        {
            Caption = 'Mail No.';
            NotBlank = true;
            TableRelation = "Mail Entry/TM"."Mail No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(3; Body; Text[250])
        {
            Caption = 'Body';
        }
    }

    keys
    {
        key(Key1; "Mail No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

