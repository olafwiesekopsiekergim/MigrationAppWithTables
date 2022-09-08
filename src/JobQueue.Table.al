table 470 "Job Queue"
{
    Caption = 'Job Queue';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; "Job Queue Category Filter"; Text[80])
        {
            Caption = 'Job Queue Category Filter';
            TableRelation = "Job Queue Category";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Server Instance ID"; Integer)
        {
            Caption = 'Server Instance ID';
            Editable = false;
        }
        field(5; "Session ID"; Integer)
        {
            Caption = 'Session ID';
            Editable = false;
        }
        field(6; "Last Heartbeat"; DateTime)
        {
            Caption = 'Last Heartbeat';
            Editable = false;
        }
        field(7; Started; Boolean)
        {
            Caption = 'Started';
            Editable = false;
        }
        field(8; "Start Automatically From NAS"; Boolean)
        {
            Caption = 'Start Automatically From NAS';
        }
        field(9; "Start on This NAS Computer"; Text[250])
        {
            Caption = 'Start on This NAS Computer';
        }
        field(10; "Start on This NAS Instance"; Text[250])
        {
            Caption = 'Start on This NAS Instance';
        }
        field(11; "Running as User ID"; Text[132])
        {
            Caption = 'Running as User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(12; "Running on Server Computer"; Text[250])
        {
            CalcFormula = Lookup ("Server Instance"."Server Computer Name" WHERE ("Server Instance ID" = FIELD ("Server Instance ID")));
            Caption = 'Running on Server Computer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Running on Server Instance"; Text[250])
        {
            CalcFormula = Lookup ("Server Instance"."Server Instance Name" WHERE ("Server Instance ID" = FIELD ("Server Instance ID")));
            Caption = 'Running on Server Instance';
            Editable = false;
            FieldClass = FlowField;
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

