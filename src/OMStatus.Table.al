table 11102039 "OM - Status"
{
    Caption = 'Status';
    DataCaptionFields = "Code", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Developing,Ready';
            OptionMembers = " ",Developing,Ready;
        }
        field(4; "Role Code"; Code[20])
        {
            Caption = 'Role';
            TableRelation = "OM - Role";
        }
        field(5; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport';
            OptionMembers = Project,Transport;
        }
        field(6; "Flow Code Filter"; Code[20])
        {
            Caption = 'Flow Code Filter';
            FieldClass = FlowFilter;
        }
        field(7; "In Flow"; Boolean)
        {
            CalcFormula = Exist ("OM - Flow Status" WHERE ("Table Name" = FIELD ("Table Name"),
                                                          "Flow Code" = FIELD ("Flow Code Filter"),
                                                          "Status Code" = FIELD (Code)));
            Caption = 'In Flow';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Table Name", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

