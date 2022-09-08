table 5013687 "BOM Cap. Need"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'BOM Cap. Need';

    fields
    {
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Document BOM,Constructionline';
            OptionMembers = "Document BOM",Constructionline;
        }
        field(20; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(30; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Work Center,Machine Center,Resource';
            OptionMembers = "Work Center","Machine Center",Resource;
        }
        field(110; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST("Machine Center")) "Machine Center"
            ELSE
            IF (Type = CONST(Resource)) Resource;
        }
        field(120; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center";
        }
        field(130; Date; Date)
        {
            Caption = 'Date';
        }
        field(140; "Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(150; "Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(160; "Starting Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Starting Date-Time';
            Editable = false;
        }
        field(170; "Ending Date-Time"; DateTime)
        {
            AutoFormatType = 10;
            Caption = 'Ending Date-Time';
            Editable = false;
        }
        field(180; "Allocated Time"; Decimal)
        {
            Caption = 'Allocated Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(190; "Needed Time"; Decimal)
        {
            Caption = 'Needed Time';
            DecimalPlaces = 0 : 5;
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Document Line No.", "Entry No.")
        {
            Clustered = true;
            SQLIndex = "Document No.", "Document Line No.", "Entry No.", "Document Type";
        }
        key(Key2; "Document No.", "Document Line No.", "Document Type", Type, "No.", Date, "Starting Date-Time", "Ending Date-Time")
        {
            SumIndexFields = "Allocated Time", "Needed Time";
        }

    }

    fieldgroups
    {
    }
}

