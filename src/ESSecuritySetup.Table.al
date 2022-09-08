table 14123521 "ES Security Setup"
{
    Caption = 'Security Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Table Level Security"; Boolean)
        {
            Caption = 'Table Level Security';
        }
        field(3; "Form Level Security"; Boolean)
        {
            Caption = 'Form Level Security';
            InitValue = true;
        }
        field(4; "Report Level Security"; Boolean)
        {
            Caption = 'Report Level Security';
            InitValue = true;
        }
        field(5; "Dataport Level Security"; Boolean)
        {
            Caption = 'Dataport Level Security';
            InitValue = true;
        }
        field(6; "Codeunit Level Security"; Boolean)
        {
            Caption = 'Codeunit Level Security';
            InitValue = true;
        }
        field(7; "XMLPort Level Security"; Boolean)
        {
            Caption = 'XMLPort Level Security';
            InitValue = true;
        }
        field(8; "Page Level Security"; Boolean)
        {
            Caption = 'Page Level Security';
            InitValue = true;
        }
        field(9; "All Free Tables Role ID"; Code[20])
        {
            Caption = 'All Free Tables Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "All Free Forms Role ID"; Code[20])
        {
            Caption = 'All Free Forms Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; "All Free Reports Role ID"; Code[20])
        {
            Caption = 'All Free Reports Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(12; "All Free Dataports Role ID"; Code[20])
        {
            Caption = 'All Free Dataports Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(13; "All Free Codeunits Role ID"; Code[20])
        {
            Caption = 'All Free Codeunits Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(14; "All Free XMLPorts Role ID"; Code[20])
        {
            Caption = 'All Free XMLPorts Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(15; "All Free Pages Role ID"; Code[20])
        {
            Caption = 'All Free Pages Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(16; "ALL Role ID"; Code[20])
        {
            Caption = 'ALL Permission Set ID';
            TableRelation = "Permission Set";
        }
        field(17; "SUPER Role ID"; Code[20])
        {
            Caption = 'SUPER Permission Set ID';
            InitValue = 'SUPER';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(18; "SUPER (DATA) Role ID"; Code[20])
        {
            Caption = 'SUPER (DATA) Permission Set ID';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(19; "Source Code File Name"; Text[250])
        {
            Caption = 'Source Code File Name';
        }
        field(20; "Test Mode"; Boolean)
        {
            Caption = 'Test Mode';
        }
        field(21; "Import Source Code"; Boolean)
        {
            Caption = 'Import Source Code';
        }
        field(22; "Restore Point Nos."; Code[20])
        {
            Caption = 'Restore Point Nos.';
            TableRelation = "No. Series";
        }
        field(23; "Recording Nos."; Code[20])
        {
            Caption = 'Recording Nos.';
            TableRelation = "No. Series";
        }
        field(24; "All Limited Tables Role ID"; Code[20])
        {
            Caption = 'All Limited Tables Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(25; "All Limited Forms Role ID"; Code[20])
        {
            Caption = 'All Limited Forms Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(26; "All Limited Reports Role ID"; Code[20])
        {
            Caption = 'All Limited Reports Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(27; "All Limited Dataports Role ID"; Code[20])
        {
            Caption = 'All Limited Dataports Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(28; "All Limited Codeunits Role ID"; Code[20])
        {
            Caption = 'All Limited Codeunits Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(29; "All Limited XMLPorts Role ID"; Code[20])
        {
            Caption = 'All Limited XMLPorts Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(30; "All Limited Pages Role ID"; Code[20])
        {
            Caption = 'All Limited Pages Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(31; "BASIC Role ID"; Code[20])
        {
            Caption = 'BASIC Permission Set ID';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(32; "Default Restore Point FileName"; Text[250])
        {
            Caption = 'Default Restore Point File Name';
        }
        field(33; "Default Recording File Name"; Text[250])
        {
            Caption = 'Default Recording File Name';
        }
        field(35; "Default Role Detail File Name"; Text[250])
        {
            Caption = 'Default Permission Set Detail File Name';
        }
        field(36; "Extend Insert Permissions"; Boolean)
        {
            Caption = 'Extend Insert Permissions';
            InitValue = true;
        }
        field(37; "Add Related Permissions"; Boolean)
        {
            Caption = 'Add Related Permissions';
            InitValue = true;
        }
        field(38; "Role for Both Clients"; Boolean)
        {
            Caption = 'Permission Set for Both Clients';
            InitValue = true;
        }
        field(39; "Object Range Filter"; Text[250])
        {
            Caption = 'Object Range Filter';
            InitValue = '..49999|99000000..99009999';
        }
        field(40; "Demo in CRONUS"; Boolean)
        {
            Caption = 'Demo in CRONUS';
        }
        field(41; "Source Code Analyzer Licensed"; Boolean)
        {
            Caption = 'Source Code Analyzer Licensed';
        }
        field(42; "Permission Recorder Licensed"; Boolean)
        {
            Caption = 'Permission Recorder Licensed';
        }
        field(43; "Include All Summary Perms."; Boolean)
        {
            Caption = 'Include All Summary Permissions';
        }
        field(44; "TableData Read Perm. Default"; Option)
        {
            Caption = 'TableData Read Perm. Default';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(45; "TableData Insert Perm. Default"; Option)
        {
            Caption = 'TableData Insert Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(46; "TableData Modify Perm. Default"; Option)
        {
            Caption = 'TableData Modify Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(47; "TableData Delete Perm. Default"; Option)
        {
            Caption = 'TableData Delete Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(48; "TableData Execute Perm Default"; Option)
        {
            Caption = 'TableData Execute Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(49; "Object Read Perm. Default"; Option)
        {
            Caption = 'Object Read Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(50; "Object Insert Perm. Default"; Option)
        {
            Caption = 'Object Insert Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(51; "Object Modify Perm. Default"; Option)
        {
            Caption = 'Object Modify Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(52; "Object Delete Perm. Default"; Option)
        {
            Caption = 'Object Delete Perm. Default';
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(53; "Object Execute Perm. Default"; Option)
        {
            Caption = 'Object Execute Perm. Default';
            InitValue = Yes;
            OptionCaption = ' ,Yes,Indirect';
            OptionMembers = " ",Yes,Indirect;
        }
        field(54; "Use Indirect for FlowFields"; Boolean)
        {
            Caption = 'Use Indirect for FlowFields';
            InitValue = true;
        }
        field(55; "Lines to Match in Compare"; Integer)
        {
            Caption = 'Lines to Match in Compare';
            InitValue = 1;
            MaxValue = 10;
            MinValue = 1;
        }
        field(56; "Lines to Include in Log"; Integer)
        {
            Caption = 'Lines to Include in Log';
            InitValue = 2;
            MaxValue = 10;
            MinValue = 0;
        }
        field(57; "Include Objs. in Restore Point"; Boolean)
        {
            Caption = 'Include Objects in Restore Point';
        }
        field(58; "Timer Update Interval"; Integer)
        {
            Caption = 'Timer Update Interval';
            InitValue = 60;
            MaxValue = 300;
            MinValue = 0;
        }
        field(59; "Add All Role Builder Perms."; Boolean)
        {
            Caption = 'Add All Builder Permissions';
            InitValue = true;
        }
        field(60; "Add All Recording Permissions"; Boolean)
        {
            Caption = 'Add All Recording Permissions';
            InitValue = true;
        }
        field(61; "Limit All Tables"; Boolean)
        {
            Caption = 'Limit All Tables';
        }
        field(62; "Limit All Forms"; Boolean)
        {
            Caption = 'Limit All Forms';
        }
        field(63; "Limit All Reports"; Boolean)
        {
            Caption = 'Limit All Reports';
            InitValue = true;
        }
        field(64; "Limit All Dataports"; Boolean)
        {
            Caption = 'Limit All Dataports';
            InitValue = true;
        }
        field(65; "Limit All Codeunits"; Boolean)
        {
            Caption = 'Limit All Codeunits';
        }
        field(66; "Limit All XMLPorts"; Boolean)
        {
            Caption = 'Limit All XMLPorts';
            InitValue = true;
        }
        field(67; "Limit All Pages"; Boolean)
        {
            Caption = 'Limit All Pages';
        }
        field(68; "SUPER (NAVIPANE) Role ID"; Code[20])
        {
            Caption = 'SUPER (NAVIPANE) Permission Set ID';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(69; "Special 1 Role ID"; Code[20])
        {
            Caption = 'Special 1 Permission Set ID';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(70; "Special 2 Role ID"; Code[20])
        {
            Caption = 'Special 2 Permission Set ID';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(71; "Special 3 Role ID"; Code[20])
        {
            Caption = 'Special 3 Permission Set ID';
            TableRelation = "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(72; "Add History and Security Perm."; Boolean)
        {
            Caption = 'Add History and Security Permissions';
        }
        field(73; "Extend Insert to Delete"; Boolean)
        {
            Caption = 'Extend Insert to Delete';
        }
        field(74; "Extend Insert on Limited Lic."; Boolean)
        {
            Caption = 'Extend Insert on Limited Lic.';
            InitValue = true;
        }
        field(75; "Publish Allowed"; Boolean)
        {
            Caption = 'Publish Allowed';
        }
        field(76; "ALL Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("ALL Role ID")));
            Caption = 'ALL Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(77; "SUPER Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("SUPER Role ID")));
            Caption = 'SUPER Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(78; "SUPER (DATA) Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("SUPER (DATA) Role ID")));
            Caption = 'SUPER (DATA) Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(79; "BASIC Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("BASIC Role ID")));
            Caption = 'BASIC Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "SUPER (NAVIPANE) Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("SUPER (NAVIPANE) Role ID")));
            Caption = 'SUPER (NAVIPANE) Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Special 1 Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("Special 1 Role ID")));
            Caption = 'Special 1 Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(82; "Special 2 Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("Special 2 Role ID")));
            Caption = 'Special 2 Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "Special 3 Role Exists"; Boolean)
        {
            CalcFormula = Exist ("Permission Set" WHERE ("Role ID" = FIELD ("Special 3 Role ID")));
            Caption = 'Special 3 Permission Set Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(84; "Only Recording Allowed"; Boolean)
        {
            Caption = 'Only Recording Allowed';
        }
        field(85; "Use Limited License Permission"; Boolean)
        {
            Caption = 'Use Limited License Permission';
            InitValue = true;
        }
        field(86; "Create Variables"; Boolean)
        {
            Caption = 'Create Variables';
        }
        field(87; "Allow 0 Permission"; Boolean)
        {
            Caption = 'Allow 0 Permission';
        }
        field(88; "Allow Blank Company"; Boolean)
        {
            Caption = 'Allow Blank Company';
        }
        field(89; "Maximum Lines to Search"; Integer)
        {
            Caption = 'Maximum Lines to Search';
            InitValue = 200;
        }
        field(90; "Add Execute to FactBox on Page"; Boolean)
        {
            Caption = 'Add Execute to FactBox on Page';
            InitValue = true;
        }
        field(91; "Publish Allowed Company Name"; Text[30])
        {
            Caption = 'Publish Allowed Company Name';
            TableRelation = Company;
        }
        field(92; "Recording Company Identifier"; Code[5])
        {
            Caption = 'Recording Company Identifier';
        }
        field(93; "Keep Imported SQL Trace Data"; Boolean)
        {
            Caption = 'Keep Imported SQL Trace Data';
        }
        field(94; "Manual Update of Summary Perm."; Boolean)
        {
            Caption = 'Manual Update of Summary Permissions';
        }
        field(95; "Query Level Security"; Boolean)
        {
            Caption = 'Query Level Security';
            InitValue = true;
        }
        field(96; "All Free Queries Role ID"; Code[20])
        {
            Caption = 'All Free Queries Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(97; "All Limited Queries Role ID"; Code[20])
        {
            Caption = 'All Limited Queries Permission Set ID';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(98; "Limit All Queries"; Boolean)
        {
            Caption = 'Limit All Queries';
        }
        field(99; "Update Security Setup"; Boolean)
        {
            Caption = 'Update Security Setup';
        }
        field(100; "Create No. Series"; Boolean)
        {
            Caption = 'Create No. Series';
        }
        field(101; "Create Profile"; Boolean)
        {
            Caption = 'Create Profile';
        }
        field(102; "Create Rest Point Live2EasySec"; Boolean)
        {
            Caption = 'Create Restore Point of Live -> Easy Security';
        }
        field(103; "Create Company Groups"; Boolean)
        {
            Caption = 'Create Company Groups';
        }
        field(104; "Update Logins"; Boolean)
        {
            Caption = 'Update Logins';
        }
        field(105; "Update Limited License Perms."; Boolean)
        {
            Caption = 'Update Limited License Permissions';
        }
        field(106; "Get Relations from Source Code"; Boolean)
        {
            Caption = 'Get Relations from Source Code';
        }
        field(107; "Create Role Det from All Roles"; Boolean)
        {
            Caption = 'Create Permission Set Details from All Permission Sets';
        }
        field(108; "Test for <blank> records"; Boolean)
        {
            Caption = 'Test for <blank> records';
        }
        field(109; "Test for UnrelDatabaseAccCtrls"; Boolean)
        {
            Caption = 'Test for Unrelated Database Access Controls';
        }
        field(110; "Test for Unrel.WindowsAccCtrls"; Boolean)
        {
            Caption = 'Test for Unrelated User Access Controls';
        }
        field(111; "Test for Unrelated Role Perms"; Boolean)
        {
            Caption = 'Test for Unrelated Permissions';
        }
        field(112; "Test for Old Object Perms"; Boolean)
        {
            Caption = 'Test for Old Object Permissions';
        }
        field(113; "Setup Not Complete"; Boolean)
        {
            Caption = 'Setup Not Complete';
            InitValue = true;
        }
        field(114; "Last Restore Point No."; Code[20])
        {
            Caption = 'Last Restore Point No.';
            InitValue = 'RSP00000';
        }
        field(115; "Last Recording No."; Code[20])
        {
            Caption = 'Last Recording No.';
            InitValue = 'REC00000';
        }
        field(116; "No Parent Perm. in Restore Pnt"; Boolean)
        {
            Caption = 'No Parent Permissions in Restore Point';
        }
        field(117; "Create SQL Object Names"; Boolean)
        {
            Caption = 'Create SQL Object Names';
        }
        field(118; "No. of Restore Points to Keep"; Integer)
        {
            Caption = 'No. of Restore Points to Keep';
            InitValue = 20;
        }
        field(119; "Optimized Publishing"; Boolean)
        {
            Caption = 'Optimized Publishing';
            InitValue = true;
        }
        field(120; "Default Role Group File Name"; Text[250])
        {
            Caption = 'Default Permission Group File Name';
        }
        field(121; "Do Not Compress if SUPER"; Boolean)
        {
            Caption = 'Do Not Compress if SUPER';
        }
        field(122; "Use Complete User ID"; Boolean)
        {
            Caption = 'Use Complete User ID';
            InitValue = true;
        }
        field(123; "Job Queue Code"; Code[10])
        {
            Caption = 'Job Queue Code';
            TableRelation = "Job Queue";
        }
        field(124; "Data Role ID (Quick Security)"; Code[20])
        {
            Caption = 'Data Permission Set ID (Quick Security)';
            InitValue = 'ES_QS_DATA';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(125; "Data Read Role ID (Quick Sec.)"; Code[20])
        {
            Caption = 'Data Read Permission Set ID (Quick Security)';
            InitValue = 'ES_QS_DATA_READ';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(126; "Data Super Role ID (Quick Sec)"; Code[20])
        {
            Caption = 'Data Super Permission Set ID (Quick Security)';
            InitValue = 'ES_QS_DATA_SUPER';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(127; "Object Role ID (Quick Sec.)"; Code[20])
        {
            Caption = 'Object Permission Set ID (Quick Security)';
            InitValue = 'ES_QS_OBJECTS';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(128; "Login Role ID (Quick Security)"; Code[20])
        {
            Caption = 'Login Permission Set ID (Quick Security)';
            InitValue = 'ES_QS_LOGIN';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(129; "All Free Objects Role ID"; Code[20])
        {
            Caption = 'All Free Objects Permission Set ID';
            InitValue = 'ES_TECH_ALLOBJFREE';
            TableRelation = "ES Role";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(130; "Use User Name instead of SID"; Boolean)
        {
            Caption = 'Use User Name instead of User Security ID';
            InitValue = true;
        }
        field(131; "Remove Specific Table Perm."; Boolean)
        {
            Caption = 'Remove Specific Table Permissions';
            InitValue = true;
        }
        field(132; "Direct Login Integration"; Boolean)
        {
            Caption = 'Direct Login Integration';
        }
        field(133; "Direct Role Integration"; Boolean)
        {
            Caption = 'Direct Permission Set Integration';
        }
        field(134; "Direct Int. No Restore Point"; Boolean)
        {
            Caption = 'Direct Int. No Restore Point';
        }
        field(135; "Created By User"; Code[20])
        {
            Caption = 'Created By User';
            Editable = false;
        }
        field(136; "Created Date Time"; DateTime)
        {
            Caption = 'Created Date Time';
            Editable = false;
        }
        field(137; "No Sec. Filter in Summary Perm"; Boolean)
        {
            Caption = 'No Security Filter in Summary Permissions';
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

