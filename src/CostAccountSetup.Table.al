table 5000099 "Cost Account Setup"
{
    Caption = 'Cost Account Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Cost Account No."; Code[20])
        {
            Caption = 'Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(3; "Credit Cost Account No."; Code[20])
        {
            Caption = 'Credit Cost Account No.';
            TableRelation = "Cost Account";
        }
        field(4; "Automatic Cost Posting"; Boolean)
        {
            Caption = 'Automatic Cost Posting';
        }
        field(5; "Corr. Journal Template Name"; Code[10])
        {
            Caption = 'Corr. Journal Template Name';
            TableRelation = "Cost Account Journal Template";
        }
        field(6; "Corr. Journal Batch Name"; Code[10])
        {
            Caption = 'Corr. Journal Batch Name';
        }
        field(7; "Default Budget Name"; Code[10])
        {
            Caption = 'Default Budget Name';
            TableRelation = "Cost Accounting Budget Name";
        }
        field(8; "Reference Unit Code"; Code[10])
        {
            Caption = 'Reference Unit Code';
            TableRelation = "Reference Unit";
        }
        field(9; "Automatic Performance Posting"; Boolean)
        {
            Caption = 'Automatic Performance Posting';
        }
        field(10; "Only Cost Accounting"; Boolean)
        {
            Caption = 'Only Cost Accounting';
        }
        field(11; "Reference Unit Code (Run)"; Code[10])
        {
            Caption = 'Reference Unit Code (Run)';
            TableRelation = "Reference Unit";
        }
        field(12; "Reference Unit Code (Setup)"; Code[10])
        {
            Caption = 'Reference Unit Code (Setup)';
            TableRelation = "Reference Unit";
        }
        field(13; "Archiving Allocations"; Boolean)
        {
            Caption = 'Archiving Allocations';
        }
        field(90; "Cost Account Filter (Primary)"; Text[250])
        {
            Caption = 'Cost Account Filter (Primary Cost)';
            TableRelation = "Project Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(91; "Cost Account Filter (Alloc.)"; Text[250])
        {
            Caption = 'Cost Account Filter (Allocation)';
            TableRelation = "Project Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(92; "Cost Account Filter (Distr.)"; Text[250])
        {
            Caption = 'Cost Account Filter (Distribution)';
            TableRelation = "Project Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(98; "Check Cost Account Usage"; Boolean)
        {
            Caption = 'Check Cost Account Usage';
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

