table 5309003 "Data Format"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #IFW18.00:T100 10.08.15 DEMSR.BKR
    //   create module cc|interface

    Caption = 'Data Format';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(3; "Data Format"; Option)
        {
            Caption = 'Data Format';
            OptionCaption = ' ,Text,,CSV,,,,,Custom';
            OptionMembers = " ",Text,XML,CSV,,,,,Custom;
        }
        field(4; "Endpoint / Filename"; Text[250])
        {
            Caption = 'Endpoint / Filename';
        }
        field(5; Delimiter; Option)
        {
            Caption = 'Delimiter';
            OptionCaption = ' ,Tab,Semicolon,Comma,Space,Other';
            OptionMembers = " ",Tab,Semicolon,Comma,Space,Other;
        }
        field(6; "Other Delimiter Character"; Text[1])
        {
            Caption = 'Other Delimiter Character';
        }
        field(7; Encoding; Option)
        {
            Caption = 'Encoding';
            OptionCaption = ' ,MsDos,UTF-8,UTF-16,Windows';
            OptionMembers = " ",MsDos,"UTF-8","UTF-16",Windows;
        }
        field(8; Transfer; Option)
        {
            OptionCaption = ' ,File,Web Service,FTP';
            OptionMembers = " ",File,"Web Service",FTP;
        }
        field(9; "Contains Field Names"; Boolean)
        {
            Caption = 'Contains Field Names';
        }
        field(10; "Source Folder"; Text[30])
        {
            Caption = 'Source Folder';
        }
        field(11; "Target Folder"; Text[30])
        {
            Caption = 'Target Folder';
        }
        field(12; "Delete File Imported File"; Boolean)
        {
            Caption = 'Delete File Imported File';
        }
        field(13; "Custom Format Codeunit ID"; Integer)
        {
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Codeunit));
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

