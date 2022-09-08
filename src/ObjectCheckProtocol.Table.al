table 5103631 "Object Check Protocol"
{
    Caption = 'Object Check Protocol';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table No."));
        }
        field(3; "Table Caption"; Text[250])
        {
            Caption = 'Table Caption';
            Editable = false;
        }
        field(4; "Field Caption"; Text[80])
        {
            Caption = 'Field Caption';
            Editable = false;
        }
        field(8; "Critical Code Line"; Text[250])
        {
            Caption = 'Critical Code Line';
        }
        field(9; "Critical Field"; Boolean)
        {
            Caption = 'Critical Field';
        }
        field(10; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(11; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Field,Table';
            OptionMembers = "Field","Table";
        }
        field(12; "On Insert"; Boolean)
        {
            Caption = 'On Insert';
        }
        field(13; "On Modify"; Boolean)
        {
            Caption = 'On Modify';
        }
        field(14; "On Delete"; Boolean)
        {
            Caption = 'On Delete';
        }
        field(15; "On Rename"; Boolean)
        {
            Caption = 'On Rename';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

