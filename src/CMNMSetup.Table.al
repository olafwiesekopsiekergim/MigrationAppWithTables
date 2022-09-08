table 5171688 "CMNM Setup"
{
    // CMNM6.02.28 - Neues Feld Archivierungsdauer
    // CMNM6.02.13 - Hotfix SMTP Authentication Method

    Caption = 'Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(3; "Last Modification User"; Code[50])
        {
            Caption = 'Last Modification User';
        }
        field(4; "Last Modification"; DateTime)
        {
            Caption = 'Last Modification';
        }
        field(5; "Company Signature"; BLOB)
        {
            Caption = 'Company Signature';
            Description = 'deprecated >V3';
        }
        field(6; "Company Signatures"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM Signature" WHERE ("Signature Type" = CONST (Company),
                                                        "User ID" = CONST ('')));
            Caption = 'Company Signatures';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Transmission Protocol"; Boolean)
        {
            CalcFormula = Exist ("CMNM Signature" WHERE ("Signature Type" = CONST (TransmissionProtocol)));
            Caption = 'Transmission Protocol';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Template No. Series"; Code[10])
        {
            Caption = 'Template No. Series';
            TableRelation = "No. Series".Code;
        }
        field(9; "Batch No. Series"; Code[10])
        {
            Caption = 'Batch No. Series';
            TableRelation = "No. Series".Code;
        }
        field(10; "Archiving Period"; Integer)
        {
            Caption = 'Archiving Period';
            Description = 'Löschen der Queue Einträg nach n Tagen - 0 = nie';
        }
        field(15; "No. Signatures"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM Signature" WHERE ("Signature Type" = CONST (Company),
                                                        "User ID" = FILTER ('')));
            Caption = 'Signature Qty.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Confirm Error Entries"; Boolean)
        {
            Caption = 'Confirm Entries with error';
        }
        field(20; "Processing Type"; Option)
        {
            Caption = 'Processing by';
            OptionCaption = 'Job Queue,Multinav Task';
            OptionMembers = JobQueue,Task;
        }
        field(21; "Default Language"; Code[10])
        {
            Caption = 'Default Language Code';
        }
        field(22; "PDF Printer"; Option)
        {
            Caption = 'PDF Printer';
            OptionCaption = ' ,Bullzip,Biopdf,Broadgun pdfMachine';
            OptionMembers = " ",Bullzip,Biopdf,Broadgun;
        }
        field(33; "Job Queue Category Code"; Code[10])
        {
            Caption = 'Job Queue Category Code';
        }
        field(50; "SMTP Server"; Text[200])
        {
            Caption = 'SMTP-Server';
        }
        field(51; "SMTP Server Port"; Integer)
        {
            BlankZero = true;
            Caption = 'SMTP-Server Port';
        }
        field(53; "SMTP User"; Text[50])
        {
            Caption = 'SMTP-User Name';
        }
        field(54; "SMTP Password"; Text[50])
        {
            Caption = 'SMTP-Password';
        }
        field(55; "SMTP Domain"; Text[20])
        {
            Caption = 'SMTP-Domain';
        }
        field(57; "SMTP Authentication Method"; Option)
        {
            Caption = 'SMTP Authentication Method';
            OptionMembers = "-1","0","1","2","4","8","16","32","64","128","256","512","1024","2048","4095";
        }
        field(58; "SMTP SSL Protocol"; Option)
        {
            Caption = 'SMTP SSL Protocol';
            OptionMembers = "-1","0","1","2","4";
        }
        field(59; "SMTP SSL Startup Mode"; Option)
        {
            Caption = 'SMTP SSL Startup Mode';
            OptionMembers = "-1","0","1","2","4";
        }
        field(60; "SMTP Disable Chunking"; Boolean)
        {
            Caption = 'SMTP Disable Chunking';
        }
        field(70; "Fax Interface"; Integer)
        {
            BlankZero = true;
            Caption = 'Fax Interface';
            TableRelation = Object.Type WHERE (Type = CONST (Codeunit));
        }
        field(71; "Fax Interface Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Codeunit),
                                                                        "Object ID" = FIELD ("Fax Interface")));
            Caption = 'Fax Interface Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Fax Username"; Text[30])
        {
            Caption = 'Fax Username';
        }
        field(73; "Fax Password"; Text[50])
        {
            Caption = 'Fax Password';
        }
        field(75; "Fax Max. Retries"; Integer)
        {
            Caption = 'Fax Max. Retries';
        }
        field(80; "Post Interface"; Integer)
        {
            BlankZero = true;
            Caption = 'Post Interface';
            TableRelation = Object.Type WHERE (Type = CONST (Codeunit));
        }
        field(81; "Post Interface Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (Codeunit),
                                                                        "Object ID" = FIELD ("Post Interface")));
            Caption = 'Post Interface Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(99; "Logging enabled"; Boolean)
        {
            Caption = 'Logging enabled';
        }
        field(100; "UDP IP Address"; Code[15])
        {
            Caption = 'IP Address';
        }
        field(101; "UDP IP Port"; Integer)
        {
            Caption = 'Port';
        }
        field(105; "UDP Log Enabled"; Boolean)
        {
            Caption = 'UDP Logging';
        }
        field(110; "File Path"; Text[250])
        {
            Caption = 'Filepath';
        }
        field(113; "File Log Enabled"; Boolean)
        {
            Caption = 'File Logging';
        }
        field(150; "Transmission Confirm. Address"; Text[50])
        {
            Caption = 'Transm. protocoll sender';
        }
        field(151; "Transmission Confirm. Name"; Text[50])
        {
            Caption = 'Transm. protocoll sender name';
        }
        field(152; "Transmission Confirm. Template"; BLOB)
        {
            Caption = 'Transm. protocoll Template';
            Description = 'deprecated >V3';
        }
        field(153; "Transmission Confirm. Subject"; Text[50])
        {
            Caption = 'Transmission Confirm. Subject';
        }
        field(160; "Template XmlPort ID"; Integer)
        {
            BlankZero = true;
            Caption = 'XmlPort ID Template Ex-/Import';
            TableRelation = Object.ID WHERE (Type = CONST (XMLport));
        }
        field(161; "Template XmlPort Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (XMLport),
                                                                        "Object ID" = FIELD ("Template XmlPort ID")));
            Caption = 'XmlPort Name Templateex-/import';
            Editable = false;
            FieldClass = FlowField;
        }
        field(162; "Key Value XmlPort ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Key Value XmlPort ID';
            TableRelation = Object.ID WHERE (Type = CONST (XMLport));
        }
        field(163; "Key Value XmlPort Name"; Text[30])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Name" WHERE ("Object Type" = CONST (XMLport),
                                                                        "Object ID" = FIELD ("Key Value XmlPort ID")));
            Caption = 'XmlPort Name Key/Value';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "NST WS Base URL"; Text[240])
        {
            Caption = 'NST WS Base URL';
        }
        field(301; "NST WS User"; Text[30])
        {
            Caption = 'NST WS User';
        }
        field(302; "NST WS Password"; Text[30])
        {
            Caption = 'NST WS Password';
        }
        field(303; "NST WS Servicename"; Text[80])
        {
            Caption = 'NST WS URL';
        }
        field(304; "NST WS Debug Filepath"; Text[250])
        {
            Caption = 'NST WS Debug Filepath';
        }
        field(305; "NST WS Debug Requests"; Boolean)
        {
            Caption = 'NST WS Debug Requests';
        }
        field(306; "NST WS Debug Response"; Boolean)
        {
            Caption = 'NST WS Debug Response';
        }
        field(500; "Icon Outlook"; BLOB)
        {
            Caption = 'Icon Outlook';
            SubType = Bitmap;
        }
        field(501; "Icon Smtp"; BLOB)
        {
            Caption = 'Icon Smtp';
            SubType = Bitmap;
        }
        field(502; "Icon ePost"; BLOB)
        {
            Caption = 'Icon E-Post';
            SubType = Bitmap;
        }
        field(503; "Icon eFax"; BLOB)
        {
            Caption = 'Icon Fax';
            SubType = Bitmap;
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

