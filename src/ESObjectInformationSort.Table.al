table 14123603 "ES Object Information Sort"
{
    Caption = 'Object Information Sort';

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(4; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
        }
        field(5; "Parser Error"; Boolean)
        {
            Caption = 'Parser Error';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object Name")
        {
        }
    }

    fieldgroups
    {
    }
}

