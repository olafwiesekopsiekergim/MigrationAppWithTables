table 5000221 "Project Account Setup"
{
    Caption = 'Project Account Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(4; "Distribute with Cost Rate"; Option)
        {
            Caption = 'Distribute with Cost Rate';
            OptionCaption = 'Budget,Operational Actual,Tax';
            OptionMembers = Budget,"Operational Actual",Tax;
        }
        field(5; "Project Account No."; Code[20])
        {
            Caption = 'Project Account No.';
            TableRelation = "Project Account";
        }
        field(6; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(7; "Automatic Cost Posting"; Boolean)
        {
            Caption = 'Automatic Cost Posting';
        }
        field(8; "Corr. Journal Template Name"; Code[10])
        {
            Caption = 'Corr. Journal Template Name';
            TableRelation = "Project Acc. Journal Template";
        }
        field(9; "Corr. Journal Batch Name"; Code[10])
        {
            Caption = 'Corr. Journal Batch Name';
        }
        field(10; "Automatic Performance Posting"; Boolean)
        {
            Caption = 'Automatic Performance Posting';
        }
        field(11; "Project Account No. (Run)"; Code[20])
        {
            Caption = 'Project Account No. (Run)';
            TableRelation = "Project Account";
        }
        field(12; "Project Account No. (Setup)"; Code[20])
        {
            Caption = 'Project Account No. (Setup)';
            TableRelation = "Project Account";
        }
        field(13; "Reference Unit Code (Run)"; Code[10])
        {
            Caption = 'Reference Unit Code (Run)';
            TableRelation = "Reference Unit";
        }
        field(14; "Reference Unit Code (Setup)"; Code[10])
        {
            Caption = 'Reference Unit Code (Setup)';
            TableRelation = "Reference Unit";
        }
        field(90; "Proj. Account Filter (Primary)"; Text[250])
        {
            Caption = 'Project Account Filter (Primary Cost/Sales)';
            TableRelation = "Project Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(91; "Proj. Account Filter (Distr.)"; Text[250])
        {
            Caption = 'Project Account Filter (Distribution)';
            TableRelation = "Project Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(98; "Check Project Account Usage"; Boolean)
        {
            Caption = 'Check Project Account Usage';
        }
        field(100; "Project Account No. (Sales)"; Code[20])
        {
            Caption = 'Default Project Account No. (Sales Amount)';
            TableRelation = "Project Account";
        }
        field(101; "Project Account No. (COGS)"; Code[20])
        {
            Caption = 'Default Project Account No. (COGS Amount)';
            TableRelation = "Project Account";
        }
        field(102; "Use Parts of Std. Cost as COGS"; Boolean)
        {
            Caption = 'Use Parts of Standard Cost as COGS';
        }
        field(103; "Project Account No. (Material)"; Code[20])
        {
            Caption = 'Default Project Account No. (Material Cost)';
            TableRelation = "Project Account";
        }
        field(104; "Project Account No. (Capacity)"; Code[20])
        {
            Caption = 'Default Project Account No. (Capacity Cost)';
            TableRelation = "Project Account";
        }
        field(105; "Project Account No. (Cap. Ovh)"; Code[20])
        {
            Caption = 'Default Project Account No. (Capacity Overhead Cost)';
            TableRelation = "Project Account";
        }
        field(106; "Project Account No. (Subcont.)"; Code[20])
        {
            Caption = 'Default Project Account No. (Subcontracting Cost)';
            TableRelation = "Project Account";
        }
        field(107; "Project Account No. (Mfg. Ovh)"; Code[20])
        {
            Caption = 'Default Project Account No. (Manufacturing Overhead Cost)';
            TableRelation = "Project Account";
        }
        field(110; "Use Part of Unit Cost as RCost"; Boolean)
        {
            Caption = 'Use Parts of Unit Cost as Resource Costs';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

