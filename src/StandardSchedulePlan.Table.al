table 5013578 "Standard Schedule Plan"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, NotBlank = No in field 90
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Standard Schedule Plan';
    DataCaptionFields = Version, "Line No.", Description;

    fields
    {
        field(10; Version; Code[20])
        {
            Caption = 'Version';
            NotBlank = true;
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
    }

    keys
    {
        key(Key1; Version, "Line No.")
        {
            Clustered = true;
        }
        key(Key2; Version, "Sequence No. (Backward)")
        {
        }
        key(Key3; Version, "Sequence No. (Forward)")
        {
        }
    }

    fieldgroups
    {
    }
}

