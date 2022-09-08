table 5100936 "DIS - Record Pool Record Freq."
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool Record Frequency';

    fields
    {
        field(2; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            TableRelation = "DIS - Partner";
        }
        field(30; "Record Id"; RecordID)
        {
            Caption = 'Record Id';
        }
        field(150; "Creation Date"; DateTime)
        {
            Caption = 'Creation Date';
        }
        field(151; "Creation By"; Code[50])
        {
            Caption = 'Creation By';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Partner Code", "Record Id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

