table 5100941 "DIS - Conversion Line"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Conversion Line';

    fields
    {
        field(1; "Conversion Code"; Code[20])
        {
            Caption = 'Conversion Code';
            TableRelation = "DIS - Conversion Header";
        }
        field(5; "Target List Name"; Text[80])
        {
            Caption = 'Value List/Table/Tag Name';
        }
        field(6; "Target Field Name"; Text[80])
        {
            Caption = 'Value Field/Tag Name';
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Fixed Value,Value Table,Source Code';
            OptionMembers = "Fixed",Value,SourceCode;
        }
        field(50; "Conversion Value Count"; Integer)
        {
            CalcFormula = Count ("DIS - Conversion Line Value" WHERE ("Conversion Code" = FIELD ("Conversion Code"),
                                                                     "List Name" = FIELD ("Target List Name"),
                                                                     "Field Name" = FIELD ("Target Field Name")));
            Caption = 'No. of Conversion Values';
            Editable = false;
            FieldClass = FlowField;
        }
        field(51; "Value Not Exist Action"; Option)
        {
            Caption = 'If Value Not Exist';
            OptionCaption = 'Use Unconverted Value,Blank Value';
            OptionMembers = Raw,Blank;
        }
        field(60; "Fixed Value"; Text[250])
        {
            Caption = 'Fixed Value';
        }
        field(70; "Source Code Tag"; Code[20])
        {
            Caption = 'Source Code Tag';
        }
    }

    keys
    {
        key(Key1; "Conversion Code", "Target List Name", "Target Field Name")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

