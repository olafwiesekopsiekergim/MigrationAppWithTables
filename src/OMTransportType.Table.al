table 11102098 "OM - Transport Type"
{
    Caption = 'Transport Type';
    DataCaptionFields = "Code", Description;
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Search Description"; Code[100])
        {
            Caption = 'Search Description';
        }
        field(4; "Transport Flow Code"; Code[20])
        {
            Caption = 'Transport Flow Code';
            TableRelation = "OM - Flow".Code WHERE ("Table Name" = CONST (Transport));
        }
        field(5; "User Role 1"; Code[50])
        {
            Caption = 'User Role 1';
            TableRelation = "OM - User";
        }
        field(6; "User Role 2"; Code[50])
        {
            Caption = 'User Role 2';
            TableRelation = "OM - User";
        }
        field(7; "User Role 3"; Code[50])
        {
            Caption = 'User Role 3';
            TableRelation = "OM - User";
        }
        field(8; "User Role 4"; Code[50])
        {
            Caption = 'User Role 4';
            TableRelation = "OM - User";
        }
        field(9; "User Role 5"; Code[50])
        {
            Caption = 'User Role 5';
            TableRelation = "OM - User";
        }
        field(10; "Update Version List"; Boolean)
        {
            Caption = 'Update Version List';
            InitValue = true;
        }
        field(11; "Version List Id"; Text[30])
        {
            Caption = 'Version List Id';
        }
        field(12; "Export Path"; Text[250])
        {
            Caption = 'Export Path';
        }
        field(13; "Subfolder for Each Transport"; Boolean)
        {
            Caption = 'Subfolder for Each Transport';
            InitValue = true;
        }
        field(14; "Subfolder Name"; Text[30])
        {
            Caption = 'Subfolder Name';
            InitValue = '%1 %2%3';
        }
        field(15; "Create PDF File"; Boolean)
        {
            Caption = 'Create PDF File';
            InitValue = true;
        }
        field(16; "File Name PDF File"; Text[30])
        {
            Caption = 'File Name PDF File';
            InitValue = '%1 %2%3.pdf';
        }
        field(17; "Create FIB File"; Boolean)
        {
            Caption = 'Create FIB File';
            InitValue = true;
        }
        field(18; "File Name FIB File"; Text[30])
        {
            Caption = 'File Name FIB File';
            InitValue = '%1 %2%3.fib';
        }
        field(19; "Create FOB File"; Boolean)
        {
            Caption = 'Create FOB File';
        }
        field(20; "File Name FOB File"; Text[30])
        {
            Caption = 'File Name FOB File';
            InitValue = '%1 %2%3.fob';
        }
        field(21; "Create TXT File"; Boolean)
        {
            Caption = 'Create TXT File';
        }
        field(22; "File Name TXT File"; Text[30])
        {
            Caption = 'File Name TXT File';
            InitValue = '%1 %2%3.txt';
        }
        field(23; "Create FAB Files"; Boolean)
        {
            Caption = 'Create FAB Files';
        }
        field(24; "File Name FAB Definition File"; Text[30])
        {
            Caption = 'File Name FAB Definition File';
            InitValue = '%1 %2%3-definition.fab';
        }
        field(25; "File Name FAB Before File"; Text[30])
        {
            Caption = 'File Name FAB Before File';
            InitValue = '%1 %2%3-before.fab';
        }
        field(26; "File Name FAB After File"; Text[30])
        {
            Caption = 'File Name FAB After File';
            InitValue = '%1 %2%3-after.fab';
        }
        field(27; "Block Project at Transport"; Boolean)
        {
            Caption = 'Block Project at Transport';
        }
        field(28; "Block Transport at Transport"; Boolean)
        {
            Caption = 'Block Transport at Transport';
        }
        field(29; "Compile Obj. before Transport"; Boolean)
        {
            Caption = 'Compile Objects before Transport';
            InitValue = true;
        }
        field(30; "Include TXT-Objects in Tr."; Boolean)
        {
            Caption = 'Include TXT-Objects in Transport';
            InitValue = true;
        }
        field(31; "Deleted Field 31"; Boolean)
        {
            Caption = 'Deleted Field 31';
        }
        field(32; "Remove Modify Flag at Transp."; Boolean)
        {
            Caption = 'Remove Modify Flag at Transp.';
            InitValue = true;
        }
        field(33; "Nos. Format"; Code[20])
        {
            Caption = 'Nos. Format';
        }
        field(34; "Transport Description"; Text[100])
        {
            Caption = 'Transport Description';
        }
        field(35; "New Timestamp"; Option)
        {
            Caption = 'New Timestamp';
            OptionCaption = ' ,Moment of Transport,Define,Date of Transport';
            OptionMembers = " ","Moment of Transport",Define,"Date of Transport";
        }
        field(36; "Check Guidelines before Trans."; Option)
        {
            Caption = 'Check Guidelines before Trans.';
            OptionCaption = ' ,All Checks,Transport Checks';
            OptionMembers = " ","All Checks","Transport Checks";
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
    }

    fieldgroups
    {
    }
}

