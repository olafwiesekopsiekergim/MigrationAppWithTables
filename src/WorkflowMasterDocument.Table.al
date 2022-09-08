table 5103649 "Workflow Master Document"
{
    // WF0069  New Key: Category Code
    // WF0075  Create Record Link
    // WF0067  Delete External Documents upon Master Document deletion.
    // WF0106  Use "Document Storage Path" from Setup if not entered in Document Category.
    // WF0133  Additional fields.
    // 
    // WF3.01:
    // -------
    // WF0189  New key "Import Reference No." for Report "Import Documents".
    // WF0198  RTC fix for File Exists.
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    // 
    // WF3.01.02:
    // ----------
    // WF0253  Changed Length in field 27 "Category Code" from Code[10] to Code[20].

    Caption = 'Workflow Master Document';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; Document; BLOB)
        {
            Caption = 'Document';
        }
        field(6; Filename; Text[150])
        {
            Caption = 'Filename';
            Editable = false;
        }
        field(7; Description; Text[150])
        {
            Caption = 'Description';
        }
        field(9; "Document Storage Type"; Option)
        {
            Caption = 'Document Storage Type';
            OptionCaption = 'Internal,External';
            OptionMembers = Internal,External;
        }
        field(11; "File Extension"; Text[30])
        {
            Caption = 'File Extension';
            Editable = false;
        }
        field(26; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(27; "Category Code"; Code[20])
        {
            Caption = 'Category Code';
            Description = 'WF0253';
            TableRelation = "Document Category";
        }
        field(30; "Date Created"; Date)
        {
            Caption = 'Date Created';
            Description = 'WF0133';
            Editable = false;
        }
        field(31; "Time Created"; Time)
        {
            Caption = 'Time Created';
            Description = 'WF0133';
            Editable = false;
        }
        field(32; "Created by User ID"; Code[50])
        {
            Caption = 'Created by User ID';
            Description = 'WF0133,WFNAV7';
            Editable = false;
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(33; "Date Modified"; Date)
        {
            Caption = 'Date Modified';
            Description = 'WF0133';
            Editable = false;
        }
        field(34; "Time Modified"; Time)
        {
            Caption = 'Time Modified';
            Description = 'WF0133';
            Editable = false;
        }
        field(35; "Modified by User ID"; Code[50])
        {
            Caption = 'Modified by User ID';
            Description = 'WF0133,WFNAV7';
            Editable = false;
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(40; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST ("Master Document"),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(41; "Import Reference No."; Text[30])
        {
            Caption = 'Import Reference No.';
        }
        field(42; "No. of Links"; Integer)
        {
            CalcFormula = Count ("Workflow Document Link" WHERE ("Master Document No." = FIELD ("No.")));
            Caption = 'No. of Links';
            Editable = false;
            FieldClass = FlowField;
        }
        field(43; "External Reference No."; Text[30])
        {
            Caption = 'External Reference No.';
        }
        field(44; "Document Source Type"; Option)
        {
            Caption = 'Document Source Type';
            OptionCaption = 'File,URL';
            OptionMembers = File,URL;
        }
        field(45; URL; Text[250])
        {
            Caption = 'URL';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Category Code", Filename, "File Extension")
        {
        }
        key(Key3; "Category Code")
        {
        }
        key(Key4; "Import Reference No.")
        {
        }
    }

    fieldgroups
    {
    }
}

