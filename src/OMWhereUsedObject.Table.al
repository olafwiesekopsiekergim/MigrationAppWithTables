table 11102057 "OM - Where Used Object"
{
    Caption = 'Where Used Object';
    DataCaptionFields = "Object Type", "Object No.", Name;
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
        field(3; Name; Text[250])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(4; "Object Date"; Date)
        {
            Caption = 'Object Date';
            Editable = false;
        }
        field(5; "Object Time"; Time)
        {
            Caption = 'Object Time';
            Editable = false;
        }
        field(6; "No. of Times Used"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Cross Table" WHERE ("Object Entry No." = FIELD ("Object Line Entry No.")));
            Caption = 'No. of Times Used';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(10; "C/AL Code Entry No."; Integer)
        {
            Caption = 'C/AL Code Entry No.';
            TableRelation = "OM - C/AL History Object";
        }
        field(11; "Variable Usage Calculated"; Boolean)
        {
            Caption = 'Variable Usage Calculated';
        }
        field(12; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = ' ,Lines Updated,Used in Updated';
            OptionMembers = " ","Lines Updated","Used in Updated";
        }
        field(13; "Object Line Entry No."; Integer)
        {
            Caption = 'Object Line Entry No.';
            TableRelation = "OM - Where Used Object Line";
        }
        field(14; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table),
                                             "Company Name" = FILTER (''));
        }
        field(15; "No. of Keys"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = CONST (Key)));
            Caption = 'No. of Keys';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "No. of Fields"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = CONST (Field)));
            Caption = 'No. of Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "No. of Global Functions"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = CONST ("Global Function")));
            Caption = 'No. of Global Functions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "No. of Local Functions"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = CONST ("Local Function")));
            Caption = 'No. of Local Functions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Relations To"; Integer)
        {
            CalcFormula = Count ("OM - Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                       "Table No." = FIELD ("Object No.")));
            Caption = 'Relations To';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Relations From"; Integer)
        {
            CalcFormula = Count ("OM - Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                       "Relation Table No." = FIELD ("Object No.")));
            Caption = 'Relations From';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "C/AL Changed"; Boolean)
        {
            Caption = 'C/AL Changed';
        }
        field(22; "Version List"; Text[248])
        {
            CalcFormula = Lookup (Object."Version List" WHERE (Type = FIELD ("Object Type"),
                                                              ID = FIELD ("Object No.")));
            Caption = 'Version List';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Object Modified"; Boolean)
        {
            Caption = 'Object Modified';
        }
        field(24; Caption; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "No. of Global Variables"; Integer)
        {
            Caption = 'No. of Global Variables';
            Editable = false;
        }
        field(26; "No. of Unused Variables"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = FILTER ("Global Variable" | "Local Variable"),
                                                                     Used = CONST (false)));
            Caption = 'No. of Unused Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "No. of Unused Parameters"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = CONST (Parameter),
                                                                     Used = CONST (false)));
            Caption = 'No. of Unused Parameters';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "No. of Unused Return Values"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object Line" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object No." = FIELD ("Object No."),
                                                                     Type = CONST ("Return Value"),
                                                                     Used = CONST (false)));
            Caption = 'No. of Unused Return Values';
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
        key(Key2; "C/AL Changed")
        {
        }
        key(Key3; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

