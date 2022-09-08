table 474 "Job Queue Log Entry"
{
    Caption = 'Job Queue Log Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; ID; Guid)
        {
            Caption = 'ID';
        }
        field(3; "User ID"; Text[65])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(4; "Start Date/Time"; DateTime)
        {
            Caption = 'Start Date/Time';
        }
        field(5; "End Date/Time"; DateTime)
        {
            Caption = 'End Date/Time';
        }
        field(6; "Object Type to Run"; Option)
        {
            Caption = 'Object Type to Run';
            OptionCaption = ',,,Report,,Codeunit';
            OptionMembers = ,,,"Report",,"Codeunit";
        }
        field(7; "Object ID to Run"; Integer)
        {
            Caption = 'Object ID to Run';
        }
        field(8; "Object Caption to Run"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = FIELD ("Object Type to Run"),
                                                                           "Object ID" = FIELD ("Object ID to Run")));
            Caption = 'Object Caption to Run';
            FieldClass = FlowField;
        }
        field(9; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Success,In Process,Error';
            OptionMembers = Success,"In Process",Error;
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
        }
        field(12; "Error Message 2"; Text[250])
        {
            Caption = 'Error Message 2';
        }
        field(13; "Error Message 3"; Text[250])
        {
            Caption = 'Error Message 3';
        }
        field(14; "Error Message 4"; Text[250])
        {
            Caption = 'Error Message 4';
        }
        field(15; "Job Queue Code"; Code[10])
        {
            Caption = 'Job Queue Code';
            TableRelation = "Job Queue";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(16; "Processed by User ID"; Text[65])
        {
            Caption = 'Processed by User ID';
        }
        field(17; "Job Queue Category Code"; Code[10])
        {
            Caption = 'Job Queue Category Code';
            TableRelation = "Job Queue Category";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; ID)
        {
        }
        key(Key3; "Start Date/Time", ID)
        {
        }
    }

    fieldgroups
    {
    }
}

