table 5013581 "Checklist Header Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00.00.01:6:01 #Changed some Captions
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID, grammar issues
    // #DMW17.00:T002 14.09.12 DEMSR.SSZ
    //   #New field to manage show/hide sub checklists: 191 "Show Sub-Checklists"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T104 01.10.14 DEMSR.SSZ
    //   #new field 192 "Open Immediately"

    Caption = 'Checklist Header Archive';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(3; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Description = 'PrimaryKey';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'PrimaryKey';
            NotBlank = true;
        }
        field(5; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'PrimaryKey';
            NotBlank = true;
        }
        field(6; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            Description = 'PrimaryKey';
        }
        field(8; "Version No."; Integer)
        {
            Caption = 'Version No.';
            Description = 'PrimaryKey';
        }
        field(9; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
            Description = 'PrimaryKey';
        }
        field(10; "Checklist Code"; Code[20])
        {
            Caption = 'Checklist Code';
            TableRelation = "Checklist Header Template";
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(120; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = Neu,Zertifiziert,"In Entwicklung",Abgelaufen;
        }
        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(140; "Last Status Modified Date"; Date)
        {
            Caption = 'Last Status Modified Date';
            Editable = false;
        }
        field(150; "Last Status Modified User ID"; Code[50])
        {
            Caption = 'Last Status Modified User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(160; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(170; "Modified User ID"; Code[50])
        {
            Caption = 'Modified User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(180; "Checklist Type"; Code[20])
        {
            Caption = 'Checklist Type';
            Description = 'PrimaryKey';
            TableRelation = "Checklist Type";
        }
        field(190; "Automatic Recalculation"; Boolean)
        {
            Caption = 'Automatic Recalculation';
        }
        field(191; "Show Sub-Checklists"; Boolean)
        {
            Caption = 'Show Sub-Checklists';
            Description = '#DMW17.00:T002';
        }
        field(192; "Open Immediately"; Boolean)
        {
            Caption = 'Open Immediately';
            Description = '#DMW17.10.01:T104';
        }
        field(210; "Calculation Price"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Price';
            Description = 'DMW14.03-01';
        }
        field(220; "Calcuation Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calcuation Weight';
            Description = 'DMW14.03-01';
        }
        field(230; "Calculation Price Base"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Price Base';
            Description = 'DMW14.03-01';
        }
        field(240; "Calculation Weight Base"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Weight Base';
            Description = 'DMW14.03-01';
        }
        field(250; "Discount %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Discount %';
            Description = 'DMW14.03-01';
        }
        field(260; "In LCY"; Boolean)
        {
            Caption = 'In LCY';
            Description = 'DMW14.03-02';
        }
        field(270; "Base Changed"; Boolean)
        {
            Caption = 'Base Changed';
            Description = 'DMW14.03-02';
        }
        field(300; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Document Line No.", "No.", "Version No.", "Doc. No. Occurrence", "Checklist Type")
        {
            Clustered = true;
            SQLIndex = "Document No.", "Document Line No.", "No.", "Version No.", "Doc. No. Occurrence", "Checklist Type", "Document Type";
        }
    }

    fieldgroups
    {
    }
}

