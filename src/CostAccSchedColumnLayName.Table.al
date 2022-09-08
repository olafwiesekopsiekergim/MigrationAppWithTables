table 5000089 "CostAcc.Sched.Column Lay. Name"
{
    Caption = 'Cost Acc. Sched. Column Layout Name';
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
        field(6; "Max. No. Of Columns Scroll"; Option)
        {
            Caption = 'Max. No. Of Columns Scroll';
            OptionCaption = '12,13,14,15';
            OptionMembers = "0","1","2","3";
        }
        field(7; "Print Format"; Option)
        {
            Caption = 'Print Format';
            OptionCaption = 'A4,A3';
            OptionMembers = "0","1";
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
        fieldgroup(DropDown; Name, Description, "Analysis Source", "Analysis View Name")
        {
        }
    }
}

