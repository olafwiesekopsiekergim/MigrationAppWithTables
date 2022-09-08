table 11102041 "OM - Flow Status"
{
    Caption = 'Flow Status';
    DataPerCompany = false;

    fields
    {
        field(1; "Flow Code"; Code[20])
        {
            Caption = 'Flow Code';
            TableRelation = "OM - Flow".Code WHERE ("Table Name" = FIELD ("Table Name"));
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Status Code"; Code[20])
        {
            Caption = 'Status Code';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = FIELD ("Table Name"));
        }
        field(5; Role; Code[20])
        {
            Caption = 'Role';
            TableRelation = "OM - Role";
        }
        field(6; "Previous Status"; Code[100])
        {
            Caption = 'Previous Status';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = FIELD ("Table Name"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; "Next Status"; Code[100])
        {
            Caption = 'Next Status';
            TableRelation = "OM - Status".Code WHERE ("Table Name" = FIELD ("Table Name"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; "Send E-Mail to Active User"; Boolean)
        {
            Caption = 'Send E-Mail to Active User';
        }
        field(9; "Send E-Mail to Roles"; Code[100])
        {
            Caption = 'Send E-Mail to Roles';
            TableRelation = "OM - Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport';
            OptionMembers = Project,Transport;
        }
        field(11; "Block Table"; Boolean)
        {
            Caption = 'Block Table';
        }
    }

    keys
    {
        key(Key1; "Table Name", "Flow Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

