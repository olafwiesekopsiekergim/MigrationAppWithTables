table 5292369 "PR - Vacation Journal Line"
{
    Caption = 'Vacation Journal Line';

    fields
    {
        field(1; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            Description = 'TR Resource';
            NotBlank = true;
            TableRelation = Resource;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
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
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(910; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
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
        field(3420; Scheduled; Decimal)
        {
            Caption = 'Scheduled';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
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
        key(Key1; "Person No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Person No.", "Entry Type", "Document No.", Start)
        {
            SumIndexFields = "Vacation days";
        }
    }

    fieldgroups
    {
    }
}

