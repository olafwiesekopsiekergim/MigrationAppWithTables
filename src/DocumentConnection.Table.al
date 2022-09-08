table 5103647 "Document Connection"
{
    // WF0078  Added new fields Status and Description. Fields Blocked and "Link Type" are no longer used.
    //         Changed 2nd Key from "Target Table No.,Blocked" to "Target Table No.,Status".
    //         Changed 3rd Key from "Target Table No.,Source Table No.,Blocked" to "Target Table No.,Source Table No.,Status"
    //         (Key no longer used).
    // WF0134  Added comment field.
    // WF0135  Copy functionality.
    // 
    // WF3.01:
    // -------
    // WF0188  Changed InitValue of field "Blocked" from Yes to <Undefined>.
    //         Test "Target Table No." and "Source Table No." on validate.
    // 
    // WF3.02:
    // -------
    // WF0271  Allow view within same Table: Disabled same Table No. check.

    Caption = 'Document Connection';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Target Table No."; Integer)
        {
            Caption = 'Target Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(3; "Target Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Target Table No.")));
            Caption = 'Target Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Source Table No."; Integer)
        {
            Caption = 'Source Table No.';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(5; "Source Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Table No.")));
            Caption = 'Source Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Link Type"; Option)
        {
            Caption = 'Link Type';
            OptionCaption = ' ,Show,Copy';
            OptionMembers = " ",View,Copy;
        }
        field(7; Blocked; Boolean)
        {
            Caption = 'Blocked';
            Description = 'WF0188';
        }
        field(8; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(10; Status; Option)
        {
            Caption = 'Status';
            Description = 'WF0078';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(11; Description; Text[50])
        {
            Caption = 'Description';
            Description = 'WF0078';
        }
        field(40; Comment; Boolean)
        {
            CalcFormula = Exist ("Workflow Comment Line" WHERE ("Table Name" = CONST ("Document Connection"),
                                                               "No." = FIELD ("No.")));
            Caption = 'Comment';
            Description = 'WF0134';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Target Table No.", Status)
        {
        }
        key(Key3; "Target Table No.", "Source Table No.", Status)
        {
        }
    }

    fieldgroups
    {
    }
}

