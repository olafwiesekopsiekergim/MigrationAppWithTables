table 5013813 "Planning Component Attribute"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #DMW16.00.02.03:A0015 25.05.11 DEMSR.SSZ #Created new object
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Planning Component Attribute';
    DataCaptionFields = "Worksheet Batch Name", "Worksheet Line No.";

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            Editable = false;
            NotBlank = true;
        }
        field(2; "Worksheet Template Name"; Code[10])
        {
            Caption = 'Worksheet Template Name';
            TableRelation = "Req. Wksh. Template";
        }
        field(3; "Worksheet Batch Name"; Code[10])
        {
            Caption = 'Worksheet Batch Name';
            TableRelation = "Requisition Wksh. Name".Name WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"));
        }
        field(4; "Worksheet Line No."; Integer)
        {
            Caption = 'Worksheet Line No.';
            TableRelation = "Requisition Line"."Line No." WHERE ("Worksheet Template Name" = FIELD ("Worksheet Template Name"),
                                                                 "Journal Batch Name" = FIELD ("Worksheet Batch Name"));
        }
        field(5; "Planning Comp. Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Planning Comp. Line No.';
        }
        field(8; "Line No."; Integer)
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
        }
        field(80; "Formula Value"; Text[250])
        {
            Caption = 'Formula Value';
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Worksheet Template Name", "Worksheet Batch Name", "Worksheet Line No.", "Planning Comp. Line No.", "Line No.")
        {
            Clustered = true;
            SQLIndex = "Worksheet Batch Name", "Worksheet Line No.", "Planning Comp. Line No.", "Worksheet Template Name", "Table ID", "Line No.";
        }
    }

    fieldgroups
    {
    }
}

