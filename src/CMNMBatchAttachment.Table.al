table 5171703 "CMNM Batch Attachment"
{
    Caption = 'Stapelverarbeitung Anhang';

    fields
    {
        field(1; "Batch No."; Code[20])
        {
            Caption = 'Batch No.';
            NotBlank = true;
            TableRelation = "CMNM Batch Header";
        }
        field(2; "Batch Line No."; Integer)
        {
            Caption = 'Line No.';
            TableRelation = "CMNM Batch Line"."Line No." WHERE ("Batch No." = FIELD ("Batch No."));
        }
        field(3; "Attachment No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Anhang Nr.';
        }
        field(4; "Attachment RecordID"; RecordID)
        {
            Caption = 'Anhang RecordID';
        }
        field(5; "Attachment Type"; Option)
        {
            Caption = 'Attachment Type';
            Description = 'File,Report,Codeunit,Quickpart';
            OptionCaption = 'File,Report,Codeunit,Quickpart';
            OptionMembers = File,"Report","Codeunit",Quickpart;
        }
        field(6; "Pass no Source Record"; Boolean)
        {
            Caption = 'Do not pass source record';
        }
        field(8; "Attachment Path"; Text[250])
        {
            Caption = 'Path';
            Description = 'File => Path';
        }
        field(10; "Report ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Report ID';
            Description = 'Report/Codeunit';
            TableRelation = IF ("Attachment Type" = CONST (Report)) Object.ID WHERE (Type = CONST (Report));
        }
        field(11; "Report Caption"; Text[80])
        {
            Caption = 'Bericht Name';
            Description = 'Flowfield';
            Editable = false;
        }
        field(12; "Output Type"; Option)
        {
            Caption = 'Output Type';
            OptionCaption = 'Pdf,Xml,Word,Excel,Html';
            OptionMembers = Pdf,Xml,Word,Excel,Html;
        }
        field(13; "PDF Background Path"; Text[250])
        {
            Caption = 'Background PDF Path';
            Description = 'Pfad für Hintergrundbild';
        }
        field(14; "PDF Background x-Coord."; Decimal)
        {
            Caption = 'Hintergrund x-Koordinate';
        }
        field(15; "PDF Background y-Coord."; Decimal)
        {
            Caption = 'Hintergrund y-Koordinate';
        }
        field(18; "Codeunit Parameter"; Code[20])
        {
            Caption = 'Codeunit Parameter';
            Description = 'Parameter => passed to codeunit';
        }
        field(19; "Print Report via Webservice"; Boolean)
        {
            Caption = 'Print Report via Webservice';
        }
        field(20; "Custom Attachment Name"; Text[50])
        {
            Caption = 'Custom Attachment Name';
            Description = 'angepasster Berichtsname';
        }
        field(21; "Quick Part Code"; Code[20])
        {
            Caption = 'Quick Part';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (File));
        }
        field(22; "PDF Background Quick Part"; Code[20])
        {
            Caption = 'Background Quick Part';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (File));
        }
        field(30; "Creation Timeout"; Integer)
        {
            Caption = 'Creation Timeout';
            Description = 'in Sek.';
            InitValue = 60;
        }
        field(100; "Protect PDF"; Boolean)
        {
            Caption = 'PDF Schützen';
        }
        field(101; "User Password"; Text[50])
        {
            Caption = 'Benutzer Kennwort';
        }
        field(102; "Owner Password"; Text[50])
        {
            Caption = 'Ower Password';
        }
        field(103; Print; Boolean)
        {
            Caption = ' Key Length';
            InitValue = true;
        }
        field(104; "Full Quality Print"; Boolean)
        {
            Caption = 'Set Permissions';
            InitValue = true;
        }
        field(105; "Modify Document"; Boolean)
        {
            Caption = 'Print';
        }
        field(106; "Assemble Document"; Boolean)
        {
            Caption = 'Copy';
            InitValue = true;
        }
        field(107; "Extract Content"; Boolean)
        {
            Caption = 'Inhalt extrahieren';
        }
        field(108; "Extract Access. Content"; Boolean)
        {
            Caption = 'Inhalt für Barrierefreiheit extrahieren';
        }
        field(109; Annotation; Boolean)
        {
            Caption = 'Kommentare';
            InitValue = true;
        }
        field(110; "Forms Fill"; Boolean)
        {
            Caption = 'Formular ausfüllen';
            InitValue = true;
        }
        field(111; "40Bit Encryption"; Boolean)
        {
            Caption = '40Bit Verschlüsselung';
        }
        field(200; "Cust Int 1"; Integer)
        {
            Caption = '<Cust Int 1>';
        }
        field(201; "Cust Int 2"; Integer)
        {
        }
        field(202; "Cust Int 3"; Integer)
        {
        }
        field(210; "Cust Text 1"; Text[250])
        {
        }
        field(211; "Cust Text 2"; Text[250])
        {
        }
        field(212; "Cust Text 3"; Text[250])
        {
        }
        field(220; "Cust Bool 1"; Boolean)
        {
        }
        field(221; "Cust Bool 2"; Boolean)
        {
        }
        field(222; "Cust Bool 3"; Boolean)
        {
        }
        field(230; "Cust Date 1"; Date)
        {
        }
        field(231; "Cust Date 2"; Date)
        {
        }
        field(232; "Cust Date 3"; Date)
        {
        }
    }

    keys
    {
        key(Key1; "Batch No.", "Batch Line No.", "Attachment No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

