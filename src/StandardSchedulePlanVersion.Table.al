table 5013577 "Standard Schedule Plan Version"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Standard Schedule Plan Version';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Schedule Version';
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; Schedule; Boolean)
        {
            CalcFormula = Exist ("Standard Schedule Plan" WHERE (Version = FIELD (Code)));
            Caption = 'Schedule';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(50; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(60; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Serial,Parallel';
            OptionMembers = Serial,Parallel;
        }
        field(70; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
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

