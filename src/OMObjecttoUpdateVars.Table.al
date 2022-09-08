table 11102064 "OM - Object to Update Vars"
{
    Caption = 'Object to Update Vars';
    DataPerCompany = false;

    fields
    {
        field(1; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",,"Page","Query";
        }
        field(2; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"));
        }
        field(3; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "No. of Unused Variables"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = FILTER ("Local Variable" | "Global Variable"),
                                                                     Used = CONST (false)));
            Caption = 'No. of Unused Variables';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

