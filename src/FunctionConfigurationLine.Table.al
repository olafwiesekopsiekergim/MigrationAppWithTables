table 5395807 "Function Configuration Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T104 16.10.14 DEMSR.IST - Object created
    // 
    // #AMPW18.00:T103 13.01.15 DEMSR.IST
    //   Lookup and Validate for "Control ID"


    fields
    {
        field(1; "Function Configuration Code"; Code[20])
        {
            Caption = 'Function Configuration Code';
            TableRelation = "Function Configuration".Code;
        }
        field(2; "Object Type"; Option)
        {
            Caption = 'Object Type';
            InitValue = "Page";
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System,FieldNumber';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System,FieldNumber;
        }
        field(3; "Object ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Object ID';
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
        }
        field(4; "Object Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Control ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Control ID';
            NotBlank = true;
        }
        field(6; "Control Description"; Text[250])
        {
            Caption = 'Control Description';
        }
    }

    keys
    {
        key(Key1; "Function Configuration Code", "Object Type", "Object ID", "Control ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

