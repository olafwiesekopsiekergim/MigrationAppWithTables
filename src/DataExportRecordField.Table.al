table 11005 "Data Export Record Field"
{
    Caption = 'Data Exp. Rec. Field';
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
        field(5; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Field No.';
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."),
                                               Type = FILTER (Option | Text | Code | Integer | Decimal | Date | Boolean));
        }
        field(6; "Field Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table No."),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(8; "Field Class"; Option)
        {
            Caption = 'Field Class';
            Editable = false;
            OptionCaption = 'Normal,FlowField,FlowFilter';
            OptionMembers = Normal,FlowField,FlowFilter;
        }
        field(9; "Date Filter Handling"; Option)
        {
            Caption = 'Date Filter Handling';
            OptionCaption = ' ,Period,End Date Only,Start Date Only';
            OptionMembers = " ",Period,"End Date Only","Start Date Only";
        }
        field(10; "Field Type"; Option)
        {
            Caption = 'Field Type';
            Editable = false;
            OptionCaption = ',Date,Decimal,Text,Code,Boolean,Integer,Option';
            OptionMembers = ,Date,Decimal,Text,"Code",Boolean,"Integer",Option;
        }
        field(11; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
        }
        field(50; "Export Field Name"; Text[50])
        {
            Caption = 'Export Field Name';
        }
    }

    keys
    {
        key(Key1; "Data Export Code", "Data Exp. Rec. Type Code", "Source Line No.", "Table No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

