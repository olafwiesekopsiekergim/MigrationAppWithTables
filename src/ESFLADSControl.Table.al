table 14123814 "ES FLADS Control"
{
    Caption = 'Field Level and Data Security Control';

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
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Control ID"; Integer)
        {
            Caption = 'Control ID';
            NotBlank = true;
        }
        field(5; Index; Integer)
        {
            Caption = 'Index';
        }
        field(11; "Object Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Control Type Text"; Text[30])
        {
            Caption = 'Control Type Text';
        }
        field(13; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,TextBox,Command Button,Menu Button,Menu Item';
            OptionMembers = " ",TextBox,"Command Button","Menu Button","Menu Item";
        }
        field(14; "Control Name"; Text[100])
        {
            Caption = 'Control Name';
        }
        field(15; "Field ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Field ID';
        }
        field(16; "Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Source Table No."),
                                                              "No." = FIELD ("Field ID")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Source Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Table No.';
        }
        field(18; "Source Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table No.")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; Editable; Boolean)
        {
            Caption = 'Editable';
        }
        field(20; Visible; Boolean)
        {
            Caption = 'Visible';
        }
        field(21; Level; Integer)
        {
            Caption = 'Level';
        }
        field(22; "Visible Code"; Text[50])
        {
            Caption = 'Visible Code';
        }
        field(23; "Editable Code"; Text[50])
        {
            Caption = 'Editable Code';
        }
        field(24; "HideValue Code"; Text[50])
        {
            Caption = 'HideValue Code';
        }
        field(25; "SourceExpr Code"; Text[50])
        {
            Caption = 'SourceExpr Code';
        }
        field(26; "RunObject Code"; Text[50])
        {
            Caption = 'RunObject Code';
        }
        field(27; "Parent Control ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Parent Control ID';
            NotBlank = true;
        }
        field(28; "PageType Code"; Text[30])
        {
            Caption = 'PageType Code';
        }
        field(29; "Control Number in Code"; Integer)
        {
            Caption = 'Control Number in Code';
        }
        field(30; "Field Name"; Text[250])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Source Table No."),
                                                        "No." = FIELD ("Field ID")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Enabled Code"; Text[50])
        {
            Caption = 'Enabled Code';
        }
        field(32; "Run Object Type"; Option)
        {
            Caption = 'Run Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(33; "Run Object ID"; Integer)
        {
            Caption = 'Run Object ID';
        }
        field(34; "Run Object Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Run Object Type"),
                                                                           "Object ID" = FIELD ("Run Object ID")));
            Caption = 'Run Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "First Variable ID"; Integer)
        {
            Caption = 'First Variable ID';
        }
        field(36; "Control Name Blank"; Boolean)
        {
            Caption = 'Control Name Blank';
        }
        field(37; "Control Caption"; Text[30])
        {
            Caption = 'Control Caption';
        }
        field(38; "Control Type"; Option)
        {
            Caption = 'Control Type';
            OptionCaption = ' ,MenuButton,CommandButton,Action,TableBox,Field,TextBox,CheckBox,PictureBox,SubForm,Part,Group,TabControl,Separator,Frame,OptionButton,Indicator,Image,MatrixBox,ActionGroup,Container,ActionContainer,Label';
            OptionMembers = " ",MenuButton,CommandButton,"Action",TableBox,"Field",TextBox,CheckBox,PictureBox,SubForm,"Part",Group,TabControl,Separator,Frame,OptionButton,Indicator,Image,MatrixBox,ActionGroup,Container,ActionContainer,Label;
        }
        field(39; "ENU Control Caption"; Text[30])
        {
            Caption = 'ENU Control Caption';
        }
        field(40; "Field Class"; Option)
        {
            Caption = 'Field Class';
            OptionCaption = 'Normal,FlowField,Flowfilter';
            OptionMembers = Normal,FlowField,Flowfilter;
        }
        field(51; "Visible Variable Name"; Text[30])
        {
            Caption = 'Visible Variable Name';
        }
        field(52; "Editable Variable Name"; Text[30])
        {
            Caption = 'Editable Variable Name';
        }
        field(53; "HideValue Variable Name"; Text[30])
        {
            Caption = 'HideValue Variable Name';
        }
        field(54; "Enabled Variable Name"; Text[30])
        {
            Caption = 'Enabled Variable Name';
        }
        field(55; "Control Used"; Boolean)
        {
            Caption = 'Control Used';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID", "Control ID", Index)
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object ID", "Control Number in Code")
        {
        }
        key(Key3; "Object Type", "Object ID", "Field ID", "Control ID")
        {
        }
        key(Key4; "Object Type", "Object ID", "First Variable ID")
        {
        }
    }

    fieldgroups
    {
    }
}

