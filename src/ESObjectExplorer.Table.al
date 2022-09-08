table 14123901 "ES Object Explorer"
{
    Caption = 'Object Information';

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = ' ,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = " ","Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(2; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(4; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(5; Modified; Boolean)
        {
            Caption = 'Modified';
        }
        field(6; Compiled; Boolean)
        {
            Caption = 'Compiled';
        }
        field(7; "BLOB Reference"; BLOB)
        {
            Caption = 'BLOB Reference';
        }
        field(8; "BLOB Size"; Integer)
        {
            Caption = 'BLOB Size';
        }
        field(9; "DBM Table No."; Integer)
        {
            Caption = 'DBM Table No.';
        }
        field(10; Date; Date)
        {
            Caption = 'Date';
        }
        field(11; Time; Time)
        {
            Caption = 'Time';
        }
        field(12; "Version List"; Text[250])
        {
            Caption = 'Version List';
        }
        field(13; Caption; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Caption';
            FieldClass = FlowField;
        }
        field(101; "Read Permission (License)"; Option)
        {
            CalcFormula = Lookup ("License Permission"."Read Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                               "Object Number" = FIELD ("Object ID")));
            Caption = 'Read Permission (License)';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(102; "Insert Permission (License)"; Option)
        {
            CalcFormula = Lookup ("License Permission"."Insert Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object Number" = FIELD ("Object ID")));
            Caption = 'Insert Permission (License)';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(103; "Modify Permission (License)"; Option)
        {
            CalcFormula = Lookup ("License Permission"."Modify Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object Number" = FIELD ("Object ID")));
            Caption = 'Modify Permission (License)';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(104; "Delete Permission (License)"; Option)
        {
            CalcFormula = Lookup ("License Permission"."Delete Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object Number" = FIELD ("Object ID")));
            Caption = 'Delete Permission (License)';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(105; "Execute Permission (License)"; Option)
        {
            CalcFormula = Lookup ("License Permission"."Execute Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                  "Object Number" = FIELD ("Object ID")));
            Caption = 'Execute Permission (License)';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(109; "Skip During Export"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Skip During Export" = CONST (true)));
            Caption = 'Skip During Export';
            Editable = false;
            FieldClass = FlowField;
        }
        field(115; Relations; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(116; Variables; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable" WHERE ("Object Type" = FIELD ("Object Type"),
                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(117; "Where-used as Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                     "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Where-Used as Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(118; "Where-used as Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable" WHERE ("Variable Object Type" = FIELD ("Object Type"),
                                                     "Variable Object ID" = FIELD ("Object ID")));
            Caption = 'Where-Used as Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Export Error"; Text[250])
        {
            CalcFormula = Lookup ("ES Object Property"."Export Error" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                            "Object ID" = FIELD ("Object ID")));
            Caption = 'Export Error';
            Editable = false;
            FieldClass = FlowField;
        }
        field(121; "Live Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(122; "Live Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Variable" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(123; "Live Where-used as Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                          "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Live Where-Used as Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(124; "Live Where-used as Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Variable" WHERE ("Variable Object Type" = FIELD ("Object Type"),
                                                          "Variable Object ID" = FIELD ("Object ID")));
            Caption = 'Live Where-Used as Variables';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Company Name", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; Name)
        {
        }
        key(Key3; Date, Time)
        {
        }
        key(Key4; "BLOB Size")
        {
        }
    }

    fieldgroups
    {
    }
}

