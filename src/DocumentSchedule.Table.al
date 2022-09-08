table 5013580 "Document Schedule"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, NotBlank = No in field 90
    // #DMW17.10.00.02:T500 27.02.14 DEMSR.SSZ
    //   #Renamed/recaptioned table itself and fields 180, 190
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Document Schedule';
    DataCaptionFields = "Document Type", "Document No.", "Document Line No.";

    fields
    {
        field(1; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(4; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(10; Version; Code[20])
        {
            Caption = 'Version';
            TableRelation = "Standard Schedule Plan Version".Code;
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(30; "Process Code"; Code[10])
        {
            Caption = 'Process Code';
            NotBlank = false;
            TableRelation = "Standard Operation";
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(60; Duration; Code[10])
        {
            Caption = 'Duration';
            DateFormula = true;
        }
        field(70; "Person Responsible"; Code[10])
        {
            Caption = 'Person Responsible';
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(80; "Routing Link"; Code[10])
        {
            Caption = 'Routing Link';
            TableRelation = "Operation Routing Link";
        }
        field(90; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
        }
        field(100; "Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
        }
        field(110; "Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
        }
        field(120; "Sequence No. (Forward)"; Integer)
        {
            Caption = 'Sequence No. (Forward)';
            Editable = false;
        }
        field(130; "Sequence No. (Backward)"; Integer)
        {
            Caption = 'Sequence No. (Backward)';
            Editable = false;
        }
        field(140; Recalculate; Boolean)
        {
            Caption = 'Recalculate';
            Editable = false;
        }
        field(150; "Planned Starting Date"; Date)
        {
            Caption = 'Planned Starting Date';
        }
        field(160; "Planned Ending Date"; Date)
        {
            Caption = 'Planned Ending Date';
        }
        field(180; "Actual Start Date"; Date)
        {
            Caption = 'Actual Start Date';
        }
        field(190; "Actual End Date"; Date)
        {
            Caption = 'Actual End Date';
        }
        field(200; "Completion %"; Decimal)
        {
            Caption = 'Completion %';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Document Line No.", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Document No.", "Document Line No.", "Line No.", "Document Type";
        }
    }

    fieldgroups
    {
    }
}

