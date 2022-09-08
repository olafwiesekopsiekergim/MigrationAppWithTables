table 5000087 "Cost Account Schedule Name"
{
    Caption = 'Cost Account Schedule Name';
    DataCaptionFields = Name, Description;

    fields
    {
        field(1; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Default Column Layout"; Code[10])
        {
            Caption = 'Default Column Layout';
            TableRelation = "CostAcc.Sched.Column Lay. Name";
        }
        field(4; "Analysis View Name"; Code[10])
        {
            Caption = 'Analysis View Name';
            TableRelation = IF ("Analysis Source" = CONST ("Cost Accounting")) "Cost Account Analysis View"
            ELSE
            IF ("Analysis Source" = CONST ("Project Accounting")) "Project Account Analysis View";
        }
        field(5; "Analysis Source"; Option)
        {
            Caption = 'Analysis Source';
            OptionCaption = 'Cost Accounting,Project Accounting';
            OptionMembers = "Cost Accounting","Project Accounting";
        }
    }

    keys
    {
        key(Key1; Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

