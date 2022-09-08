table 50000 "Job Item Category"
{
    // P0005 16.02.16 CCBIE.ARE New object
    // 
    // //c/mt/030614: - Überführung Felder aus Tabelle 94 Inventory Posting Group

    Caption = 'Job Item Category';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Description; Text[30])
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

