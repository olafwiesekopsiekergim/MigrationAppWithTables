table 5013564 "Search Charact. Variable"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    //   #Replace table 5013563 with 5013555

    Caption = 'Search Characteritic Variable';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[30])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(20; Description; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD (Code)));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(40; Variable; Code[30])
        {
            Caption = 'Variable';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(50; "Description Variable"; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD (Variable)));
            Caption = 'Description Variable';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

