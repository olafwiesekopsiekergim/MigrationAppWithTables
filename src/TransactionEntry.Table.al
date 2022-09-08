table 5309005 "Transaction Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #IFW18.00:T100 10.08.15 DEMSR.BKR
    //   create module cc|interface

    Caption = 'Transaction Entry';

    fields
    {
        field(1; "Transaction ID"; Integer)
        {
            Caption = 'Transaction ID';
            TableRelation = Transaction.ID;
        }
        field(2; ID; Integer)
        {
            Caption = 'ID';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Inbound,Outbound';
            OptionMembers = Inbound,Outbound;
        }
        field(4; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Received,Processed,Sent,Error';
            OptionMembers = " ",Received,Processed,Sent,Error;
        }
        field(5; "Attached to Entry ID"; Integer)
        {
            Caption = 'Attached to Entry ID';
        }
        field(6; "Data Format Code"; Code[20])
        {
            Caption = 'Data Format Code';
            TableRelation = "Data Format".Code;
        }
        field(7; "Endpoint / Filename"; Text[250])
        {
            Caption = 'Endpoint / Filename';
        }
        field(10; "Created By User ID"; Guid)
        {
            Caption = 'Created By User ID';
            Editable = false;
            TableRelation = User;
        }
        field(11; "Created By User Name"; Code[50])
        {
            CalcFormula = Lookup (User."User Name" WHERE ("User Security ID" = FIELD ("Created By User ID")));
            Caption = 'Created By User Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Created Date-Time"; DateTime)
        {
            Caption = 'Created Date-Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Transaction ID", ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

