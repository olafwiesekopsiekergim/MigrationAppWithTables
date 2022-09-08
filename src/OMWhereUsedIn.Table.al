table 11102060 "OM - Where Used In"
{
    Caption = 'Where Used In';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            NotBlank = true;
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(3; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Property,Key,Global Variable,Local Variable,Code,SourceExpr,Relation,Parameter,Data';
            OptionMembers = Property,"Key","Global Variable","Local Variable","Code",SourceExpr,Relation,Parameter,Data;
        }
        field(7; Name; Text[100])
        {
            Caption = 'Name';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object No.", Type, Name)
        {
        }
    }

    fieldgroups
    {
    }
}

