table 5103628 "Field Security Setup"
{
    // WF0032  New Key "Table No.,Field No." for Field Security Matrix.
    // 
    // WF3.01:
    // -------
    // WF0214  Prohibit Rename. Use Filtergroups in "Table No." and "Field No." OnLookup.
    //         Show only enabled fields with Class::Normal in "Field No." OnLookup.
    //         RecordID, Binary and BLOB field types not selectable.
    //         Test values in "Field No." OnValidate.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.02.01:
    // ----------
    // WF0280  Removed Code for Change Log Setup modification in trigger OnInsert.

    Caption = 'Field Security Setup';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            NotBlank = true;
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
        field(5; "Field Security Type"; Option)
        {
            Caption = 'Field Security Type';
            OptionCaption = ' ,Inclusive,Exclusive';
            OptionMembers = " ",Inclusive,Exclusive;
        }
        field(8; "Critical Code Line"; Text[250])
        {
            Caption = 'Critical Code Line';
        }
        field(9; "Critical Field"; Boolean)
        {
            CalcFormula = Exist ("Object Check Protocol" WHERE ("Table No." = FIELD ("Table No."),
                                                               "Field No." = FIELD ("Field No."),
                                                               "On Modify" = FILTER (true)));
            Caption = 'Critical Field';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Critical Table"; Boolean)
        {
            CalcFormula = Exist ("Object Check Protocol" WHERE ("Table No." = FIELD ("Table No."),
                                                               "On Modify" = FILTER (true)));
            Caption = 'Critical Table';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Field Security Behavior"; Option)
        {
            Caption = 'Field Security Behavior';
            OptionCaption = ' ,Error,Roll back';
            OptionMembers = " ",Error,"Roll back";
        }
        field(12; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Field,Table';
            OptionMembers = "Field","Table";
        }
        field(13; "Skip if Field was empty"; Boolean)
        {
            Caption = 'Skip if Field was empty';
        }
    }

    keys
    {
        key(Key1; Type, "Table No.", "Field No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "Field No.")
        {
        }
    }

    fieldgroups
    {
    }
}

