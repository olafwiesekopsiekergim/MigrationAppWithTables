table 5397000 "CMNL Entry"
{
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'Log Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Lfd. Nr.';
        }
        field(2; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Default,Multinav Mail,Multinav Task,Multinav Archiv,Multinav Scan,Multinav Session,Multinav IO';
            OptionMembers = Default,"Multinav Mail","Multinav Task","Multinav Archiv","Multinav Scan","Multinav Session","Multinav IO";
        }
        field(3; "Linked Entry No."; Integer)
        {
            Caption = 'Verknüpfte Lfd. Nr.';
        }
        field(4; "Linked Code No."; Code[20])
        {
            Caption = 'Verküpftes Feld';
        }
        field(5; "Object No."; Integer)
        {
            Caption = 'Objekt Nr.';
        }
        field(6; "Object Method"; Text[50])
        {
        }
        field(7; "Severity Level"; Option)
        {
            Caption = 'Log Level';
            OptionCaption = 'Debug,Info,Warn,Error,Fatal Error,Off';
            OptionMembers = debug,info,warn,error,fatal,off;
        }
        field(9; "Record Link"; RecordID)
        {
        }
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(11; Description; Text[200])
        {
            Caption = 'Beschreibung 1';
        }
        field(12; "Description 2"; Text[250])
        {
            Caption = 'Beschreibung 2';
        }
        field(13; "Description 3"; Text[250])
        {
            Caption = 'Beschreibung 3';
        }
        field(14; "Description 4"; Text[250])
        {
            Caption = 'Beschreibung 4';
        }
        field(15; "Description 5"; Text[250])
        {
            Caption = 'Beschreibung 5';
        }
        field(20; "Event Timestamp"; DateTime)
        {
            Caption = 'Ereignis Zeit';
        }
        field(21; "Event User ID"; Code[50])
        {
            Caption = 'Ereignis Benutzer';
        }
        field(30; "Notification Send"; Boolean)
        {
            Caption = 'Benachrichtigung verschickt';
        }
        field(31; "Processing Timestamp"; DateTime)
        {
            Caption = 'Verarbeitung Zeit';
        }
        field(50; "Integer 1"; Integer)
        {
        }
        field(51; "Integer 2"; Integer)
        {
        }
        field(52; "Integer 3"; Integer)
        {
        }
        field(60; "Code 1"; Code[50])
        {
        }
        field(61; "Code 2"; Code[50])
        {
        }
        field(62; "Code 3"; Code[50])
        {
        }
        field(70; "Boolean 1"; Boolean)
        {
        }
        field(71; "Boolean 2"; Boolean)
        {
        }
        field(72; "Boolean 3"; Boolean)
        {
        }
        field(80; "Option 1"; Option)
        {
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19";
        }
        field(81; "Option 2"; Option)
        {
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19";
        }
        field(82; "Option 3"; Option)
        {
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Processing Timestamp", "Notification Send")
        {
        }
        key(Key3; "Notification Send", "Processing Timestamp", Description)
        {
        }
        key(Key4; "Code")
        {
        }
        key(Key5; "Entry Type", "Linked Entry No.", "Linked Code No.")
        {
        }
    }

    fieldgroups
    {
    }
}

