table 14123812 "ES Security Code Buffer"
{
    Caption = 'Security Code Buffer';

    fields
    {
        field(1; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
        }
        field(2; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Field Level Security"; Boolean)
        {
            Caption = 'Field Level Security';
        }
        field(11; "Field Level Security Code"; Code[20])
        {
            Caption = 'Field Level Security Code';
        }
        field(13; "Data Security Code"; Code[20])
        {
            Caption = 'Data Security Code';
        }
    }

    keys
    {
        key(Key1; "Source Table ID", "Object Type", "Object ID", "Field Level Security")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

