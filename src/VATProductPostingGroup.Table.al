table 324 "VAT Product Posting Group"
{
    // APTW:DMW15.01:58:01 #Advance Payment Management
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'VAT Product Posting Group';
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
        field(5013500; "Adv. Paym. VAT Prod.Post.Grp."; Code[10])
        {
            Caption = 'Down Payment VAT Product Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "VAT Product Posting Group";
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
        fieldgroup(Brick; "Code", Description)
        {
        }
    }
}

