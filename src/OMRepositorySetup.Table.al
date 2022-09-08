table 11102085 "OM - Repository Setup"
{
    Caption = 'Repository Setup';
    DataPerCompany = false;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Use Repository"; Boolean)
        {
            Caption = 'Use Repository';
        }
        field(3; "Repository Type"; Option)
        {
            Caption = 'Repository Type';
            OptionCaption = 'File System,Visual SourceSafe,Team Foundation Server,SubVersion';
            OptionMembers = "File System","Visual SourceSafe","Team Foundation Server",SubVersion;
        }
        field(4; "Token Duration"; Decimal)
        {
            Caption = 'Token Duration';
            DecimalPlaces = 0 : 5;
            InitValue = 2;
        }
        field(5; "Seconds Between Auto Sync."; Decimal)
        {
            Caption = 'Seconds Between Auto Sync.';
            DecimalPlaces = 0 : 5;
            InitValue = 5;
        }
        field(6; "Last Read Token No."; Integer)
        {
            Caption = 'Last Read Token No.';
            TableRelation = "OM - Repository Log";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; "Assign Mods. before Check-in"; Boolean)
        {
            Caption = 'Assign Mods. before Check-in';
            InitValue = true;
        }
        field(9; "Delete Log when Processed"; Boolean)
        {
            Caption = 'Delete Log when Processed';
        }
        field(10; "Archive Objects"; Boolean)
        {
            Caption = 'Archive Objects';
            InitValue = true;
        }
        field(11; "Archive Projects"; Boolean)
        {
            Caption = 'Archive Projects';
            InitValue = true;
        }
        field(12; "Archive Transports"; Boolean)
        {
            Caption = 'Archive Transports';
            InitValue = true;
        }
        field(13; "Repository Path"; Text[100])
        {
            Caption = 'Repository Path';
        }
        field(14; "VSS IniFile"; Text[100])
        {
            Caption = 'VSS IniFile';
        }
        field(15; Username; Text[30])
        {
            Caption = 'Username';
        }
        field(16; Password; Text[30])
        {
            Caption = 'Password';
        }
        field(17; "Deleted Field 17"; Text[100])
        {
            Caption = 'Deleted Field 17';
        }
        field(19; "Synchronize Databases"; Boolean)
        {
            Caption = 'Synchronize Databases';
        }
        field(21; "Auto Export Projects"; Boolean)
        {
            Caption = 'Auto Export Projects';
            InitValue = true;
        }
        field(22; "Auto Export Transports"; Boolean)
        {
            Caption = 'Auto Export Transports';
            InitValue = true;
        }
        field(23; "Export Object Format"; Option)
        {
            Caption = 'Export Object Format';
            OptionCaption = 'FOB,FOB + TXT,TXT';
            OptionMembers = FOB,"FOB + TXT",TXT;
        }
        field(24; "Deleted Field 24"; Integer)
        {
            Caption = 'Deleted Field 24';
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

