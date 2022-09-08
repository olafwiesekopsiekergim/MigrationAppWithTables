table 5171689 "CMNM Entry"
{
    // CMNM6.02.28 - Neue Schlüssel "Job Queue Entry ID", "DateTime of dispatch,Status", "Last attempt,Status"
    // CMNM6.02.13 - Korrektur Übermittlungsprotokoll
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'Multinav Mail Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'No.';
        }
        field(2; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,On Hold,Processing,Success,Error';
            OptionMembers = Open,OnHold,Processing,Finished,Error;
        }
        field(3; "Template No."; Code[20])
        {
            Caption = 'Template';
        }
        field(4; "Dispatch Type"; Option)
        {
            Caption = 'Dispatch Type';
            OptionCaption = 'Smtp,Outlook,E-POST,Francotyp';
            OptionMembers = Smtp,Outlook,"E-POST",Francotyp;
        }
        field(5; "Batch Entry"; Boolean)
        {
            CalcFormula = Exist("CMNM Batch Line" WHERE("Entry No." = FIELD("Entry No.")));
            Caption = 'Batch Processing';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Email Priority"; Option)
        {
            Caption = 'Priority';
            InitValue = normal;
            OptionCaption = 'Normal,High,Low';
            OptionMembers = normal,high,low;
        }
        field(9; "Email Sensitivity"; Option)
        {
            Caption = 'Sensitivity';
            Description = ' 0=normal, 1=personal, 2=private, 3=company-confidential';
            OptionCaption = 'Normal,Personal,Private,Confidential';
            OptionMembers = normal,personal,private,confidential;
        }
        field(11; Attempts; Integer)
        {
            Caption = 'Attempts';
            Description = 'Anzahl Sendeversuche';
        }
        field(12; "Last attempt"; DateTime)
        {
            Caption = 'Last attempt';
            Description = 'Timestamp letzter Versuch';
        }
        field(13; "Confirmed Status"; Boolean)
        {
            Caption = 'Status confirmed';
        }
        field(14; "Attached E-Mail"; BLOB)
        {
            Caption = 'Created E-Mail';
        }
        field(15; "Info Code"; Code[20])
        {
            Caption = 'Info Code';
            Description = 'Fehlercode';
        }
        field(16; "Info Description"; Text[200])
        {
            CalcFormula = Lookup("CMNM Quick Part"."Text Value" WHERE(Type = CONST(Error),
                                                                       Key = FIELD("Info Code")));
            Caption = 'Info Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Confirmed Status By"; Code[50])
        {
            Caption = 'Confirmed by';
        }
        field(18; "Source Document No."; Code[50])
        {
            Caption = 'Source Document';
        }
        field(20; "Source RecordID"; RecordID)
        {
            Caption = 'Source Record';
        }
        field(25; "Job Queue Entry ID"; Guid)
        {
            Caption = 'Job Queue Entry ID';
        }
        field(30; "Date Created"; Date)
        {
            Caption = 'Date created';
        }
        field(31; "Time Created"; Time)
        {
            Caption = 'Time Created';
        }
        field(32; "User Created"; Code[50])
        {
            Caption = 'User ID';
        }
        field(35; "Earliest Start Date/Time"; DateTime)
        {
            Caption = 'Earliest Start Date/Time';
        }
        field(40; Language; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(50; "Transmission Confirmation"; Option)
        {
            Caption = 'Transmission Report';
            Description = 'Speichern DatumZeit an dem Rückmeldung geschickt wurde';
            OptionCaption = 'Never,Error';
            OptionMembers = no,error;
        }
        field(51; "Transmission Confirmation Type"; Option)
        {
            Caption = 'Transmission Confirmation Type';
            OptionCaption = 'Originating User,User Defined';
            OptionMembers = Originator,UserDefined;
        }
        field(52; "Transmission Confirm. Address"; Text[80])
        {
            Caption = 'Transmission Confirmation Recipient';
        }
        field(60; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact;
        }
        field(61; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }
        field(62; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor."No.";
        }
        field(65; "Interaction Template Code"; Code[10])
        {
            Caption = 'Interaction Template Code';
            TableRelation = "Interaction Template";
        }
        field(66; "Interaction Log Entry No."; Integer)
        {
            Caption = 'Interaction Log Entry';
            TableRelation = "Interaction Log Entry";
        }
        field(67; "Segment No."; Code[20])
        {
            Caption = 'Segment Header No.';
            TableRelation = "Segment Header";
        }
        field(68; "Interaction Salesperson Code"; Code[10])
        {
            Caption = 'Interaction Salesperson';
            TableRelation = "Salesperson/Purchaser";
        }
        field(69; "Interaction Date"; Date)
        {
            Caption = 'Interaction Date';
        }
        field(70; "Interaction Time"; Time)
        {
            Caption = 'Interaction Time';
        }
        field(71; "Interaction Description"; Text[50])
        {
            Caption = 'Interaction Description';
        }
        field(72; "Attach Mail To Interaction"; Boolean)
        {
            Caption = 'Attach e-Mail to Interaction Log Entry';
        }
        field(100; "Entry Details"; Integer)
        {
            CalcFormula = Count("CMNM Entry Detail" WHERE("Entry No." = FIELD("Entry No.")));
            Caption = 'Email Addresses';
            Description = 'gibt es modifizierte Mail Adressen';
            Editable = false;
            FieldClass = FlowField;
        }
        field(102; "Log Entries"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count("CMNL Entry" WHERE("Entry Type" = CONST("Multinav Mail"),
                                                    "Linked Entry No." = FIELD("Entry No.")));
            Caption = 'Log Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Temp. Entry Folder"; Text[250])
        {
            Caption = 'Temp. Processing Folder';
        }
        field(201; "Temp. Boolean"; Boolean)
        {
            Caption = 'Temp. Boolean';
        }
        field(500; "Dispatch Type Icon"; BLOB)
        {
            Caption = 'Dispatch Type Icon';
            SubType = Bitmap;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Date Created", "Time Created")
        {
        }
        key(Key3; "Job Queue Entry ID")
        {
        }
        key(Key4; "Earliest Start Date/Time", Status)
        {
        }
        key(Key5; "Last attempt", Status)
        {
        }
        key(Key6; "Source Document No.")
        {
        }
        key(Key7; "Template No.", "Source Document No.")
        {
        }
        key(Key8; "Source RecordID")
        {
        }
    }

    fieldgroups
    {
    }
}

