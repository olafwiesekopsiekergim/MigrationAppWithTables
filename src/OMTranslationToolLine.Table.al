table 11102068 "OM - Translation Tool Line"
{
    Caption = 'Translation Tool Line';
    DataCaptionFields = "Object Type", "Object No.", Name;
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Translate File Line"; Text[100])
        {
            Caption = 'Translate File Line';
        }
        field(3; "Translate File Line Part 1"; Text[100])
        {
            Caption = 'Translate File Line Part 1';
        }
        field(4; "Character Identifiers"; Text[30])
        {
            Caption = 'Character Identifiers';
        }
        field(5; "Property Id"; Integer)
        {
            Caption = 'Property Id';
        }
        field(6; "Caption Property Id"; Integer)
        {
            BlankZero = true;
            Caption = 'Caption Property Id';
        }
        field(7; "Max. Length"; Integer)
        {
            Caption = 'Max. Length';
        }
        field(8; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            Editable = false;
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(9; "Object No."; Integer)
        {
            Caption = 'Object No.';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"),
                                             "Company Name" = FILTER (''));
        }
        field(10; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = ' ,Object,Field,Variable,Option,Text Constante,Tab Names,Function,Label,Tool Tip,,Text,Control,MenuItem,Request Form,Data Item,Source Expr.,Request Page,ReqFilterHeading,Event,Instructional Text,Field Group,Key Group';
            OptionMembers = " ","Object","Field",Variable,Option,"Text Constante","Tab Names","Function",Label,"Tool Tip",,Text,Control,MenuItem,"Request Form","Data Item","Source Expr.","Request Page",ReqFilterHeading,"Event","Instructional Text","Field Group","Key Group";
        }
        field(12; Name; Text[150])
        {
            Caption = 'Name';
        }
        field(13; Captions; Boolean)
        {
            Caption = 'Captions';
            Editable = false;
        }
        field(14; "Language Id"; Integer)
        {
            Caption = 'Language Id';
            TableRelation = "Windows Language";
        }
        field(15; "Missing Caption"; Boolean)
        {
            Caption = 'Missing Caption';
            Editable = false;
        }
        field(16; "Caption 1"; Text[250])
        {
            Caption = 'Caption';
        }
        field(17; "Caption 2"; Text[250])
        {
            Caption = 'Caption 2';
        }
        field(18; "Caption 3"; Text[250])
        {
            Caption = 'Caption 3';
        }
        field(19; "Caption 4"; Text[250])
        {
            Caption = 'Caption 4';
        }
        field(21; "Calculated Caption 1"; Text[250])
        {
            Caption = 'Calculated Caption';
            Editable = false;
        }
        field(22; "Calculated Caption 2"; Text[250])
        {
            Caption = 'Calculated Caption 2';
            Editable = false;
        }
        field(23; "Calculated Caption 3"; Text[250])
        {
            Caption = 'Calculated Caption 3';
            Editable = false;
        }
        field(24; "Calculated Caption 4"; Text[250])
        {
            Caption = 'Calculated Caption 4';
            Editable = false;
        }
        field(25; "Calculated Caption Differs"; Boolean)
        {
            Caption = 'Calculated Caption Differs';
            Editable = false;
        }
        field(26; Changed; Boolean)
        {
            Caption = 'Changed';
        }
        field(27; Id; Integer)
        {
            BlankZero = true;
            Caption = 'Id';
            Editable = false;
        }
        field(28; "Caption Entry No."; Integer)
        {
            Caption = 'Caption Entry No.';
        }
        field(30; "Name Changed"; Boolean)
        {
            Caption = 'Name Changed';
        }
        field(31; "Caption Changed"; Boolean)
        {
            Caption = 'Caption Changed';
        }
        field(32; "C/AL Line No."; Integer)
        {
            Caption = 'C/AL Line No.';
        }
        field(33; "Added by File"; Boolean)
        {
            Caption = 'Added by File';
        }
        field(34; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "No. of Times"; Integer)
        {
            Caption = 'No. of Times';
        }
        field(36; "Translate Later"; Boolean)
        {
            Caption = 'Translate Later';
        }
        field(37; Comment; Text[250])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Translate File Line Part 1")
        {
        }
        key(Key3; Changed)
        {
        }
        key(Key4; "Language Id")
        {
        }
        key(Key5; "Language Id", "Missing Caption")
        {
        }
        key(Key6; "Language Id", "Calculated Caption Differs")
        {
        }
        key(Key7; "Caption Entry No.", "Language Id")
        {
        }
        key(Key8; "Translate File Line", "Language Id")
        {
        }
        key(Key9; "Language Id", Type, Name)
        {
        }
        key(Key10; "Object Type", "Object No.")
        {
        }
        key(Key11; "Object Type", "Object No.", "C/AL Line No.")
        {
            MaintainSQLIndex = false;
        }
        key(Key12; "Object Type", "Object No.", "Caption Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

