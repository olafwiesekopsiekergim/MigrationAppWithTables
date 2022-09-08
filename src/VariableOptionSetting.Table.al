table 5013804 "Variable Option Setting"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:27:01 #Created new table
    // :DMW15.01.00.01:6:01 #Corrected code structure, Completed Caption
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30

    Caption = 'Variable Option Setting';
    DataCaptionFields = "Variable Code", Input;

    fields
    {
        field(10; "Variable Code"; Code[30])
        {
            Caption = 'Variable Code';
            NotBlank = true;
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(20; Input; Code[50])
        {
            Caption = 'Input';
        }
        field(30; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(40; "Set Variable Code"; Code[30])
        {
            Caption = 'Set Variable Code';
            NotBlank = true;
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(100; "New Input"; Text[50])
        {
            Caption = 'New Input';
        }
        field(110; "New Selected"; Boolean)
        {
            Caption = 'New Selected';
        }
        field(120; "Decription Variable"; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD ("Variable Code")));
            Caption = 'Decription Variable';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; "Description Set Variable"; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD ("Set Variable Code")));
            Caption = 'Description Set Variable';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140; "Error Order"; Integer)
        {
            Caption = 'Error Order';
        }
    }

    keys
    {
        key(Key1; "Variable Code", Input, Selected, "Set Variable Code")
        {
            Clustered = true;
        }
        key(Key2; "Error Order")
        {
            MaintainSIFTIndex = false;
            MaintainSQLIndex = false;
        }
    }

    fieldgroups
    {
    }
}

