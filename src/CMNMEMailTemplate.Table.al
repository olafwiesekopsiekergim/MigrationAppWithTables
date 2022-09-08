table 5171692 "CMNM E-Mail Template"
{
    // //CMNM6.02.13 - Neues Feld Search Code
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'E-Mail Template';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Group Code"; Code[20])
        {
            Caption = 'Group';
            TableRelation = "CMNM E-Mail Template Group".Code WHERE(Code = FIELD("Group Code"));
        }
        field(3; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(4; Published; Boolean)
        {
            Caption = 'Published';
        }
        field(5; "Email Priority"; Option)
        {
            Caption = 'Priority';
            InitValue = "3";
            OptionCaption = 'Normal,High,Low';
            OptionMembers = "3","1","5";
        }
        field(6; "Email Sensitivity"; Option)
        {
            Caption = 'Sensitivity';
            Description = ' 0=normal, 1=personal, 2=private, 3=company-confidential';
            OptionCaption = 'Normal,Personal,Private,Confidential';
            OptionMembers = normal,personal,private,"company-confidential";
        }
        field(7; "Unique Comment Identifier"; Integer)
        {
            AutoIncrement = true;
            Caption = 'Unique Comment Identifier';
        }
        field(8; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(9; "Default Language"; Code[10])
        {
            Caption = 'Default Language Code';
            TableRelation = Language;
        }
        field(10; "Earliest Dispatch Time"; Time)
        {
            Caption = 'Earliest Dispatch Time';
        }
        field(11; "Latest Dispatch Time"; Time)
        {
            Caption = 'Latest Dispatch Time';
        }
        field(12; "E-Mail Format"; Option)
        {
            Caption = 'E-Mail Format';
            OptionCaption = 'HTML,Text,Multipart';
            OptionMembers = html,txt,multipart;
        }
        field(13; Type; Option)
        {
            OptionCaption = 'E-Mail,E-Post,FP Webmail';
            OptionMembers = Mail,EPost,FPWebmail;
        }
        field(15; "Source Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Table No.';
            TableRelation = Object.ID WHERE(Type = CONST(Table));
        }
        field(16; "Source Table Name"; Text[50])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Table),
                                                                           "Object ID" = FIELD("Source Table No.")));
            Caption = 'Source Table';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Source Card No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Card No.';
        }
        field(18; "Source Card Name"; Text[50])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = FILTER(Page),
                                                                           "Object ID" = FIELD("Source Card No.")));
            Caption = 'Source Card Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Source Document Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Document Field No.';
            TableRelation = Field."No." WHERE(TableNo = FIELD("Source Table No."));
        }
        field(20; "Source Document Field Name"; Text[50])
        {
            CalcFormula = Lookup(Field."Field Caption" WHERE(TableNo = FIELD("Source Table No."),
                                                              "No." = FIELD("Source Document Field No.")));
            Caption = 'Source Document Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Multinav Task Timeout Limit"; Integer)
        {
            Caption = 'Multinav Task Timeout';
            Description = 'in Sek.';
        }
        field(23; "Job Priority"; Integer)
        {
            Caption = 'Job Priority';
        }
        field(25; "Transmission Confirmation"; Option)
        {
            Caption = 'Transmission Confirmation';
            OptionCaption = 'No,On Failure';
            OptionMembers = no,failure;
        }
        field(26; "Transmission Confirm. Address"; Text[80])
        {
            Caption = 'Transmission Confirmation Recipient';
            Description = 'Sendeprotokolladresse';
        }
        field(27; "Transmission Confirmation Type"; Option)
        {
            Caption = 'Transmission Confirmation Type';
            OptionCaption = 'Originating User,User Defined';
            OptionMembers = Originator,UserDefined;
        }
        field(30; "Language Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Language Field No.';
            TableRelation = Field."No." WHERE(TableNo = FIELD("Source Table No."));
        }
        field(31; "Language Field Name"; Text[30])
        {
            CalcFormula = Lookup(Field."Field Caption" WHERE(TableNo = FIELD("Source Table No."),
                                                              "No." = FIELD("Language Field No.")));
            Caption = 'Language Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Combine Pdf Attachments"; Boolean)
        {
            Caption = 'Combine PDF Attachments';
        }
        field(40; "Email Processing Enabled"; Boolean)
        {
            Caption = 'E-Mail Processing';
        }
        field(41; "Processing Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'Codeunit,Report';
            OptionMembers = "Codeunit","Report";
        }
        field(42; "Processing Object ID"; Integer)
        {
            Caption = 'Object No.';
        }
        field(43; "Contact Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Contact Field No.';
            TableRelation = Field."No." WHERE(TableNo = FIELD("Source Table No."));
        }
        field(44; "Contact Field Name"; Text[50])
        {
            CalcFormula = Lookup(Field."Field Caption" WHERE(TableNo = FIELD("Source Table No."),
                                                              "No." = FIELD("Contact Field No.")));
            Caption = 'Contact Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(45; "Customer Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Customer Field No.';
            TableRelation = Field."No." WHERE(TableNo = FIELD("Source Table No."));
        }
        field(46; "Customer Field Name"; Text[50])
        {
            CalcFormula = Lookup(Field."Field Caption" WHERE(TableNo = FIELD("Source Table No."),
                                                              "No." = FIELD("Customer Field No.")));
            Caption = 'Customer Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(47; "Vendor Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Vendor Field No.';
            TableRelation = Field."No." WHERE(TableNo = FIELD("Source Table No."));
        }
        field(48; "Vendor Field Name"; Text[50])
        {
            CalcFormula = Lookup(Field."Field Caption" WHERE(TableNo = FIELD("Source Table No."),
                                                              "No." = FIELD("Vendor Field No.")));
            Caption = 'Vendor Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Interaction Template Code"; Code[10])
        {
            Caption = 'Interaction Template';
            TableRelation = "Interaction Template";
        }
        field(51; "Attach Mail To Interaction"; Boolean)
        {
            Caption = 'Attach e-Mail to Interaction Log Entry';
        }
        field(60; "Enable Mail Redirection"; Boolean)
        {
            Caption = 'Enable mail redirection';
        }
        field(61; "Redirection address"; Text[80])
        {
            Caption = 'Redirection address';
        }
        field(70; "Log Level"; Option)
        {
            Caption = 'Logging';
            InitValue = off;
            OptionCaption = 'Debug,,,Error,,Off';
            OptionMembers = debug,info,warn,error,fatal,off;
        }
        field(71; "Keep Temp. Files"; Boolean)
        {
            Caption = 'Keep Temp. Files';
        }
        field(72; "Set On Hold"; Boolean)
        {
            Caption = 'Keep on hold';
        }
        field(80; "Entry Qty."; Integer)
        {
            CalcFormula = Count("CMNM Entry" WHERE("Template No." = FIELD("No.")));
            Caption = 'Entry Qty.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "User Created"; Code[50])
        {
            Caption = 'Inserted by';
        }
        field(91; "Date Created"; Date)
        {
            Caption = 'Inserted on';
        }
        field(100; "User Filter"; Code[50])
        {
            Caption = 'User Filter';
            FieldClass = FlowFilter;
            TableRelation = "CMNM User Setup";
        }
        field(101; "Template User Permission"; Option)
        {
            CalcFormula = Lookup("CMNM User Permission".Permission WHERE("User ID" = FIELD("User Filter"),
                                                                          Type = CONST(Template),
                                                                          "No." = FIELD("No."),
                                                                          "Dispatch Type" = FILTER(Outlook | Smtp)));
            Caption = 'Permission';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'No Permission,Send,Open Template(s),Modify Template(s)';
            OptionMembers = Nothing,Send,Read,Modify;
        }
        field(102; "Group User Permission"; Option)
        {
            CalcFormula = Lookup("CMNM User Permission".Permission WHERE("User ID" = FIELD("User Filter"),
                                                                          Type = CONST(Group),
                                                                          "No." = FIELD("Group Code"),
                                                                          "Dispatch Type" = CONST(Smtp)));
            Caption = 'Permission';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'No Permission,Send,Open Template(s),Modify Template(s)';
            OptionMembers = Nothing,Send,Read,Modify;
        }
        field(200; "Pre Processing Parameter"; Code[20])
        {
            Caption = 'Pre Processing Parameter';
        }
        field(202; "Post Processing Parameter"; Code[20])
        {
            Caption = 'Post Processing Parameter';
        }
        field(300; "E-Post Type"; Option)
        {
            OptionCaption = 'Business API,Box';
            OptionMembers = API,Box;
        }
        field(301; "Print Color"; Option)
        {
            Caption = 'Color';
            OptionCaption = 'Grayscale,Color';
            OptionMembers = Grayscale,Color;
        }
        field(302; "Print Duplex"; Option)
        {
            Caption = 'Duplex Print';
            OptionCaption = 'Simplex,Duplex';
            OptionMembers = Simplex,Duplex;
        }
        field(303; "Print Coverletter"; Boolean)
        {
            Caption = 'Coverletter';
        }
        field(304; "E-Post Registered"; Option)
        {
            Caption = 'Registered';
            OptionCaption = 'Standardbrief,Einschreiben,Einschreiben Einwurf,Einschreiben eigenhändig,Einschreiben Rückschein,Einschreiben eigenhändig Rückschein';
            OptionMembers = no,standard,submissionOnly,addresseeOnly,withReturnReceipt,addresseeOnlyWithReturnReceipt;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; "Group Code")
        {
        }
        key(Key4; Description)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", "Group Code", Description, "Search Name", Published)
        {
        }
    }
}

