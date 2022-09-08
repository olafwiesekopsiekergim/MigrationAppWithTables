table 14123811 "ES Security Buffer"
{
    Caption = 'Security Buffer';

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
        field(4; Type; Integer)
        {
            Caption = 'Type';
        }
        field(5; ID; Integer)
        {
            Caption = 'ID';
        }
        field(6; "Object"; Boolean)
        {
            Caption = 'Object';
        }
        field(11; Visible; Boolean)
        {
            Caption = 'Visible';
            InitValue = true;
        }
        field(12; Editable; Boolean)
        {
            Caption = 'Editable';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; "Source Table ID", "Object Type", "Object ID", Type, ID, "Object")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

