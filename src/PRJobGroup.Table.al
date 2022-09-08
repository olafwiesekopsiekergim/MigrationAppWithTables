table 5292385 "PR - Job Group"
{
    // PRCA01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|calculation for cc|project

    Caption = 'Job Group';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; Groupfilter; Text[250])
        {
            Caption = 'Filter';
            Editable = false;
        }
        field(4; "Internal Filter"; Text[250])
        {
            Caption = 'Internal Filter';
            Editable = false;
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

