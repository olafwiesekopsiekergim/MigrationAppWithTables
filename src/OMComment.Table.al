table 11102095 "OM - Comment"
{
    Caption = 'Comment';
    DataCaptionFields = "Table Name", "No.";
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport,Branch,Merge';
            OptionMembers = Project,Transport,Branch,Merge;
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST (Project)) "OM - Project"
            ELSE
            IF ("Table Name" = CONST (Transport)) "OM - Transport"
            ELSE
            IF ("Table Name" = CONST (Branch)) "OM - Branch";
        }
        field(10; "Comment Date"; Date)
        {
            Caption = 'Date';
        }
        field(11; "Comment Time"; Time)
        {
            Caption = 'Time';
        }
        field(12; From; Code[50])
        {
            Caption = 'From';
        }
        field(13; "Send To"; Code[50])
        {
            Caption = 'To';
            TableRelation = "OM - User";
        }
        field(14; Type; Code[20])
        {
            Caption = 'Type';
            TableRelation = "OM - Comment Type".Code WHERE ("Table Name" = FIELD ("Table Name"));
        }
        field(15; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(16; Print; Boolean)
        {
            Caption = 'Print';
        }
        field(17; Transport; Boolean)
        {
            Caption = 'Transport';
        }
        field(18; Attachments; Boolean)
        {
            CalcFormula = Exist ("OM - Document Line" WHERE ("Comment Entry No." = FIELD ("Entry No.")));
            Caption = 'Attachments';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Table Name", "No.")
        {
        }
    }

    fieldgroups
    {
    }
}

