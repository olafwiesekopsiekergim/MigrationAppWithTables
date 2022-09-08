table 5292355 "PR - Version"
{
    // PRCA01 PRODUKT.01:AMP0013 12.06.15 DENUE.ALAN Integration Revised
    //                                               New field:
    //                                               - "Entry No." for Reference Line No.

    Caption = 'Version';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            NotBlank = true;
            TableRelation = Job;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(10; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(20; Date; Date)
        {
            Caption = 'Date';
        }
        field(21; Time; Time)
        {
            Caption = 'Time';
        }
        field(30; "Show Changes"; Boolean)
        {
            Caption = 'Show Changes';
        }
        field(41; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Description = 'ne ,Sales Quote,Sales Order';
            Editable = false;
            OptionCaption = ' ,Sales Quote,Sales Order';
            OptionMembers = " ","Sales Quote","Sales Order";
        }
        field(42; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'ne';
            Editable = false;
            TableRelation = IF ("Document Type" = CONST ("Sales Quote")) "Sales Header"."No." WHERE ("Document Type" = CONST (Quote))
            ELSE
            IF ("Document Type" = CONST ("Sales Order")) "Sales Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(50; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Description = 'PRCA8.00.04';
        }
    }

    keys
    {
        key(Key1; "Job No.", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Show Changes")
        {
        }
        key(Key3; "Job No.", "Document Type", "Document No.")
        {
        }
    }

    fieldgroups
    {
    }
}

