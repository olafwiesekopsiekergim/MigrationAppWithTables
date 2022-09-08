table 11004 "Data Export Record Source"
{
    Caption = 'Data Export Record Source';
    DataCaptionFields = "Data Export Code", "Data Exp. Rec. Type Code";

    fields
    {
        field(1; "Data Export Code"; Code[10])
        {
            Caption = 'Data Export Code';
            NotBlank = true;
            TableRelation = "Data Export";
        }
        field(2; "Data Exp. Rec. Type Code"; Code[10])
        {
            Caption = 'Data Export Record Type Code';
            NotBlank = true;
            TableRelation = "Data Export Record Type";
        }
        field(3; "Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(4; "Table Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Indentation; Integer)
        {
            Caption = 'Indentation';
            MinValue = 0;
        }
        field(6; "Fields Selected"; Boolean)
        {
            CalcFormula = Exist ("Data Export Record Field" WHERE ("Data Export Code" = FIELD ("Data Export Code"),
                                                                  "Data Exp. Rec. Type Code" = FIELD ("Data Exp. Rec. Type Code"),
                                                                  "Table No." = FIELD ("Table No.")));
            Caption = 'Fields Selected';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Relation To Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Relation To Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(8; "Relation To Table Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Relation To Table No.")));
            Caption = 'Relation To Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Period Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Period Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."),
                                               Type = FILTER (Date),
                                               Class = CONST (Normal));
        }
        field(10; "Period Field Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Period Field No.")));
            Caption = 'Period Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Table Relation Defined"; Boolean)
        {
            CalcFormula = Exist ("Data Export Table Relation" WHERE ("Data Export Code" = FIELD ("Data Export Code"),
                                                                    "Data Exp. Rec. Type Code" = FIELD ("Data Exp. Rec. Type Code"),
                                                                    "To Table No." = FIELD ("Table No."),
                                                                    "From Table No." = FIELD ("Relation To Table No.")));
            Caption = 'Table Relation Defined';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(13; "Export File Name"; Text[250])
        {
            Caption = 'Export File Name';
        }
        field(14; "Relation To Line No."; Integer)
        {
            Caption = 'Relation To Line No.';
        }
        field(30; "Table Filter"; TableFilter)
        {
            Caption = 'Table Filter';
        }
        field(31; "Key No."; Integer)
        {
            Caption = 'Key No.';
        }
        field(32; "Date Filter Field No."; Integer)
        {
            Caption = 'Date Filter Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."),
                                               Type = CONST (Date),
                                               Class = CONST (FlowFilter));
        }
        field(33; "Date Filter Handling"; Option)
        {
            Caption = 'Date Filter Handling';
            OptionCaption = ' ,Period,End Date Only,Start Date Only';
            OptionMembers = " ",Period,"End Date Only","Start Date Only";
        }
        field(41; "Active Key Seq. No."; Integer)
        {
            Caption = 'Active Key Seq. No.';
        }
        field(50; "Export Table Name"; Text[80])
        {
            Caption = 'Export Table Name';
        }
    }

    keys
    {
        key(Key1; "Data Export Code", "Data Exp. Rec. Type Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

