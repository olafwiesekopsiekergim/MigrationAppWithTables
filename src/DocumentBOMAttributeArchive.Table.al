table 5013843 "Document BOM Attribute Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, NotBlank = No in field Attribute
    // :DMW16.00.01:21:01 #Inserted new field 75 "Value (alphanum.)"
    // :DMW16.00.01:31:01 #new field 100 "Calc. after Line"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Document BOM Attribute Archive';
    DataCaptionFields = "Document No.", "Version No.", "Doc. No. Occurrence", "BOM Entry No.", Attribute;

    fields
    {
        field(3; "Source Document Type"; Option)
        {
            Caption = 'Source Document Type';
            Description = 'PrimaryKey';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(4; "Source Document No."; Code[20])
        {
            Caption = 'Source Document No.';
            Description = 'PrimaryKey';
            NotBlank = true;
        }
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'PrimaryKey';
            NotBlank = true;
        }
        field(6; "Source Document Line No."; Integer)
        {
            Caption = 'Source Document Line No.';
            Description = 'PrimaryKey';
        }
        field(33; "Version No."; Integer)
        {
            Caption = 'Version No.';
            Description = 'PrimaryKey';
        }
        field(36; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
            Description = 'PrimaryKey';
        }
        field(40; "BOM Entry No."; Integer)
        {
            Caption = 'BOM Entry No.';
            Description = 'PrimaryKey';
            Editable = false;
        }
        field(45; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'PrimaryKey';
            Editable = false;
        }
        field(50; Attribute; Code[30])
        {
            Caption = 'Attribute';
            TableRelation = "Variable/Attribute Type";
        }
        field(60; Description; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD (Attribute)));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(75; "Value (alphanum.)"; Text[50])
        {
            Caption = 'Value (alphanum.)';
            Description = ':DMW16.00.01:21:01';
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
            Description = ':DMW16.00.01:31:01';
        }
    }

    keys
    {
        key(Key1; "Source Document Type", "Source Document No.", "Source Document Line No.", "Document No.", "Version No.", "Doc. No. Occurrence", "BOM Entry No.", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Source Document No.", "Source Document Line No.", "Document No.", "Version No.", "Doc. No. Occurrence", "BOM Entry No.", "Line No.", "Source Document Type";
        }
    }

    fieldgroups
    {
    }
}

