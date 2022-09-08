table 5292378 "PR - Job Word Document"
{
    Caption = 'Job Word Document';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(21; "Import Filename"; Text[250])
        {
            Caption = 'Import Filename';
            Editable = false;
        }
        field(22; "Export Filename"; Text[250])
        {
            Caption = 'Export Filename';
            Editable = false;
        }
        field(25; "Template Sheet"; BLOB)
        {
            Caption = 'Template Sheet';
            SubType = Memo;
        }
        field(30; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            Description = 'TR Object';
            TableRelation = Object.ID WHERE (Type = CONST (Report));
        }
        field(31; "Report Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Report),
                                                                           "Object ID" = FIELD ("Report ID")));
            Caption = 'Report Name';
            Description = 'LU Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            Description = 'TR Object';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(41; "Table Name"; Text[80])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Name';
            Description = 'LU Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Temporary Path"; Text[250])
        {
            Caption = 'Temporary Path';
        }
        field(51; "Temporary File"; Text[250])
        {
            Caption = 'Temporary File';
        }
        field(100; "--- Options"; Integer)
        {
            Caption = '--- Options';
            Enabled = false;
        }
        field(110; "Refresh Tables of Contents"; Boolean)
        {
            Caption = 'Refresh Tables of Contents';
        }
        field(1000; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Editable = false;
        }
        field(1001; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Editable = false;
        }
        field(1002; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Editable = false;
        }
        field(1005; "Created automatically"; Boolean)
        {
            Caption = 'Created automatically';
            Editable = false;
        }
        field(1010; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Editable = false;
        }
        field(1011; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Editable = false;
        }
        field(1012; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Table ID")
        {
        }
    }

    fieldgroups
    {
    }
}

