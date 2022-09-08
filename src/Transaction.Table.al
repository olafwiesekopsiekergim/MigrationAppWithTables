table 5309004 Transaction
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #IFW18.00:T100 10.08.15 DEMSR.BKR
    //   create module cc|interface

    Caption = 'Transaction';
    DataCaptionFields = ID, "Project Code", "Project Description";

    fields
    {
        field(1; ID; Integer)
        {
            AutoIncrement = true;
            Caption = 'ID';
        }
        field(2; "Project Code"; Code[20])
        {
            Caption = 'Project Code';
            TableRelation = Project.Code;
        }
        field(3; "Project Description"; Text[80])
        {
            CalcFormula = Lookup (Project.Description WHERE (Code = FIELD ("Project Code")));
            Caption = 'Project Description';
            Editable = false;
            FieldClass = FlowField;
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
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

