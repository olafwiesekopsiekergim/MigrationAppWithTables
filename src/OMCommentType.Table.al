table 11102044 "OM - Comment Type"
{
    Caption = 'Comment Type';
    DataCaptionFields = "Table Name", "Code", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'Project,Transport,Branch,Merge';
            OptionMembers = Project,Transport,Branch,Merge;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(4; "Order"; Integer)
        {
            Caption = 'Order';
        }
        field(5; Mandatory; Boolean)
        {
            Caption = 'Mandatory';
        }
        field(6; Print; Boolean)
        {
            Caption = 'Print';
        }
        field(7; Transport; Boolean)
        {
            Caption = 'Transport';
        }
    }

    keys
    {
        key(Key1; "Table Name", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Table Name", "Order")
        {
        }
    }

    fieldgroups
    {
    }
}

