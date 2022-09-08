table 5292332 "PR - Job Setup Checklist Line"
{
    Caption = 'Job Setup Checklist Line';
    DataCaptionFields = "Table Name";

    fields
    {
        field(1; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(2; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            Editable = false;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table));
        }
        field(3; "Table Name"; Text[80])
        {
            Caption = 'Table Name';
            Editable = false;
        }
        field(4; "Company Filter"; Text[30])
        {
            Caption = 'Company Filter';
            FieldClass = FlowFilter;
        }
        field(6; "Company Filter (Source Table)"; Text[30])
        {
            Caption = 'Company Filter (Source Table)';
            FieldClass = FlowFilter;
        }
        field(8; "No. of Records"; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup("Table Information"."No. of Records" WHERE("Company Name" = FIELD("Company Filter"),
                                                                             "Table No." = FIELD("Table ID"),
                                                                             "No. of Records" = FILTER(<> 0)));
            Caption = 'No. of Records';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "No. of Records (Source Table)"; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup("Table Information"."No. of Records" WHERE("Company Name" = FIELD("Company Filter (Source Table)"),
                                                                             "Table No." = FIELD("Table ID"),
                                                                             "No. of Records" = FILTER(<> 0)));
            Caption = 'No. of Records (Source Table)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; License; Boolean)
        {
            BlankZero = true;
            CalcFormula = Exist("License Permission" WHERE("Object Type" = CONST(TableData),
                                                            "Object Number" = FIELD("License Table ID"),
                                                            "Read Permission" = CONST(Yes),
                                                            "Insert Permission" = CONST(Yes),
                                                            "Modify Permission" = CONST(Yes),
                                                            "Delete Permission" = CONST(Yes)));
            Caption = 'License';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Copying Allowed"; Boolean)
        {
            Caption = 'Copying Available';
            Editable = false;
        }
        field(14; "Form ID"; Integer)
        {
            Caption = 'Form ID';
            Editable = false;
        }
        field(15; "Form Name"; Text[80])
        {
            Caption = 'Form Name';
            Editable = false;
        }
        field(16; "License Table ID"; Integer)
        {
            Caption = 'License Table ID';
            Editable = false;
            TableRelation = AllObj."Object ID" WHERE("Object Type" = CONST(Table));
        }
        field(17; "License Table Name"; Text[80])
        {
            Caption = 'License Table Name';
            Editable = false;
        }
        field(18; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(19; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(20; "Responsible ID"; Code[20])
        {
            Caption = 'Responsible ID';
        }
        field(21; Status; Option)
        {
            Caption = 'Status';
            Description = ' ,Planning,Started,Completed,Standard';
            OptionCaption = ' ,Planning,Started,Completed,Standard';
            OptionMembers = " ",Planning,Started,Completed,Standard;
        }
        field(23; "Application Area ID"; Integer)
        {
            Caption = 'Application Area ID';
            Editable = false;
        }
        field(24; "Application Area Name"; Text[30])
        {
            CalcFormula = Lookup("Config. Line".Name WHERE("Table ID" = FIELD("Application Area ID")));
            Caption = 'Application Area Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1000; "Position Type"; Option)
        {
            Caption = 'Position Type';
            Description = ' ,Header,Table';
            OptionCaption = ' ,Header,Table';
            OptionMembers = " ",Header,"Table";
        }
        field(1001; "Position Code"; Code[20])
        {
            Caption = 'Position Code';
        }
        field(1010; "Position Text"; Text[80])
        {
            Caption = 'Position Text';
        }
        field(1020; Wizard; Boolean)
        {
            Caption = 'Wizard';
            Editable = false;
        }
        field(1021; Step; Integer)
        {
            Caption = 'Step';
        }
    }

    keys
    {
        key(Key1; "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Table ID")
        {
        }
        key(Key3; "Table Name")
        {
        }
    }

    fieldgroups
    {
    }
}

