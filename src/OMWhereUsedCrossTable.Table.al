table 11102061 "OM - Where Used Cross Table"
{
    Caption = 'Where Used Cross Table';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Object Entry No."; Integer)
        {
            Caption = 'Object Entry No.';
            TableRelation = "OM - Where Used Object Line";
        }
        field(3; "In Entry No."; Integer)
        {
            Caption = 'In Entry No.';
            TableRelation = "OM - Where Used In";
        }
        field(4; "C/AL Code Line No."; Integer)
        {
            Caption = 'C/AL Code Line No.';
        }
        field(5; Validation; Option)
        {
            Caption = 'Validation';
            OptionCaption = ' ,No,Yes';
            OptionMembers = " ",No,Yes;
        }
        field(6; Type; Option)
        {
            CalcFormula = Lookup ("OM - Where Used In".Type WHERE ("Entry No." = FIELD ("In Entry No.")));
            Caption = 'Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Property,Key,Global Variable,Local Variable,Code,SourceExpr,Relation,Parameter,Data';
            OptionMembers = Property,"Key","Global Variable","Local Variable","Code",SourceExpr,Relation,Parameter,Data;
        }
        field(7; "Object Type"; Option)
        {
            BlankZero = true;
            CalcFormula = Lookup ("OM - Where Used In"."Object Type" WHERE ("Entry No." = FIELD ("In Entry No.")));
            Caption = 'Object Type';
            Editable = false;
            FieldClass = FlowField;
            NotBlank = true;
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(8; "Object No."; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("OM - Where Used In"."Object No." WHERE ("Entry No." = FIELD ("In Entry No.")));
            Caption = 'Object No.';
            Editable = false;
            FieldClass = FlowField;
            NotBlank = true;
        }
        field(9; Name; Text[100])
        {
            CalcFormula = Lookup ("OM - Where Used In".Name WHERE ("Entry No." = FIELD ("In Entry No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
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
        field(12; "Version List"; Text[248])
        {
            CalcFormula = Lookup (Object."Version List" WHERE (Type = FIELD ("Object Type"),
                                                              ID = FIELD ("Object No.")));
            Caption = 'Version List';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; Caption; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object No.")));
            Caption = 'Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Temporary Record"; Boolean)
        {
            Caption = 'Temporary Record';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
        }
        key(Key2; "Object Entry No.", "In Entry No.")
        {
            Clustered = true;
        }
        key(Key3; "In Entry No.")
        {
        }
    }

    fieldgroups
    {
    }
}

