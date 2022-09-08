table 5100904 "DIS - User Permission"
{
    // cc|data integration suite - base (CCDIS)
    // cc|data integration suite - intercompany (CCDISIC)

    Caption = 'User Permission';

    fields
    {
        field(1; "User Id"; Code[50])
        {
            Caption = 'User';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(30; "Modify Partner"; Boolean)
        {
            Caption = 'Modify Partner';
            InitValue = true;
        }
        field(35; "Modify Sequence"; Boolean)
        {
            Caption = 'Modify Sequence';
            InitValue = true;
        }
        field(45; "Modify Mapping"; Boolean)
        {
            Caption = 'Modify Mapping';
            InitValue = true;
        }
        field(50; "Modify Record Pool"; Boolean)
        {
            Caption = 'Modify Record Pool';
            InitValue = true;
        }
        field(51; "Modify Conversion"; Boolean)
        {
            Caption = 'Modify Conversion';
            InitValue = true;
        }
        field(100; "Modify Intercompany"; Boolean)
        {
            Caption = 'Modify Intercompany';
            Description = 'CCDISIC';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "User Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

