table 11102059 "OM - Where Used Status"
{
    Caption = 'Where Used Status';
    DataPerCompany = false;

    fields
    {
        field(1; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            Editable = false;
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(2; "Object No."; Integer)
        {
            Caption = 'Object No.';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
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

