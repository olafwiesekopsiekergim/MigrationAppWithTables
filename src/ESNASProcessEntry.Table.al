table 14123541 "ES NAS Process Entry"
{
    Caption = 'NAS Process Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(11; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Synchronize and Publish,Synchronize,Publish,Live Restore Point,Easy Security Restore Point,Update FLADS Lookup Data,Copy FLADS Setup Data,Copy Windows Groups';
            OptionMembers = " ","Synchronize and Publish",Synchronize,Publish,"Live Restore Point","Easy Security Restore Point","Update FLADS Lookup Data","Copy FLADS Setup Data","Copy Windows Groups";
        }
        field(12; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(13; "Creation Date Time"; DateTime)
        {
            Caption = 'Creation Date Time';
            Editable = false;
        }
        field(14; "Start Date Time"; DateTime)
        {
            Caption = 'Start Date Time';
            Editable = false;
        }
        field(15; "End Date Time"; DateTime)
        {
            Caption = 'End Date Time';
            Editable = false;
        }
        field(16; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            InitValue = "On Hold";
            OptionCaption = 'Ready,In Process,Error,On Hold,Finished';
            OptionMembers = Ready,"In Process",Error,"On Hold",Finished;
        }
        field(18; "Created By User"; Code[50])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(19; "Last Modified By User"; Code[50])
        {
            Caption = 'Last Modified By User';
            Editable = false;
        }
        field(20; "Error Text"; Text[250])
        {
            Caption = 'Error Text';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

