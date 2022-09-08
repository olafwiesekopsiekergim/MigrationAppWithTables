table 11102035 "OM - Setup"
{
    Caption = 'Setup';
    DataPerCompany = false;

    fields
    {
        field(1; "Primary Key"; Code[50])
        {
            Caption = 'Primary Key';
        }
        field(2; Initialized; Boolean)
        {
            Caption = 'Initialized';
        }
        field(3; "Deleted Field 3"; Integer)
        {
            BlankZero = true;
            Caption = 'Deleted Field 3';
        }
        field(4; "Deleted Field 4"; Boolean)
        {
            Caption = 'Deleted Field 4';
        }
        field(5; "Deleted Field 5"; Integer)
        {
            Caption = 'Deleted Field 5';
        }
        field(6; "Deleted Field 6"; Boolean)
        {
            Caption = 'Deleted Field 6';
        }
        field(7; "Set Modify Flag to False"; Boolean)
        {
            Caption = 'Set Modify Flag to False';
        }
        field(8; "Shared Path"; Boolean)
        {
            Caption = 'Shared Path';
        }
        field(9; "Project Description"; Text[100])
        {
            Caption = 'Project Description';
        }
        field(10; "Transport Description"; Text[100])
        {
            Caption = 'Transport Description';
        }
        field(11; "Project Nos. Format"; Code[20])
        {
            Caption = 'Project Nos. Format';
        }
        field(12; "Database Code"; Code[20])
        {
            Caption = 'Database Code';
            TableRelation = "OM - NAV Database";
        }
        field(13; "Trace Modifications"; Boolean)
        {
            Caption = 'Trace Modifications';
        }
        field(14; "Process Mods. Interval"; Integer)
        {
            BlankZero = true;
            Caption = 'Process Modifications Interval (sec.)';
        }
        field(31; "Role Shortcut 1"; Code[20])
        {
            Caption = 'Role Shortcut 1';
            TableRelation = "OM - Role";
        }
        field(33; "Role Shortcut 2"; Code[20])
        {
            Caption = 'Role Shortcut 2';
            TableRelation = "OM - Role";
        }
        field(35; "Role Shortcut 3"; Code[20])
        {
            Caption = 'Role Shortcut 3';
            TableRelation = "OM - Role";
        }
        field(37; "Role Shortcut 4"; Code[20])
        {
            Caption = 'Role Shortcut 4';
            TableRelation = "OM - Role";
        }
        field(39; "Role Shortcut 5"; Code[20])
        {
            Caption = 'Role Shortcut 5';
            TableRelation = "OM - Role";
        }
        field(42; "Deleted Field 42"; Text[30])
        {
            Caption = 'Deleted Field 42';
        }
        field(43; "Deleted Field 43"; Text[30])
        {
            Caption = 'Deleted Field 43';
        }
        field(44; "Compare Tool"; Text[200])
        {
            Caption = 'Compare Tool';
        }
        field(45; "Working Directory"; Text[200])
        {
            Caption = 'Working Directory';
        }
        field(46; "Lock Object at Design"; Boolean)
        {
            Caption = 'Lock Object at Design';
        }
        field(47; "Deleted Field 47"; Option)
        {
            Caption = 'Deleted Field 47';
            OptionCaption = '0';
            OptionMembers = "0";
        }
        field(48; "Transport Nos. Format"; Code[20])
        {
            Caption = 'Transport Nos. Format';
        }
        field(50; "Deleted Field 50"; Option)
        {
            Caption = 'Deleted Field 50';
            OptionCaption = '1';
            OptionMembers = "1";
        }
        field(51; "Transport Import Folder"; Text[200])
        {
            Caption = 'Transport Import Folder';
        }
        field(52; "Transport Archive Folder"; Text[200])
        {
            Caption = 'Transport Archive Folder';
        }
        field(53; "Save C/AL at Modification"; Option)
        {
            Caption = 'Save C/AL at Modification';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(54; "Save C/AL at Assigning"; Option)
        {
            Caption = 'Save C/AL at Assigning';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(55; "Save C/AL at Locking"; Option)
        {
            Caption = 'Save C/AL at Locking';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(56; "Save C/AL at Unlocking"; Option)
        {
            Caption = 'Save C/AL at Unlocking';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(57; "Save C/AL after Transporting"; Option)
        {
            Caption = 'Save C/AL after Transporting';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(58; "Save C/AL before Import Tr."; Option)
        {
            Caption = 'Save C/AL before Import Transport';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(59; "Save C/AL after Import Tr."; Option)
        {
            Caption = 'Save C/AL after Import Transport';
            OptionCaption = 'No,If Changed,Yes';
            OptionMembers = No,"If Changed",Yes;
        }
        field(60; "Deleted Field 60"; Text[30])
        {
            Caption = 'Deleted Field 60';
        }
        field(61; "Confirm Changes at Imp. Tr."; Boolean)
        {
            Caption = 'Confirm Changes at Import Transport';
        }
        field(62; "Reset Project Status at Import"; Boolean)
        {
            Caption = 'Reset Project Status at Import Transport';
        }
        field(64; "Deleted Field 64"; Integer)
        {
            BlankZero = true;
            Caption = 'Deleted Field 64';
        }
        field(65; "Data Convert to Version No."; Integer)
        {
            Caption = 'Data Convert to Version No.';
        }
        field(67; "Deleted Field 67"; Option)
        {
            Caption = 'Deleted Field 67';
            OptionCaption = '1';
            OptionMembers = "1";
        }
        field(68; "Lock Object at Saving"; Boolean)
        {
            Caption = 'Lock Object at Saving';
        }
        field(69; "Deleted Field 69"; Option)
        {
            Caption = 'Deleted Field 69';
            OptionCaption = '1';
            OptionMembers = "1";
        }
        field(70; "Deleted Field 70"; Boolean)
        {
            Caption = 'Deleted Field 70';
        }
        field(71; "Deleted Field 71"; Boolean)
        {
            Caption = 'Deleted Field 71';
        }
        field(72; "Database Locked"; Boolean)
        {
            Caption = 'Database Locked';
        }
        field(73; "SQL Check Object Lock Type"; Option)
        {
            Caption = 'SQL Check Object Lock Type';
            OptionCaption = 'None,Error if Locked by Other,Error if Not Locked,Error';
            OptionMembers = "None","Error if Locked by Other","Error if Not Locked",Error;
        }
        field(74; "Deleted Field 74"; Integer)
        {
            Caption = 'Deleted Field 74';
        }
        field(75; "Skip SQL Trigger"; Boolean)
        {
            Caption = 'Skip SQL Trigger';
        }
        field(76; "Ch. for Untr. Pr. at Imp. Tr."; Boolean)
        {
            Caption = 'Check for Untransported Projects at Importing Transport';
        }
        field(77; "Group Mods. Period (sec.)"; Integer)
        {
            Caption = 'Group Modifications Period (sec.)';
        }
        field(78; "Block Project at Imp. Trans."; Option)
        {
            Caption = 'Block Project at Importing Transport';
            OptionCaption = ' ,No,Yes';
            OptionMembers = " ",No,Yes;
        }
        field(79; "Block Transport at Imp. Trans."; Option)
        {
            Caption = 'Block Transport at Importing Transport';
            OptionCaption = ' ,No,Yes';
            OptionMembers = " ",No,Yes;
        }
        field(80; "Branch Nos. Format"; Code[20])
        {
            Caption = 'Branch Nos. Format';
        }
        field(81; "Branch Description"; Text[100])
        {
            Caption = 'Branch Description';
        }
        field(82; "Deleted Field 82"; Boolean)
        {
            Caption = 'Deleted Field 82';
        }
        field(83; "Compile Objects after Imp. Tr."; Boolean)
        {
            Caption = 'Compile Objects after Import Transport';
        }
        field(84; "Deleted Field 84"; Boolean)
        {
            Caption = 'Deleted Field 84';
        }
        field(85; "Use Ind. Perm. in Actions"; Boolean)
        {
            Caption = 'Use Indirect Permissions when Executing Actions';
        }
        field(86; "C/AL Editor"; Text[200])
        {
            Caption = 'C/AL Editor';
        }
        field(88; "Merge Nos. Format"; Code[20])
        {
            Caption = 'Merge Nos. Format';
        }
        field(89; "Merge Description"; Text[100])
        {
            Caption = 'Merge Description';
        }
        field(90; "Default Project Type"; Code[20])
        {
            Caption = 'Default Project Type';
            TableRelation = "OM - Project Type";
        }
        field(91; "Default Transport Type"; Code[20])
        {
            Caption = 'Default Transport Type';
            TableRelation = "OM - Transport Type";
        }
        field(92; "Mail Type"; Option)
        {
            Caption = 'Mail Type';
            OptionCaption = 'Outlook,SMTP';
            OptionMembers = Outlook,SMTP;
        }
        field(93; "SMTP Server"; Text[30])
        {
            Caption = 'SMTP Server';
        }
        field(94; Authentication; Boolean)
        {
            Caption = 'Authentication';
        }
        field(95; "SMTP User"; Text[30])
        {
            Caption = 'SMTP User';
        }
        field(96; "SMTP Password"; Text[30])
        {
            Caption = 'SMTP Password';
        }
        field(97; "Deleted Field 79"; Boolean)
        {
            Caption = 'Deleted Field 79';
        }
        field(98; "Reset Tr. Status at Imp. Tr."; Boolean)
        {
            Caption = 'Reset Transport Status at Import Transport';
        }
        field(99; "Translation Tool Base Language"; Integer)
        {
            Caption = 'Translation Tool Base Language';
        }
        field(100; "Check Wrong Indent"; Boolean)
        {
            Caption = 'Check Wrong Indent';
        }
        field(101; "Check Wrong IF THEN Use"; Boolean)
        {
            Caption = 'Check Wrong IF THEN Use';
        }
        field(102; "Check Wrong Line Break"; Boolean)
        {
            Caption = 'Check Wrong Line Break';
        }
        field(103; "Check Missing Spaces"; Boolean)
        {
            Caption = 'Check Missing Spaces';
        }
        field(104; "Check Missing ;"; Boolean)
        {
            Caption = 'Check Missing ;';
        }
        field(105; "Check Unnecessary BEGIN END"; Boolean)
        {
            Caption = 'Check Unnecessary BEGIN END';
        }
        field(106; "Check = TRUE"; Boolean)
        {
            Caption = 'Check = TRUE';
        }
        field(107; "Check = FALSE"; Boolean)
        {
            Caption = 'Check = FALSE';
        }
        field(108; "Check Table Name in SETRANGE"; Boolean)
        {
            Caption = 'Check Table Name in SETRANGE';
        }
        field(109; "Check Redundant Table Name"; Boolean)
        {
            Caption = 'Check Redundant Table Name';
        }
        field(110; "Check Empty Lines"; Boolean)
        {
            Caption = 'Check Empty Lines';
        }
        field(111; "Check Redundant Spaces"; Boolean)
        {
            Caption = 'Check Redundant Spaces';
        }
        field(112; "Check Redundant ()"; Boolean)
        {
            Caption = 'Check Redundant ()';
        }
        field(113; "Check FIND(-)"; Boolean)
        {
            Caption = 'Check FIND(-)';
        }
        field(114; "Check Double Variable Names"; Boolean)
        {
            Caption = 'Check Double Variable Names';
        }
        field(115; "Check Unnecessary Properties T"; Boolean)
        {
            Caption = 'Check Unnecessary Properties Table';
        }
        field(116; "Check TODO Comment"; Boolean)
        {
            Caption = 'Check TODO Comment';
        }
        field(117; "Check Text in Code"; Boolean)
        {
            Caption = 'Check Text in Code';
        }
        field(118; "Check Project Tag Present"; Boolean)
        {
            Caption = 'Check Project Tag Present';
        }
        field(119; "Check Wrong SETCURRENTKEY"; Boolean)
        {
            Caption = 'Check Wrong SETCURRENTKEY';
        }
        field(120; "Check Missing Image"; Boolean)
        {
            Caption = 'Check Missing Image';
        }
        field(121; "Check IS SERVICETIER"; Boolean)
        {
            Caption = 'Check ISSERVICETIER';
        }
        field(122; "Check Empty Action"; Boolean)
        {
            Caption = 'Check Empty Action';
        }
        field(123; "Deleted Field 123"; Boolean)
        {
            Caption = 'Deleted Field 123';
        }
        field(124; "Deleted Field 124"; Boolean)
        {
            Caption = 'Deleted Field 124';
        }
        field(125; "Deleted Field 125"; Boolean)
        {
            Caption = 'Deleted Field 125';
        }
        field(126; "Deleted Field 126"; Boolean)
        {
            Caption = 'Deleted Field 126';
        }
        field(127; "Deleted Field 127"; Boolean)
        {
            Caption = 'Deleted Field 127';
        }
        field(128; "Deleted Field 128"; Boolean)
        {
            Caption = 'Deleted Field 128';
        }
        field(129; "Deleted Field 129"; Boolean)
        {
            Caption = 'Deleted Field 129';
        }
        field(130; "Deleted Field 130"; Boolean)
        {
            Caption = 'Deleted Field 130';
        }
        field(131; "Deleted Field 131"; Boolean)
        {
            Caption = 'Deleted Field 131';
        }
        field(132; "Check Double Access Keys"; Boolean)
        {
            Caption = 'Check Double Access Keys';
        }
        field(133; "Check Double Shortcut Keys"; Boolean)
        {
            Caption = 'Check Double Shortcut Keys';
        }
        field(134; "Check Lowercase Shortcut Keys"; Boolean)
        {
            Caption = 'Check Lowercase Shortcut Keys';
        }
        field(135; "Deleted Field 135"; Boolean)
        {
            Caption = 'Deleted Field 135';
        }
        field(136; "Deleted Field 136"; Boolean)
        {
            Caption = 'Deleted Field 136';
        }
        field(137; "Deleted Field 137"; Boolean)
        {
            Caption = 'Deleted Field 137';
        }
        field(138; "Deleted Field 138"; Boolean)
        {
            Caption = 'Deleted Field 138';
        }
        field(139; "Check Unnecessary Properties L"; Boolean)
        {
            Caption = 'Check Unnecessary Properties';
        }
        field(140; "Check Usage Not Exis. Keys"; Boolean)
        {
            Caption = 'Check Usage Not Existing Keys';
        }
        field(141; "Deleted Field 141"; Boolean)
        {
            Caption = 'Deleted Field 141';
            InitValue = true;
        }
        field(150; "Check Key Fields Int. or Code"; Boolean)
        {
            Caption = 'Check Key Fields are Integer, Code, Option or Date';
        }
        field(151; "Check NotBlank on Key Fields"; Boolean)
        {
            Caption = 'Check NotBlank on Key Fields';
        }
        field(152; "Check Testfield on Key Fields"; Boolean)
        {
            Caption = 'Check Testfield on Key Fields';
        }
        field(153; "Check Flowfields Not Editable"; Boolean)
        {
            Caption = 'Check Flowfields Not Editable';
        }
        field(154; "Check No. of Options in Field"; Boolean)
        {
            Caption = 'Check No. of Options in Field';
        }
        field(155; "Deleted Field 155"; Boolean)
        {
            Caption = 'Deleted Field 155';
        }
        field(156; "Check Pr. Key in Relation"; Boolean)
        {
            Caption = 'Check Primary Key in Table Relation';
        }
        field(157; "Check Field Types of Relations"; Boolean)
        {
            Caption = 'Check Field Types in Relations';
            InitValue = true;
        }
        field(158; "Check Broken Lines"; Boolean)
        {
            Caption = 'Check Broken Lines';
        }
        field(159; "Check Missing <> in CALCDATE"; Boolean)
        {
            Caption = 'Check Missing <> in CALCDATE';
            InitValue = true;
        }
        field(160; "Check tmp in Name Temp Rec."; Boolean)
        {
            Caption = 'Check ''tmp'' in Name of Temporary Records';
        }
        field(161; "Check Variable Names"; Boolean)
        {
            Caption = 'Check Variable Names';
        }
        field(162; "Check Object Names"; Boolean)
        {
            Caption = 'Check Object Names';
        }
        field(163; "Check Field Names"; Boolean)
        {
            Caption = 'Check Field Names';
        }
        field(164; "Check Reserved Names"; Boolean)
        {
            Caption = 'Check Reserved Names';
        }
        field(165; "Check MARK"; Boolean)
        {
            Caption = 'Check MARK';
        }
        field(166; "Check Function Names"; Boolean)
        {
            Caption = 'Check Function Names';
        }
        field(167; "Check PAGE.RUN(Integer)"; Boolean)
        {
            Caption = 'Check PAGE.RUN(Integer)';
        }
        field(168; "Check Double Captions"; Boolean)
        {
            Caption = 'Check Double Captions';
        }
        field(170; "Check Missing Captions"; Boolean)
        {
            Caption = 'Check Missing Captions';
        }
        field(171; "Mandatory Languages"; Code[100])
        {
            Caption = 'Mandatory Languages';
        }
        field(172; "Space after Comma"; Option)
        {
            Caption = 'Space after Comma';
            OptionCaption = ' ,Mandatory,Prohibited';
            OptionMembers = " ",Mandatory,Prohibited;
        }
        field(173; "Check Missing Relations"; Boolean)
        {
            Caption = 'Check Missing Relations';
        }
        field(174; "Check Assignments"; Boolean)
        {
            Caption = 'Check Assignments';
        }
        field(175; "Check Delete Relating Table"; Boolean)
        {
            Caption = 'Check Delete Relating Table';
        }
        field(176; "Check Constants in Relations"; Boolean)
        {
            Caption = 'Check Constants in Relations';
        }
        field(177; "Check Code in OnLookup"; Boolean)
        {
            Caption = 'Check Code in OnLookup';
        }
        field(178; "Check Comments with Brackets"; Boolean)
        {
            Caption = 'Check Comments with Brackets';
        }
        field(179; "Check Transferfields"; Boolean)
        {
            Caption = 'Check Transferfields';
        }
        field(180; "Check Objects in License"; Boolean)
        {
            Caption = 'Check Objects in License';
        }
        field(181; "Check Indirect Permissions"; Boolean)
        {
            Caption = 'Check Indirect Permissions';
        }
        field(200; "Default UID Offset"; Integer)
        {
            BlankZero = true;
            Caption = 'Default UID Offset';
        }
        field(201; "Update Where Used"; Option)
        {
            Caption = 'Update Where Used';
            OptionCaption = 'Confirm,Always,Never';
            OptionMembers = Confirm,Always,Never;
        }
        field(202; "Critical Guideline Checks"; Text[200])
        {
            Caption = 'Critical Guideline Checks';
        }
        field(203; "Compiler (Finsql on Server)"; Text[200])
        {
            Caption = 'Compiler (Finsql on Server)';
        }
        field(204; "Designer (Finsql on Client)"; Text[200])
        {
            Caption = 'Designer (Finsql on Client)';
        }
        field(205; "Lock Marking"; Boolean)
        {
            Caption = 'Lock Marking';
        }
        field(206; "Marking User"; Code[50])
        {
            Caption = 'Marking User';
        }
        field(207; "Split Backup Files"; Boolean)
        {
            Caption = 'Split Backup Files';
        }
        field(250; "Zup File Id"; Text[30])
        {
            Caption = 'Zup File Id';
        }
        field(251; Editor; Option)
        {
            Caption = 'Editor';
            OptionCaption = 'Object Manager,Navgate';
            OptionMembers = "Object Manager",Navgate;
        }
        field(252; "Project Tag Doc. Trigger"; Text[100])
        {
            Caption = 'Project Tag Doc. Trigger';
            InitValue = '<Year4><Month,2><Day,2> %1 %2: %3';
        }
        field(253; "Modification Tag"; Text[100])
        {
            Caption = 'Modification Tag';
        }
        field(254; "Modification Start Tag"; Text[100])
        {
            Caption = 'Modification Start Tag';
        }
        field(255; "Modification End Tag"; Text[100])
        {
            Caption = 'Modification End Tag';
        }
        field(256; "Snippet Folder"; Text[100])
        {
            Caption = 'Snippet Folder';
        }
        field(257; "Specification File"; Text[100])
        {
            Caption = 'Specifications File';
        }
        field(258; "Object Cache (MB)"; Integer)
        {
            Caption = 'Object Cache (MB)';
        }
        field(259; "SMTP Port"; Integer)
        {
            Caption = 'SMTP Port';
        }
        field(260; "SMTP Enable SSL"; Boolean)
        {
            Caption = 'SMTP Enable SSL';
        }
        field(261; "Object File Name Format"; Text[50])
        {
            Caption = 'Object File Name Format';
        }
        field(262; "Command Line Parameters"; Text[100])
        {
            Caption = 'Command Line Parameters';
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

