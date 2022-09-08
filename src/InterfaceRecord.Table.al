table 5309006 "Interface Record"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #IFW18.00:T100 10.08.15 DEMSR.BKR
    //   create module cc|interface

    Caption = 'Record';

    fields
    {
        field(1; "Transaction ID"; Integer)
        {
            Caption = 'Transaction ID';
            TableRelation = Transaction.ID;
        }
        field(2; "Transaction Entry ID"; Integer)
        {
            Caption = 'Transaction Entry ID';
            TableRelation = "Transaction Entry".ID WHERE ("Transaction ID" = FIELD ("Transaction ID"));
        }
        field(3; "Record ID"; Integer)
        {
            Caption = 'Record ID';
        }
        field(4; "Project Code"; Code[20])
        {
            Caption = 'Project Code';
            TableRelation = Project.Code;
        }
        field(5; "Project Function Code"; Code[20])
        {
            Caption = 'Project Function Code';
            TableRelation = "Project Function".Code WHERE ("Project Code" = FIELD ("Project Code"));
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Processed,Error';
            OptionMembers = " ",Processed,Error;
        }
    }

    keys
    {
        key(Key1; "Transaction ID", "Transaction Entry ID", "Record ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

