table 251 "Gen. Product Posting Group"
{
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Gen. Product Posting Group';
    DataCaptionFields = "Code", Description;

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
        field(3; "Def. VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'Def. VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(4; "Auto Insert Default"; Boolean)
        {
            Caption = 'Auto Insert Default';
            InitValue = true;
        }
        field(5013500; "Adv. Payment Prod. Post. Grp."; Code[10])
        {
            Caption = 'Down Payment Gen. Product Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Gen. Product Posting Group";
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
        fieldgroup(Brick; "Code", Description, "Def. VAT Prod. Posting Group")
        {
        }
    }
}

