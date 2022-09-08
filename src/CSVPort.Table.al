table 5157805 "CSV Port"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'CSV Port';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; Direction; Option)
        {
            Caption = 'Direction';
            OptionCaption = 'Import,Export';
            OptionMembers = Import,Export;
        }
        field(4; Encoding; Option)
        {
            Caption = 'Text Format external File';
            OptionCaption = 'Navision,Windows';
            OptionMembers = ASCII,ANSI;
        }
        field(5; "Format Date"; Text[40])
        {
            Caption = 'Date Format';
        }
        field(6; "Format Decimals"; Text[40])
        {
            Caption = 'Decimals Format';
        }
        field(7; "File Name"; Text[250])
        {
            Caption = 'Filename';
        }
        field(9; Separator; Code[10])
        {
            Caption = 'Separator';
            InitValue = ';';
        }
        field(10; "Table No."; Integer)
        {
            Caption = 'Table';
        }
        field(11; "Table Caption"; Text[50])
        {
            Caption = 'Table Caption';
            Editable = false;
        }
        field(12; BoolFormat; Option)
        {
            Caption = 'Format Bool. Fields';
            OptionCaption = 'Ja/Nein,Yes/No,Wahr/Falsch,True/False,0/1';
            OptionMembers = "Ja/Nein","Yes/No","Wahr/Falsch","True/False","0/1";
        }
        field(13; Amounts; Option)
        {
            Caption = 'Amounts';
            OptionCaption = 'As Saved,Absolute,Change Sign';
            OptionMembers = AsSaved,Absolute,Invert;
        }
        field(14; OnFoundSkip; Boolean)
        {
            Caption = 'Skip Existing Records';
            Description = 'csv2.0';
        }
        field(15; LineLen; Integer)
        {
            Caption = 'Length of Line';
            Description = 'csv2.0';
            MaxValue = 1024;
            MinValue = 0;
        }
        field(18; Delimiter; Option)
        {
            Caption = 'Delimiter';
            OptionCaption = '<none>," (double),'' (single)';
            OptionMembers = "none",double,single;
        }
        field(19; ExportFieldNames; Boolean)
        {
            Caption = 'Export Field Names';
        }
        field(20; Zero2Text; Boolean)
        {
            Caption = 'Zero as Empty String';
        }
        field(21; "Trigger"; Boolean)
        {
            Caption = 'Execute OnModify/OnInsertTriggers';
            InitValue = true;
        }
        field(24; SkipLines; Integer)
        {
            Caption = 'Skip Lines';
        }
        field(25; BoolCase; Option)
        {
            Caption = 'Bool. Fields Case';
            OptionCaption = 'lower,upper,mixed';
            OptionMembers = Lower,Upper,Mixed;
        }
        field(26; TextCase; Option)
        {
            Caption = 'Case of Text Fields';
            OptionCaption = 'as saved,lowercase,uppercase';
            OptionMembers = "as saved",lower,upper;
        }
        field(49; KeyString; Text[250])
        {
            Caption = 'Sort By Key';
            Editable = false;
        }
        field(50; KeyIndex; Integer)
        {
            Caption = 'KeyIndex';
        }
        field(51; "Asc./Desc."; Option)
        {
            Caption = 'Asc./Desc.';
            OptionCaption = 'ascending,descending';
            OptionMembers = asc,desc;
        }
        field(54; Logfile; Boolean)
        {
            Caption = 'Update Logfile';
        }
        field(60; DropLines; Integer)
        {
            Caption = 'Drop Lines';
        }
        field(61; "Delete LF without CR in File"; Boolean)
        {
            Caption = 'Delete <LF> without <CR> in File';
        }
        field(62; "Delete CRLF within Delimiter"; Boolean)
        {
            Caption = 'Delete <CR><LF> within Delimiter in File';
        }
        field(138; BankImport; Boolean)
        {
            Caption = 'BankImport';
        }
        field(139; Avis; Boolean)
        {
            Caption = 'Remittance Advice';
        }
        field(140; "Delete Import File"; Option)
        {
            Caption = 'Delete Import File';
            OptionCaption = 'Ask,Yes,No,Backup';
            OptionMembers = Ask,Yes,No,Backup;
        }
        field(141; DecimalSep; Text[1])
        {
            Caption = 'Decimal Separator';
            InitValue = ',';
        }
        field(142; ThousandSep; Text[1])
        {
            Caption = 'Thousands Separator';
            InitValue = '.';
        }
        field(143; FixCol; Boolean)
        {
            Caption = 'Fixed Col. Pos.';
            Description = 'FixCol';
        }
        field(144; XML; Boolean)
        {
            Caption = 'XML';
            Description = 'csv2.0';
        }
        field(145; LogLastOnly; Boolean)
        {
            Caption = 'Log the last import/export only.';
            Description = 'csv2.0';
        }
        field(146; FilterStr; Text[30])
        {
            Caption = 'Filterstring';
        }
        field(147; "Filter As Exclude"; Boolean)
        {
            Caption = 'Use Filter to exclude';
        }
        field(148; "OnValidate-Trigger"; Boolean)
        {
            Caption = 'Execute OnValidate-Triggers';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

