table 11006 "Data Export Table Relation"
{
    Caption = 'Data Export Table Relationship';
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
            Caption = 'Data Exp. Rec. Type Code';
            NotBlank = true;
            TableRelation = "Data Export Record Type";
        }
        field(3; "From Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'From Table No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(4; "From Table Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("From Table No.")));
            Caption = 'From Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "From Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'From Field No.';
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = FIELD ("From Table No."),
                                               Type = FILTER (Option | Text | Code | Integer | Decimal | Date | Boolean),
                                               Class = CONST (Normal));
        }
        field(6; "From Field Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("From Table No."),
                                                              "No." = FIELD ("From Field No.")));
            Caption = 'From Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "To Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'To Table No.';
            NotBlank = true;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(8; "To Table Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("To Table No.")));
            Caption = 'To Table Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "To Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'To Field No.';
            NotBlank = true;
            TableRelation = Field."No." WHERE (TableNo = FIELD ("To Table No."),
                                               Type = FILTER (Option | Text | Code | Integer | Decimal | Date | Boolean));
        }
        field(10; "To Field Name"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("To Table No."),
                                                              "No." = FIELD ("To Field No.")));
            Caption = 'To Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Data Export Code", "Data Exp. Rec. Type Code", "From Table No.", "From Field No.", "To Table No.", "To Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

