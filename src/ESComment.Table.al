table 14123524 "ES Comment"
{
    Caption = 'Comment';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
        }
        field(2; "Code"; Code[50])
        {
            Caption = 'Code';
        }
        field(3; "Role ID"; Code[20])
        {
            Caption = 'Permission Set ID';
            TableRelation = "ES Role"."Role ID";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9";
        }
        field(5; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(6; SID; Text[80])
        {
            Caption = 'User Security ID';
        }
        field(7; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(8; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
        }
        field(9; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(11; Text; Text[250])
        {
            Caption = 'Text';
        }
        field(12; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(13; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Table ID", "Code", "Role ID", Type, "Object ID", SID, "User ID", "Company Name", "Entry No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Created Date Time")
        {
        }
        key(Key3; "Created By User", "Created Date Time")
        {
        }
    }

    fieldgroups
    {
    }
}

