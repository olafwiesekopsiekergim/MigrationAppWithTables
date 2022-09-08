table 5013635 "Constr. Line Attribute Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #NotBlank = No in field Attribute
    // :DMW16.00.01:21:01 #Inserted new field 75 "Value (alphanum.)" and changed some field names and captions
    // :DMW16.00.01:31:01 #new field 100 "Calc. after Line"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Construction Line Attribute Archive';

    fields
    {
        field(20; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "Construction Header Archive"."No.";
        }
        field(30; Version; Integer)
        {
            Caption = 'Version';
        }
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
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
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
            Description = ':DMW16.00.01:31:01';
        }
    }

    keys
    {
        key(Key1; "Document No.", Version, "Entry No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

