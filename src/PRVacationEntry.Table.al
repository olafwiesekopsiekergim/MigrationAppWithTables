table 5292370 "PR - Vacation Entry"
{
    Caption = 'Vacation Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Description = 'ne';
            Editable = false;
        }
        field(10; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            Description = ' ,Entitlement,Application for leave';
            OptionCaption = ' ,Entitlement,Application for leave';
            OptionMembers = " ",Entitlement,"Application for leave";
        }
        field(11; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(12; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(20; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(21; "Doc. No. completed"; Boolean)
        {
            Caption = 'Doc. No. completed';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(1011; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            Description = 'TR Resource';
            TableRelation = Resource;
        }
        field(1400; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            Editable = false;
            TableRelation = "Resource Group";
        }
        field(2010; "Vacation days"; Decimal)
        {
            Caption = 'Vacation days';
            DecimalPlaces = 0 : 5;
        }
        field(2011; "Vacation days rem."; Decimal)
        {
            Caption = 'Vacation days rem.';
            DecimalPlaces = 0 : 5;
        }
        field(2070; Granted; Boolean)
        {
            Caption = 'Granted';
        }
        field(2071; "Granted At"; Date)
        {
            Caption = 'Granted At';
            Description = 'ne';
            Editable = false;
        }
        field(2072; "Granted By"; Code[50])
        {
            Caption = 'Granted By';
            Description = 'TR User';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(4510; Start; Date)
        {
            Caption = 'Start';
        }
        field(4560; Finish; Date)
        {
            Caption = 'Finish';
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292334; WBS; Code[50])
        {
            Caption = 'WBS';
            Description = 'ne';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Person No.", Start, "Doc. No. completed")
        {
            SumIndexFields = "Vacation days";
        }
        key(Key3; "Person No.", Finish)
        {
        }
        key(Key4; "Person No.", "Entry Type", Start, Finish, "Doc. No. completed")
        {
        }
        key(Key5; "Person No.", "Entry Type", "Document No.", Start)
        {
            SumIndexFields = "Vacation days";
        }
    }

    fieldgroups
    {
    }
}

