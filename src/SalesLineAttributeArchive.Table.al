table 5013570 "Sales Line Attribute Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, NotBlank = No in field Attribute
    // :DMW16.00.01:21:01 #Inserted new field 75 "Value (alphanum.)" and changed some field names and captions
    // :DMW16.00.01:31:01 #new field 100 "Calc. after Line"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Sales Line Attribute Archive';
    DataCaptionFields = "Document Type", "Document No.", "Document Line No.";

    fields
    {
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(20; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(23; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(26; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
        }
        field(30; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(45; "Line No."; Integer)
        {
            Caption = 'Line No.';
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
        field(80; "Formula Value"; Text[250])
        {
            Caption = 'Formula Value';
            Description = 'DMW14.04-01';
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
            Description = ':DMW16.00.01:31:01';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Version No.", "Doc. No. Occurrence", "Document Line No.", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Document No.", "Version No.", "Doc. No. Occurrence", "Document Line No.", "Line No.", "Document Type";
        }
    }

    fieldgroups
    {
    }
}

