table 5000201 "Project Account Journal Batch"
{
    Caption = 'Project Account Journal Batch';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            NotBlank = true;
            TableRelation = "Project Acc. Journal Template";
        }
        field(2; Name; Code[10])
        {
            Caption = 'Name';
            NotBlank = true;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(5; "Template Type"; Option)
        {
            CalcFormula = Lookup ("Project Acc. Journal Template".Type WHERE (Name = FIELD ("Journal Template Name")));
            Caption = 'Template Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Cost,Overhead,Reference Distribution,Allocation';
            OptionMembers = Cost,Overhead,"Reference Distribution",Allocation;
        }
        field(6; Recurring; Boolean)
        {
            CalcFormula = Lookup ("Project Acc. Journal Template".Recurring WHERE (Name = FIELD ("Journal Template Name")));
            Caption = 'Recurring';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", Name)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

