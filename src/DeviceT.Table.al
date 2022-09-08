table 5056442 "Device/T"
{
    Caption = 'Device';
    Description = 'GrDevice';

    fields
    {
        field(1; "Device No."; Text[80])
        {
            Caption = 'No.';
            Editable = false;
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(10; Model; Text[30])
        {
            Caption = 'Model';
            Editable = false;
        }
        field(11; Platform; Text[30])
        {
            Caption = 'Platform';
            Editable = false;
        }
        field(12; "OS Version"; Text[30])
        {
            Caption = 'OS Version';
            Editable = false;
        }
        field(13; "App Version"; Text[30])
        {
            Caption = 'App Version';
            Editable = false;
        }
        field(20; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(21; "Creation Time"; Time)
        {
            Caption = 'Creation Time';
            Editable = false;
        }
        field(22; "Last Connection Date"; Date)
        {
            Caption = 'Last Connection Date';
            Editable = false;
        }
        field(23; "Last Connection Time"; Time)
        {
            Caption = 'Last Connection Time';
            Editable = false;
        }
        field(30; "Valid from"; Date)
        {
            Caption = 'Valid from';
        }
        field(31; "Valid Until"; Date)
        {
            Caption = 'Valid until';
        }
        field(40; "Device State"; Option)
        {
            Caption = 'Device State';
            OptionCaption = 'New,Active,Blocked';
            OptionMembers = New,Active,Blocked;
        }
    }

    keys
    {
        key(Key1; "Device No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

