table 11102040 "OM - Flow"
{
    Caption = 'Flow';
    DataCaptionFields = "Code", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Transport Status"; Code[20])
        {
            Caption = 'Transport Status';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = FIELD ("Table Name"));
        }
        field(4; "Default Status"; Code[20])
        {
            Caption = 'Default Status';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = FIELD ("Table Name"));
        }
        field(5; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport';
            OptionMembers = Project,Transport;
        }
        field(6; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
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

