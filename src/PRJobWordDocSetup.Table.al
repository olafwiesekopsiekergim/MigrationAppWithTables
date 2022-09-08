table 5292379 "PR - Job Word Doc. Setup"
{
    Caption = 'Job Word Doc. Setup';

    fields
    {
        field(1; "Job Word Doc. Code"; Code[20])
        {
            Caption = 'Job Word Doc. Code';
            Description = 'TR "Job Word Document"';
            NotBlank = true;
            TableRelation = "PR - Job Word Document";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; "Word Element Type"; Option)
        {
            Caption = 'Word Element Type';
            Description = ' ,Table,Bookmark';
            OptionCaption = ' ,Table,Bookmark';
            OptionMembers = " ","Table",Bookmark;
        }
        field(30; Bookmark; Text[50])
        {
            Caption = 'Bookmark';
        }
        field(40; "Table Index"; Integer)
        {
            Caption = 'Table Index';
        }
        field(50; "Calculation Group"; Code[10])
        {
            Caption = 'Calculation Group';
            Description = 'TR "Calculation Group"';
            TableRelation = "PR - Job Calc. Group";
        }
        field(51; "Calculation Group Filter"; Code[250])
        {
            Caption = 'Calculation Group Filter';
        }
        field(60; "Remove if empty"; Boolean)
        {
            Caption = 'Remove if empty';
        }
    }

    keys
    {
        key(Key1; "Job Word Doc. Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Job Word Doc. Code", "Word Element Type", Bookmark, "Table Index")
        {
        }
    }

    fieldgroups
    {
    }
}

