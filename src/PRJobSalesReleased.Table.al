table 5292345 "PR - Job Sales Released"
{
    Caption = 'Job Sales Released';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(8000; "-- Sale"; Integer)
        {
            Caption = '-- Sale';
            Enabled = false;
        }
        field(8021; "Date of Confirmation"; Date)
        {
            Caption = 'Date of Confirmation';
        }
        field(8030; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Description = 'ne ,Sales Quote,Sales Order';
            Editable = false;
            OptionCaption = ' ,Sales Quote,Sales Order';
            OptionMembers = " ","Sales Quote","Sales Order";
        }
        field(8031; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'ne';
            Editable = false;
            TableRelation = IF ("Document Type" = CONST ("Sales Quote")) "Sales Header"."No." WHERE ("Document Type" = CONST (Quote))
            ELSE
            IF ("Document Type" = CONST ("Sales Order")) "Sales Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(8032; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            Description = 'ne';
            Editable = false;
            TableRelation = IF ("Document Type" = CONST ("Sales Quote")) "Sales Line"."Line No." WHERE ("Document Type" = CONST (Quote),
                                                                                                     "Document No." = FIELD ("Document No."))
            ELSE
            IF ("Document Type" = CONST ("Sales Order")) "Sales Line"."Line No." WHERE ("Document Type" = CONST (Order),
                                                                                                                                                                                   "Document No." = FIELD ("Document No."));
        }
        field(8040; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(8210; "Total Price Released (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price Released (LCY)';
        }
        field(8220; "Original Total Price (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Original Total Price (LCY)';
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
        }
        field(5292335; "WIP Job No."; Code[20])
        {
            Caption = 'WIP Job No.';
            TableRelation = Job;
        }
        field(5292336; "WIP Position No."; Integer)
        {
            Caption = 'WIP Position No.';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Document Type", "Document No.", "Document Line No.")
        {
        }
        key(Key3; "Job No.", "Job Line Unique No.", "Date of Confirmation", "Document Type")
        {
            SumIndexFields = "Total Price Released (LCY)";
        }
        key(Key4; "WIP Job No.", "WIP Position No.", "Date of Confirmation", "Document Type")
        {
            SumIndexFields = "Total Price Released (LCY)";
        }
    }

    fieldgroups
    {
    }
}

