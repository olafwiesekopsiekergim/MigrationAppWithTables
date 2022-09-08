table 14123818 "ES Dynamic Filter"
{
    Caption = 'Dynamic Filter';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(11; "Calculation Code"; Code[10])
        {
            Caption = 'Calculation Code';
        }
        field(12; "Calculation Codeunit ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Calculation Codeunit ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Codeunit));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(13; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(14; "Fixed Filter Value"; Text[250])
        {
            Caption = 'Fixed Filter Value';
        }
        field(21; "Filter Value"; Text[250])
        {
            Caption = 'Filter Value';
        }
        field(22; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
            Editable = false;
            NotBlank = true;
            TableRelation = "ES Source Table Setup";
        }
        field(23; "Data Security Code"; Code[20])
        {
            Caption = 'Data Security Code';
            Editable = false;
            NotBlank = true;
            TableRelation = "ES Data Security Code".Code WHERE ("Source Table ID" = FIELD ("Source Table ID"));
        }
        field(24; "Object Type"; Option)
        {
            Caption = 'Object Type';
            Editable = false;
            NotBlank = true;
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(25; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            Editable = false;
            TableRelation = "ES FLADS Relation"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                   Type = FILTER ("Source Table" | "Data Item"),
                                                                   "Relation Object Type" = CONST (Table),
                                                                   "Relation Object ID" = FIELD ("Source Table ID"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(26; "Field ID"; Integer)
        {
            Caption = 'Field ID';
            Editable = false;
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Source Table ID"));
        }
        field(27; "From Object Type"; Option)
        {
            Caption = 'From Object Type';
            Editable = false;
            NotBlank = true;
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(28; "From Object ID"; Integer)
        {
            Caption = 'From Object ID';
            Editable = false;
            TableRelation = "ES FLADS Relation"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                   Type = FILTER ("Source Table" | "Data Item"),
                                                                   "Relation Object Type" = CONST (Table),
                                                                   "Relation Object ID" = FIELD ("Source Table ID"));
            //This property is currently not supported
            //TestTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

