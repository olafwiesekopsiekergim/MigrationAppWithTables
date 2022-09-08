table 5013800 "Posted Attribute"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:11:01 #new table
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00.01:21:01 #Inserted new field 75 "Value (alphanum.)"
    // :DMW16.00.01:31:01 #new field 100 "Calc. after Line"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Posted Attribute';
    DataCaptionFields = "No.", "Line No.", Attribute;

    fields
    {
        field(5; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
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
            Editable = true;
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
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
            Description = ':DMW16.00.01:31:01';
        }
    }

    keys
    {
        key(Key1; "Table No.", "No.", "Document Line No.", "Line No.")
        {
            Clustered = true;
            SQLIndex = "No.", "Document Line No.", "Table No.", "Line No.";
        }
    }

    fieldgroups
    {
    }
}

