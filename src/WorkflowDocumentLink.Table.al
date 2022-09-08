table 5103623 "Workflow Document Link"
{
    // WF0078  Additional fields.
    // WF0115  Show all linked documents with source record.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 27 "Category Code" from Code[10] to Code[20].

    Caption = 'Workflow Document Link';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
            Editable = false;
            NotBlank = true;
        }
        field(2; "Record Position"; Text[200])
        {
            Caption = 'Record Position';
            Editable = false;
            NotBlank = true;
        }
        field(3; "Record Position 2"; Text[10])
        {
            Caption = 'Record Position 2';
        }
        field(4; "Master Document No."; Code[20])
        {
            Caption = 'Master Document No.';
            TableRelation = "Workflow Master Document";
        }
        field(5; Description; Text[150])
        {
            CalcFormula = Lookup ("Workflow Master Document".Description WHERE ("No." = FIELD ("Master Document No.")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
            Editable = false;
        }
        field(7; "Source Record Position"; Text[200])
        {
            Caption = 'Source Record Position';
            Editable = false;
        }
        field(8; "Source Record Position 2"; Text[250])
        {
            Caption = 'Record Position (Source) 2';
        }
        field(9; "Source Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table No.")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(11; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Description = 'WF0115 - added to Primary Key';
        }
        field(12; "Document Source Text"; Text[50])
        {
            Caption = 'Document Source';
            Description = 'WF0115';
        }
        field(13; "Document Link No."; Code[20])
        {
            Caption = 'Document Link No.';
            Description = 'WF0078';
            Editable = false;
            TableRelation = "Document Connection";
        }
        field(15; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(27; "Category Code"; Code[20])
        {
            CalcFormula = Lookup ("Workflow Master Document"."Category Code" WHERE ("No." = FIELD ("Master Document No.")));
            Caption = 'Category Code';
            Description = 'WF0253';
            Editable = false;
            FieldClass = FlowField;
            TableRelation = "Document Category";
        }
        field(30; "Date Linked"; Date)
        {
            Caption = 'Date Linked';
            Description = 'WF0078';
            Editable = false;
        }
        field(31; "Time Linked"; Time)
        {
            Caption = 'Time Linked';
            Description = 'WF0078';
            Editable = false;
        }
        field(32; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = 'WF0078,WFNAV7';
            Editable = false;
            TableRelation = User;
        }
        field(44; "Document Source Type"; Option)
        {
            CalcFormula = Lookup ("Workflow Master Document"."Document Source Type" WHERE ("No." = FIELD ("Master Document No.")));
            Caption = 'Document Source Type';
            Description = 'WF0078';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'File,URL';
            OptionMembers = File,URL;
        }
    }

    keys
    {
        key(Key1; "Table No.", "Record Position", "Record Position 2", "Master Document No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Master Document No.")
        {
        }
    }

    fieldgroups
    {
    }
}

