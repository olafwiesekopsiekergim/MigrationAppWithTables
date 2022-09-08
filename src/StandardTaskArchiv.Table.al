table 5013790 "Standard Task Archiv"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Standard Task Archiv';

    fields
    {
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'PrimaryKey';
        }
        field(4; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(5; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(12; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(13; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(109; "Qlty Measure Code"; Code[10])
        {
            Caption = 'Qlty Measure Code';
        }
        field(110; "Description QM"; Text[50])
        {
            Caption = 'Description QM';
        }
        field(111; "Min. Value"; Decimal)
        {
            Caption = 'Min. Value';
            DecimalPlaces = 0 : 5;
        }
        field(112; "Max. Value"; Decimal)
        {
            Caption = 'Max. Value';
            DecimalPlaces = 0 : 5;
        }
        field(113; "Mean Tolerance"; Decimal)
        {
            Caption = 'Mean Tolerance';
            DecimalPlaces = 0 : 5;
        }
        field(2000000; "Source Document Type"; Option)
        {
            Caption = 'Source Document Type';
            Description = 'PrimaryKey';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,Construction';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,Construction;
        }
        field(2000010; "Source Document No."; Code[20])
        {
            Caption = 'Source Document No.';
            Description = 'PrimaryKey';
            NotBlank = true;
        }
        field(2000020; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'PrimaryKey';
            NotBlank = true;
        }
        field(2000030; "Source Document Line No."; Integer)
        {
            Caption = 'Source Document Line No.';
            Description = 'PrimaryKey';
        }
        field(2000040; "Version No."; Integer)
        {
            Caption = 'Version No.';
            Description = 'PrimaryKey';
        }
        field(2000050; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
            Description = 'PrimaryKey';
        }
        field(2000060; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Description = 'PrimaryKey';
            Editable = false;
        }
        field(2000100; "Standard Task Table"; Option)
        {
            Caption = 'Standard Task Table';
            Description = 'PrimaryKey';
            OptionCaption = ' ,Tool,Personnel,Comment,Quality Measure';
            OptionMembers = " ",Tool,Personnel,Comment,"Quality Measure";
        }
    }

    keys
    {
        key(Key1; "Source Document Type", "Source Document No.", "Document No.", "Source Document Line No.", "Version No.", "Doc. No. Occurrence", "Entry No.", "Standard Task Table", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Source Document No.", "Document No.", "Source Document Line No.", "Version No.", "Doc. No. Occurrence", "Entry No.", "Standard Task Table", "Line No.", "Source Document Type";
        }
    }

    fieldgroups
    {
    }
}

