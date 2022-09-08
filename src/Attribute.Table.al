table 5013556 Attribute
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:26:01 #Added new field and put it in the PrimaryKey: "Variant Code"
    // :DMW15.01:59:01 #Created SQLIndex
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00:99:01 #Parameter was deleted
    // :DMW16.00.01:21:01 #New field 55: "Value (alphanum.)"
    // :DMW16.00.01:31:01 #new field 100 "Calc. after Line"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    //   #New FlowField 200 "Item Description"

    Caption = 'Attribute';
    DataCaptionFields = "No.", "Line No.", Attribute;

    fields
    {
        field(5; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(15; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = ':DMW15.01:26:01';
            TableRelation = IF ("Table No." = CONST (27)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(30; Attribute; Code[30])
        {
            Caption = 'Attribute';
            Editable = true;
            TableRelation = "Variable/Attribute Type";
        }
        field(40; Description; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD (Attribute)));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; Value; Decimal)
        {
            Caption = 'Value';
        }
        field(55; "Value (alphanum.)"; Text[50])
        {
            Caption = 'Value (alphanum.)';
            Description = ':DMW16.00.01:21:01';
        }
        field(60; "Formula Value"; Text[250])
        {
            Caption = 'Formula Value';
            Description = 'DMW14.04-01';
        }
        field(90; "Relevant to Prototype"; Boolean)
        {
            Caption = 'Relevant to Prototype';
            Description = 'DMW14.04-01';
        }
        field(100; "Calc. after Line"; Boolean)
        {
            Caption = 'Calc. after Line';
            Description = ':DMW16.00.01:31:01';
        }
        field(200; "Item Description"; Text[50])
        {
            CalcFormula = Lookup (Item.Description WHERE ("No." = FIELD ("No.")));
            Caption = 'Item Description';
            Description = '#DMW17.10.01:T102';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Table No.", "No.", "Variant Code", "Line No.")
        {
            Clustered = true;
            SQLIndex = "No.", "Variant Code", "Line No.", "Table No.";
        }
    }

    fieldgroups
    {
    }
}

