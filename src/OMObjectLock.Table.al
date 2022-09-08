table 11102054 "OM - Object Lock"
{
    Caption = 'Object Lock';
    DataPerCompany = false;

    fields
    {
        field(1; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            NotBlank = true;
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(2; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"));
        }
        field(3; Name; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Locked By"; Text[132])
        {
            Caption = 'Locked By';
            TableRelation = "OM - User";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5; "Lock Date"; Date)
        {
            Caption = 'Lock Date';
        }
        field(6; "Lock Time"; Time)
        {
            Caption = 'Lock Time';
        }
        field(7; Deleted; Boolean)
        {
            Caption = 'Deleted';
        }
        field(8; "Token No."; Integer)
        {
            Caption = 'Token No.';
        }
        field(9; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Branch No."; Code[20])
        {
            Caption = 'Branch No.';
            TableRelation = "OM - Branch";
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object No.")
        {
            Clustered = true;
        }
        key(Key2; "Locked By")
        {
        }
        key(Key3; "Branch No.")
        {
        }
    }

    fieldgroups
    {
    }
}

