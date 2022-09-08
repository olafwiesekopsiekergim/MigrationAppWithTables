table 5158001 "Object Run"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.07.15   OPplus general
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Object Run';

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = ' ,,,Report,,Codeunit,XMLPort,,Page';
            OptionMembers = " ",,,"Report",,"Codeunit","XMLPort",,"Page";
        }
        field(2; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            NotBlank = true;
            TableRelation = IF ("Object Type" = FILTER (> " ")) AllObjWithCaption."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
        }
        field(3; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(4; "Start ID"; Code[10])
        {
            Caption = 'Start ID';
        }
        field(5; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(6; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    ID = FIELD ("Object ID")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; "Start ID")
        {
        }
    }

    fieldgroups
    {
    }
}

