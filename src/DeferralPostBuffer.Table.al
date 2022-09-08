table 1703 "Deferral Post. Buffer"
{
    Caption = 'Deferral Post. Buffer';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Prepmt. Exch. Rate Difference,G/L Account,Item,Resource,Fixed Asset';
            OptionMembers = "Prepmt. Exch. Rate Difference","G/L Account",Item,Resource,"Fixed Asset";
        }
        field(2; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
            NotBlank = true;
            TableRelation = "G/L Account" WHERE ("Account Type" = CONST (Posting),
                                                 Blocked = CONST (false));
        }
        field(3; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(4; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(5; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(6; "VAT Prod. Posting Group"; Code[10])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(7; "Tax Area Code"; Code[20])
        {
            Caption = 'Tax Area Code';
            TableRelation = "Tax Area";
        }
        field(8; "Tax Group Code"; Code[10])
        {
            Caption = 'Tax Group Code';
            TableRelation = "Tax Group";
        }
        field(9; "Tax Liable"; Boolean)
        {
            Caption = 'Tax Liable';
        }
        field(10; "Use Tax"; Boolean)
        {
            Caption = 'Use Tax';
        }
        field(11; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(12; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(13; Amount; Decimal)
        {
            Caption = 'Amount';
        }
        field(14; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
        }
        field(15; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
        }
        field(16; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(17; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(18; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(19; "Deferral Account"; Code[20])
        {
            Caption = 'Deferral Account';
        }
        field(20; "Period Description"; Text[50])
        {
            Caption = 'Period Description';
        }
        field(21; "Deferral Doc. Type"; Option)
        {
            Caption = 'Deferral Doc. Type';
            OptionCaption = 'Purchase,Sales,G/L';
            OptionMembers = Purchase,Sales,"G/L";
        }
        field(22; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(24; "Sales/Purch Amount"; Decimal)
        {
            Caption = 'Sales/Purch Amount';
        }
        field(25; "Sales/Purch Amount (LCY)"; Decimal)
        {
            Caption = 'Sales/Purch Amount (LCY)';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(1700; "Deferral Code"; Code[10])
        {
            Caption = 'Deferral Code';
            TableRelation = "Deferral Template"."Deferral Code";
        }
        field(1701; "Deferral Line No."; Integer)
        {
            Caption = 'Deferral Line No.';
        }
    }

    keys
    {
        key(Key1; Type, "G/L Account", "Gen. Bus. Posting Group", "Gen. Prod. Posting Group", "VAT Bus. Posting Group", "VAT Prod. Posting Group", "Tax Area Code", "Tax Group Code", "Tax Liable", "Use Tax", "Dimension Set ID", "Job No.", "Deferral Code", "Posting Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

