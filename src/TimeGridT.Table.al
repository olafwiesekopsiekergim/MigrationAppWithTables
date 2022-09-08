table 5056307 "Time Grid/T"
{
    Caption = 'Time Grid';
    DataCaptionFields = "No.", Description;
    Description = 'GrTimeGrid';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(10; "Dynamic Status"; Boolean)
        {
            Caption = 'Dynamic Status';
        }
        field(11; "Object Class"; Option)
        {
            Caption = 'Object Class';
            OptionCaption = ' ,Actual Time Object 1-999,Presence Time Object 1000-1999,Overtime Object 2000-2999,Absent Time Object 3000-3999,Supplement Object 4000-4999,Target Time Object 5000-5999,Special Object 6000-6999,Planning Object DS00000001-DS99999999,Temporarly-Object 10000-99999';
            OptionMembers = " ","Actual Time Object 1-999","Presence Time Object 1000-1999","Overtime Object 2000-2999","Absent Time Object 3000-3999","Supplement Object 4000-4999","Target Time Object 5000-5999","Special Object 6000-6999","Planning Object DS00000001-DS99999999","Temporarly-Object 10000-99999";
        }
        field(20; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            Editable = false;
            TableRelation = "Employee/T"."No.";
        }
        field(21; "Current Date"; Date)
        {
            Caption = 'Current Date';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

