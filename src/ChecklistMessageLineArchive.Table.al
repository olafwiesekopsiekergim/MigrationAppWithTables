table 5013688 "Checklist Message Line Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Checklist Message Line Archive';
    DataCaptionFields = "No.", "Checklist Type", "Checklist Line No.", "Version No.", "Doc. No. Occurrence";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'PrimaryKey4';
            NotBlank = true;
        }
        field(2; "Checklist Type"; Code[20])
        {
            Caption = 'Checklist Type';
            Description = 'PrimaryKey7';
            TableRelation = "Checklist Type";
        }
        field(3; "Checklist Line No."; Integer)
        {
            Caption = 'Checklist Line No.';
            Description = 'PrimaryKey8';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'PrimaryKey9';
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
        }
        field(6; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(7; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(10; "Source Document Type"; Option)
        {
            Caption = 'Source Document Type';
            Description = 'PrimaryKey1';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(20; "Source Document No."; Code[20])
        {
            Caption = 'Source Document No.';
            Description = 'PrimaryKey2';
            NotBlank = true;
        }
        field(30; "Source Document Line No."; Integer)
        {
            Caption = 'Source Document Line No.';
            Description = 'PrimaryKey3';
        }
        field(40; "Version No."; Integer)
        {
            Caption = 'Version No.';
            Description = 'PrimaryKey5';
        }
        field(50; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
            Description = 'PrimaryKey6';
        }
    }

    keys
    {
        key(Key1; "Source Document Type", "Source Document No.", "Source Document Line No.", "No.", "Version No.", "Doc. No. Occurrence", "Checklist Type", "Checklist Line No.", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Source Document No.", "Source Document Line No.", "No.", "Version No.", "Doc. No. Occurrence", "Checklist Type", "Checklist Line No.", "Line No.", "Source Document Type";
        }
    }

    fieldgroups
    {
    }
}

