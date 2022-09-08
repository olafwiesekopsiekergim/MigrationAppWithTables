table 5309002 "Project Function"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #IFW18.00:T100 10.08.15 DEMSR.BKR
    //   create module cc|interface

    Caption = 'Project Function';
    DataCaptionFields = "Project Code", "Code", Description;

    fields
    {
        field(1; "Project Code"; Code[20])
        {
            Caption = 'Project Code';
            TableRelation = Project.Code;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(4; "Processing Codeunit"; Integer)
        {
            Caption = 'Processing Codeunit';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Codeunit));
        }
        field(5; "Data Format Code"; Code[20])
        {
            Caption = 'Data Format Code';
            TableRelation = "Data Format".Code;
        }
        field(6; "Continue Proces. After Error"; Boolean)
        {
            Caption = 'Continue Processing After Error';
        }
        field(7; "Endpoint / Filename"; Text[250])
        {
            Caption = 'Endpoint / Filename';
        }
    }

    keys
    {
        key(Key1; "Project Code", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

