table 5103604 "Workflow Setup"
{
    // WF0027  Field Security Ranking.
    // WF0037  Send Message Buffer periodically.
    // WF0040  HTML formatted SMTP E-Mail Notification.
    // WF0067  Delete External Documents upon Master Document deletion.
    // WF0101  Workflow Task Log.
    // WF0149  Possible Copy Recipient (CC) for Task E-Mails.
    // WF0150  Change field length.
    // 
    // WF3.00.04:
    // ----------
    // WF0177  New setup fields for task run command selection in Workflow Portal. New field "Dynamics NAV Version".
    // 
    // WF3.01:
    // -------
    // WF0201  New fields for Workflow Portal hyperlink in E-Mails.
    // WF0205  New reminder field for Job Queue Integration.
    // 
    // WF3.01.01:
    // ----------
    // WF0237  Initialization extended.
    // WFNAV7  Update to NAV 2013.
    //         Classic Client functionality removed (fields 130 "Dynamics NAV Version", 131 "Task Run Command (Classic)").
    //         New fields 108 "SMTP Server Port", 109 "Secure Connection".
    // 
    // WF3.01.04:
    // ----------
    // WF0264  Updated Initialization.
    // 
    // WF3.02:
    // -------
    // WF0229  New Visio Integration:
    //         Removed following fields:
    //           - 30 "Users Stencil Filename"
    //           - 31 "Teams Stencil Filename"
    //           - 34 "Tables Stencil Filename"
    //           - 35 "Pages Stencil Filename"
    //           - 36 "Reports Stencil Filename"
    //         Changed Caption in field 19 "Workflow Stencil Filename"
    //           from "DEU=Workflow Schablone Dateiname;ENU=Workflow Stencil Filename;ENG=Workflow Stencil Filename"
    //           to "DEU=Workflow Master Schablone Dateiname;ENU=Workflow Master Stencil Filename;ENG=Workflow Master Stencil Filename"
    //         Changed DEU Captions in fiel
    //           - 32 "Conditions Stencil Filename" from "Bedingung Schablone Dateiname" to "Bedingungen Schablone Dateiname".
    //           - 33 "Tasks Stencil Filename" from "Aufgabe Schablone Dateiname" to "Aufgaben Schablone Dateiname".
    // 
    // WF3.02.01:
    // ----------
    // WF0280  Update to NAV 2015.
    //         Updated Initialization of "Dynamics NAV Server Instance".
    //         Removed following fields:
    //           - 9 "Periodic Event Check Interval"
    //           - 10 "Application Server"
    //           - 12 "Formatting Enabled"
    //           - 17 "Visio Template Path"
    //           - 18 "Visio Setup Completed"
    //           - 37 "Monitor Workflow Portal"
    //           - 38 "Workflow Objects Filename"
    //           - 40 "Update Change Log Setup"
    //           - 53 "Deactivation Date"
    // WF0282  Changed MaxValue from 20 to 30 in field 62 "Approval Code Length".
    // 
    // WF3.02.02:
    // ----------
    // WF0292  Web Client support: New field 141 "Web Client Address".

    Caption = 'Workflow Setup';
    PasteIsValid = true;

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
        }
        field(2; "Workflow Nos."; Code[10])
        {
            Caption = 'Workflow Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Task Model Nos."; Code[10])
        {
            Caption = 'Task Template Nos.';
            TableRelation = "No. Series";
        }
        field(4; "Condition Nos."; Code[10])
        {
            Caption = 'Condition Nos.';
            TableRelation = "No. Series";
        }
        field(5; "Create E-Mail"; Boolean)
        {
            Caption = 'Create E-Mail';
        }
        field(6; "Send E-Mail immediately"; Boolean)
        {
            Caption = 'Send E-Mail immediately';
        }
        field(7; "Workflow Task Page ID"; Integer)
        {
            Caption = 'Task Page ID';
        }
        field(8; "Task Nos."; Code[10])
        {
            Caption = 'Task Nos.';
            TableRelation = "No. Series";
        }
        field(11; "Workflow Active"; Boolean)
        {
            Caption = 'Workflow active';
        }
        field(16; "Visio Stencils Path"; Text[250])
        {
            Caption = 'Visio Stencils Path';
        }
        field(19; "Workflow Stencil Filename"; Text[30])
        {
            Caption = 'Workflow Master Stencil Filename';
            Description = 'WF0150,WF0229';
        }
        field(32; "Conditions Stencil Filename"; Text[30])
        {
            Caption = 'Conditions Stencil Filename';
            Description = 'WF0150,WF0229';
        }
        field(33; "Tasks Stencil Filename"; Text[30])
        {
            Caption = 'Tasks Stencil Filename';
            Description = 'WF0150,WF0229';
        }
        field(39; "Debug Mode"; Boolean)
        {
            Caption = 'Debug Mode';
        }
        field(41; "Access Conflict Handling"; Option)
        {
            Caption = 'Access Conflict Handling';
            OptionCaption = 'Message,Error,None';
            OptionMembers = Message,Error,"None";
        }
        field(42; "Document Storage Type"; Option)
        {
            Caption = 'Document Storage Type';
            OptionCaption = 'Internal,External';
            OptionMembers = Internal,External;
        }
        field(43; "Document Storage Path"; Text[100])
        {
            Caption = 'Document Storage Path';
        }
        field(44; "Temp Document Storage Path"; Text[100])
        {
            Caption = 'Temp Document Storage Path';
        }
        field(45; "Temporary Filename"; Text[80])
        {
            Caption = 'Temporary Filename';
            Description = 'WF0150';
        }
        field(46; "SMS Service Provider"; Text[30])
        {
            Caption = 'SMS Service Provider';
        }
        field(47; "Create SMS"; Boolean)
        {
            Caption = 'Create SMS';
        }
        field(48; "Send SMS immediately"; Boolean)
        {
            Caption = 'Send SMS immediately';
        }
        field(49; "SMS Prefix"; Text[30])
        {
            Caption = 'SMS Prefix';
        }
        field(50; "SMS Simulation Mode"; Boolean)
        {
            Caption = 'SMS Simulation Mode';
        }
        field(51; "Create Periodic Events"; Boolean)
        {
            Caption = 'Create Periodic Events';
        }
        field(52; "Event Nos."; Code[10])
        {
            Caption = 'Event Nos.';
            TableRelation = "No. Series";
        }
        field(54; "Temp Path Environment Variable"; Text[30])
        {
            Caption = 'Temp Document Storage Path Environment Variable';
        }
        field(55; "Workflows Stencil Filename"; Text[30])
        {
            Caption = 'Workflows Stencil Filename';
            Description = 'WF0150';
        }
        field(56; "Approval Condition Nos."; Code[10])
        {
            Caption = 'Approval Condition Nos.';
            TableRelation = "No. Series";
        }
        field(57; "Document Web Setup Nos."; Code[10])
        {
            Caption = 'Document Web Setup Nos.';
            TableRelation = "No. Series";
        }
        field(58; "Master Document Nos."; Code[10])
        {
            Caption = 'Master Document Nos.';
            TableRelation = "No. Series";
        }
        field(59; "E-Mail Interface"; Option)
        {
            Caption = 'E-Mail Interface';
            OptionCaption = 'MAPI,SMTP';
            OptionMembers = MAPI,"SMTP/POP3";
        }
        field(60; "Use MS Shell Automation"; Boolean)
        {
            Caption = 'Use MS Shell Automation';
        }
        field(61; HTML; Boolean)
        {
            Caption = 'HTML Formatted';
            InitValue = true;
        }
        field(62; "Approval Code Length"; Integer)
        {
            Caption = 'Approval Code Length';
            Description = 'WF0282';
            MaxValue = 30;
            MinValue = 1;
        }
        field(63; "Check Checksum upon Approval"; Boolean)
        {
            Caption = 'Check Checksum upon Approval';
        }
        field(67; "SMTP E-Mail"; Text[80])
        {
            Caption = 'SMTP E-Mail';
        }
        field(68; "Exception Team Code"; Code[50])
        {
            Caption = 'Exception Team Code';
            Description = 'WFNAV7';
            TableRelation = "Workflow Team";
        }
        field(69; "Checksum includes FlowFields"; Boolean)
        {
            Caption = 'Checksum includes FlowFields';
        }
        field(70; "POP3 Server"; Text[30])
        {
            Caption = 'POP3 Server';
        }
        field(71; "POP3 User Name"; Text[30])
        {
            Caption = 'POP3 User ID';
        }
        field(72; "POP3 Password"; Text[30])
        {
            Caption = 'POP3 Password';
        }
        field(80; "Send E-Mail periodically"; Boolean)
        {
            Caption = 'Send E-Mail periodically';
            Description = 'WF0037';
        }
        field(83; "Field Security Ranking"; Option)
        {
            Caption = 'Field Security Ranking';
            Description = 'WF0027';
            OptionCaption = 'User = Team = Role,User > Team > Role';
            OptionMembers = "User = Team = Role","User > Team > Role";
        }
        field(90; "Delete External Documents"; Option)
        {
            Caption = 'Delete External Documents';
            Description = 'WF0067';
            OptionCaption = 'Never,Question,Always';
            OptionMembers = Never,Question,Always;
        }
        field(91; "Task Logging Type"; Option)
        {
            Caption = 'Task Logging Type';
            Description = 'WF0101';
            OptionCaption = 'Simple,Full';
            OptionMembers = Simple,Full;
        }
        field(102; "SMTP Server"; Text[250])
        {
            Caption = 'SMTP Server';
            Description = 'WF0040';
        }
        field(103; "SMTP Authentication"; Option)
        {
            Caption = 'SMTP Authentication';
            Description = 'WF0040';
            OptionCaption = 'Anonymous,NTLM,Basic';
            OptionMembers = Anonymous,NTLM,Basic;
        }
        field(104; "SMTP User ID"; Text[30])
        {
            Caption = 'User ID';
            Description = 'WF0040';
        }
        field(105; "SMTP Password"; Text[30])
        {
            Caption = 'SMTP Password';
            Description = 'WF0040';
        }
        field(106; "SMTP Sender Address"; Option)
        {
            Caption = 'SMTP Sender Address';
            Description = 'WF0040';
            OptionCaption = 'SMTP E-Mail,User E-Mail';
            OptionMembers = "SMTP E-Mail","User E-Mail";
        }
        field(107; "SMTP Sender Name"; Option)
        {
            Caption = 'SMTP Sender Name';
            Description = 'WF0040';
            OptionCaption = 'Company Name,User Name';
            OptionMembers = "Company Name","User Name";
        }
        field(108; "SMTP Server Port"; Integer)
        {
            Caption = 'SMTP Server Port';
            Description = 'WFNAV7';
            InitValue = 25;
        }
        field(109; "Secure Connection"; Boolean)
        {
            Caption = 'Secure Connection';
            Description = 'WFNAV7';
            InitValue = false;
        }
        field(110; "Notification Template"; BLOB)
        {
            Caption = 'Notification Template';
            Description = 'WF0040';
            SubType = UserDefined;
        }
        field(111; "Use Notification Template"; Boolean)
        {
            Caption = 'Use Notification Template';
            Description = 'WF0040';
        }
        field(115; "Copy Recipient (CC)"; Text[80])
        {
            Caption = 'Copy Recipient (CC)';
            Description = 'WF0149';
        }
        field(116; "Dynamics NAV Server Name"; Text[30])
        {
            Caption = 'Dynamics NAV Server Name';
            Description = 'WF0201';
        }
        field(117; "Dynamics NAV Server Port"; Integer)
        {
            Caption = 'Dynamics NAV Server Port';
            Description = 'WF0201';
            MaxValue = 65535;
            MinValue = 0;
        }
        field(118; "Dynamics NAV Server Instance"; Text[30])
        {
            Caption = 'Dynamics NAV Server Instance';
            Description = 'WF0201';
        }
        field(121; "Days Overdue until Reminder"; Integer)
        {
            Caption = 'Days Overdue until Reminder';
            Description = 'WF0205';
        }
        field(132; "Task Run Command (RTC)"; Option)
        {
            Caption = 'Task Run Command (RTC)';
            Description = 'WF0177';
            InitValue = "Microsoft Shell Automation";
            OptionCaption = 'Hyperlink,Microsoft Shell Automation,Windows Script Host';
            OptionMembers = Hyperlink,"Microsoft Shell Automation","Windows Script Host";
        }
        field(141; "Web Client Address"; Text[80])
        {
            Caption = 'Web Client Address';
            Description = 'WF0292';
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

