table 5034630 Error_QM
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R247 02.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   TableName changed to Error_QM
    //   FieldName Cause changed to Error Cause
    //   FieldName Action changed to Error Action
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Error';

    fields
    {
        field(10; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(20; Type; Code[10])
        {
            Caption = 'Type';
            TableRelation = "Error Type";
        }
        field(30; Description; Text[30])
        {
            CalcFormula = Lookup ("Error Type".Description WHERE (Code = FIELD (Type)));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Error Cause"; Code[10])
        {
            Caption = 'Error Cause';
            TableRelation = "Error Cause";
        }
        field(50; "Error Action"; Code[10])
        {
            Caption = 'Error Action';
            TableRelation = "Error Action";
        }
        field(60; Category; Code[10])
        {
            Caption = 'Category';
            TableRelation = "Error Category";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

