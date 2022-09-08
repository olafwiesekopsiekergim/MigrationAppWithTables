table 11102045 "OM - Expected Modification"
{
    Caption = 'Expected Modification';
    DataPerCompany = false;

    fields
    {
        field(1; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            Editable = false;
            OptionCaption = 'All,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = All,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(2; "Object No."; Integer)
        {
            Caption = 'Object No.';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(3; "User Id"; Text[50])
        {
            Caption = 'User Id';
        }
        field(4; "Date Time Added"; DateTime)
        {
            Caption = 'Date Time Added';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object No.")
        {
            Clustered = true;
        }
        key(Key2; "User Id")
        {
        }
        key(Key3; "Date Time Added")
        {
        }
    }

    fieldgroups
    {
    }
}

