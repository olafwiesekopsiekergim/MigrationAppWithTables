table 5395817 "Email Distrib. Table Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T103 08.10.14 DEMSR.KHS
    //   Send e-Mail with pdf
    //   Object Created
    // 
    // #AMPW18.00.00.07:T100 DEMSR.KHS
    //   Update Email Names and Captions

    Caption = 'Email Distrib. Table Setup';

    fields
    {
        field(10; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(20; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(50; "Email Distribution Code"; Code[10])
        {
            Caption = 'Email Distribution Code';
            TableRelation = "Email Distribution Setup";
        }
        field(500; "From Status"; Code[20])
        {
            Caption = 'From Status';
            TableRelation = "Lot-/ Serial No. Status".Code;
        }
        field(510; "To Status"; Code[20])
        {
            Caption = 'To Status';
            TableRelation = "Lot-/ Serial No. Status".Code;
        }
    }

    keys
    {
        key(Key1; "Table ID", "Record ID", "From Status", "To Status")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

