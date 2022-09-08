table 14123801 "ES FLADS Setup"
{
    Caption = 'Field Level and Data Security Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Source Code File Name"; Text[250])
        {
            Caption = 'Source Code File Name';
        }
        field(3; "Use Nice Names in Code"; Boolean)
        {
            Caption = 'Use Nice Names in Code';
            InitValue = true;
        }
        field(4; "Remove Indentation in Code"; Boolean)
        {
            Caption = 'Remove Indentation in Code';
        }
        field(5; "Dynamic Setup"; Boolean)
        {
            Caption = 'Dynamic Setup';
            InitValue = true;
        }
        field(6; "Caption Language"; Code[10])
        {
            Caption = 'Caption Language';
            InitValue = 'ENU';
        }
        field(7; "Use Form Setup for Pages"; Boolean)
        {
            Caption = 'Use Form Setup for Pages';
        }
        field(8; "Output File Name"; Text[250])
        {
            Caption = 'Output File Name';
        }
        field(9; "Lookup Data Date"; Date)
        {
            Caption = 'Lookup Data Date';
            Editable = false;
        }
        field(10; "Lookup Data Time"; Time)
        {
            Caption = 'Lookup Data Time';
            Editable = false;
        }
        field(11; "Use Page Setup for Forms"; Boolean)
        {
            Caption = 'Use Page Setup for Forms';
        }
        field(12; "Modify Forms"; Boolean)
        {
            Caption = 'Modify Forms';
            InitValue = true;
        }
        field(13; "Modify Pages"; Boolean)
        {
            Caption = 'Modify Pages';
            InitValue = true;
        }
        field(16; "Install Allowed"; Boolean)
        {
            Caption = 'Install Allowed';
        }
        field(19; "Read-Only Field Level Sec.Code"; Code[10])
        {
            Caption = 'Read-Only Field Level Sec.Code';
            InitValue = 'READONLY';
        }
        field(20; "Create Read-Only Automatically"; Boolean)
        {
            Caption = 'Create Read-Only Automatically';
            InitValue = true;
        }
        field(21; "Set Read-Only to Default"; Boolean)
        {
            Caption = 'Set Read-Only to Default';
            InitValue = true;
        }
        field(22; "Copy From Setup Company"; Boolean)
        {
            Caption = 'Copy From Setup Company';
        }
        field(24; "Last Copy Date Time"; DateTime)
        {
            Caption = 'Last Copy Date Time';
            Editable = false;
        }
        field(25; "Copy Field Level Sec. Setup"; Boolean)
        {
            Caption = 'Copy Field Level Security Setup';
        }
        field(26; "Copy Data Security Setup"; Boolean)
        {
            Caption = 'Copy Data Security Setup';
        }
        field(27; "Copy User Security Setup"; Boolean)
        {
            Caption = 'Copy User Security Setup';
        }
        field(28; "Show Group Messages (Debug)"; Boolean)
        {
            Caption = 'Show Group Messages (Debug)';
        }
        field(29; "Lookup Live Windows Groups"; Boolean)
        {
            Caption = 'Lookup Live Windows Group';
        }
        field(31; "Use FLADS Groups"; Boolean)
        {
            Caption = 'Use Field Level and Data Security Group';
            InitValue = true;
        }
        field(32; "Copy From Company Name"; Text[30])
        {
            Caption = 'Copy From Company Name';
            TableRelation = Company;
        }
        field(33; "Copy Group Members"; Boolean)
        {
            Caption = 'Copy Group Members';
        }
        field(34; "Manually Enter Group Members"; Boolean)
        {
            Caption = 'Manually Enter Group Members';
            InitValue = true;
        }
        field(35; "Use Stored Windows Groups"; Boolean)
        {
            Caption = 'Use Stored Windows Groups';
        }
        field(36; "Use Login Setup"; Boolean)
        {
            Caption = 'Use Login Setup';
        }
        field(37; "Default Object Type"; Option)
        {
            Caption = 'Default Object Type';
            InitValue = "Page";
            NotBlank = true;
            OptionCaption = ' ,,,,,,,,Page';
            OptionMembers = " ",,,,,,,,"Page";
        }
        field(38; "No Action Code on Pages"; Boolean)
        {
            Caption = 'No Action Code on Pages';
        }
        field(39; "No Button Code on Forms"; Boolean)
        {
            Caption = 'No Button Code on Forms';
        }
        field(40; "No Field Code on Forms"; Boolean)
        {
            Caption = 'No Field Code on Forms';
        }
        field(41; "No Field Code on Pages"; Boolean)
        {
            Caption = 'No Field Code on Pages';
        }
        field(42; "Data Security Filter Group"; Integer)
        {
            Caption = 'Data Security Filter Group';
            InitValue = 2;
            MaxValue = 255;
            MinValue = 2;
        }
        field(43; "Disable Coded OnLookup"; Boolean)
        {
            Caption = 'Disable Coded OnLookup';
            InitValue = true;
        }
        field(44; "Created By User"; Code[20])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(45; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

