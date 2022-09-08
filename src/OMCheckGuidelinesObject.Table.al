table 11102080 "OM - Check Guidelines Object"
{
    Caption = 'Check Guidelines Object';
    DataPerCompany = false;

    fields
    {
        field(1; "Object Type"; Option)
        {
            BlankZero = true;
            Caption = 'Object Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(2; "Object No."; Integer)
        {
            BlankZero = true;
            Caption = 'Object No.';
            TableRelation = Object.ID WHERE (Type = FIELD ("Object Type"));
        }
        field(3; "Object Name"; Text[30])
        {
            CalcFormula = Lookup (Object.Name WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = FILTER (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "No. of Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       Type = FIELD ("Comment Type Filter"),
                                                                       "Comment No." = FIELD ("Comment No. Filter"),
                                                                       "Known Comment" = FIELD ("Known Filter")));
            Caption = 'No. of Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "No. of New Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       Type = FIELD ("Comment Type Filter"),
                                                                       "Comment No." = FIELD ("Comment No. Filter"),
                                                                       "Known Comment" = CONST (false)));
            Caption = 'No. of New Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "No. of Known Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       Type = FIELD ("Comment Type Filter"),
                                                                       "Comment No." = FIELD ("Comment No. Filter"),
                                                                       "Known Comment" = CONST (true)));
            Caption = 'No. of Known Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Comment Type Filter"; Option)
        {
            Caption = 'Comment Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Coding,Layout,Data,Naming,Captions,Transport';
            OptionMembers = " ",Coding,"Layout",Data,Naming,Captions,Transport;
        }
        field(8; "Comment No. Filter"; Integer)
        {
            Caption = 'Comment No. Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Known Filter"; Boolean)
        {
            Caption = 'Known Filter';
            FieldClass = FlowFilter;
        }
        field(10; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "No. of Critical Comments"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object No." = FIELD ("Object No."),
                                                                       Type = FIELD ("Comment Type Filter"),
                                                                       "Comment No." = FIELD ("Comment No. Filter"),
                                                                       Critical = CONST (true)));
            Caption = 'No. of Critical Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Object Date"; Date)
        {
            CalcFormula = Lookup (Object.Date WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Object Time"; Time)
        {
            CalcFormula = Lookup (Object.Time WHERE (Type = FIELD ("Object Type"),
                                                    "Company Name" = CONST (''),
                                                    ID = FIELD ("Object No.")));
            Caption = 'Object Time';
            Editable = false;
            FieldClass = FlowField;
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

