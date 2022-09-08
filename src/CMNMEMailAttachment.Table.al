table 5171698 "CMNM E-Mail Attachment"
{
    Caption = 'Attachment';

    fields
    {
        field(1; "Template No."; Code[20])
        {
            Caption = 'Template No.';
            NotBlank = true;
            TableRelation = "CMNM E-Mail Template"."No." WHERE ("No." = FIELD ("Template No."));
        }
        field(2; Language; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language.Code;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Attachment Type"; Option)
        {
            Caption = 'Attachment Type';
            OptionCaption = 'Linked File,Report,Codeunit,Quick Part';
            OptionMembers = LinkedFile,"Report","Codeunit",Quickpart;
        }
        field(6; "Pass no Source Record"; Boolean)
        {
            Caption = 'Do not pass source record';
        }
        field(7; "Attachment Description"; Text[80])
        {
            Caption = 'Description';
        }
        field(8; "Attachment Path"; Text[250])
        {
            Caption = 'Linked File Path';
        }
        field(9; "Imported File"; BLOB)
        {
            Caption = 'Imported File';
            Description = 'deprecated - replaced by quick parts';
        }
        field(10; "Report ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Report ID';
            TableRelation = IF ("Attachment Type" = CONST (Report)) Object.ID WHERE (Type = CONST (Report));
        }
        field(11; "Report Caption"; Text[80])
        {
            Caption = 'Report Name';
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
            Description = 'deprecated c/sr/Pfad für Hintergrundbild';
        }
        field(14; "PDF Background x-Coord."; Decimal)
        {
            Caption = 'Hintergrund x-Koordinate';
        }
        field(15; "PDF Background y-Coord."; Decimal)
        {
            Caption = 'Hintergrund y-Koordinate';
        }
        field(16; "PDF Background"; BLOB)
        {
            Caption = 'PDF Background';
            Description = 'deprecated - replaced by quick parts BMP, PNG, GIF, JPEG, TIFF, or PDF';
        }
        field(17; "PDF Background Extension"; Code[20])
        {
            Caption = 'PDF Hintergrund Dateiendung';
        }
        field(18; "Codeunit Parameter"; Code[20])
        {
            Caption = 'Codeunit Parameter';
        }
        field(19; "Print Report via Webservice"; Boolean)
        {
            Caption = 'Print Report via Webservice';
        }
        field(20; "Custom Attachment Name"; Text[50])
        {
            Caption = 'Custom Attachment Name';
            Description = 'c/sr/20072011 - angepasster Berichtsname';
        }
        field(21; "Quick Part Code"; Code[20])
        {
            Caption = 'Quick Part';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (File),
                                                         "Language Code" = FIELD (Language));
        }
        field(22; "PDF Background Quick Part"; Code[20])
        {
            Caption = 'Background Quick Part';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (File),
                                                         "Language Code" = FIELD (Language));
        }
        field(30; "Creation Timeout"; Integer)
        {
            Caption = 'Creation Timeout';
            Description = 'in Sek.';
            InitValue = 60;
        }
        field(50; "Qty. of Replacements"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM E-Mail Replacement" WHERE ("Template No." = FIELD ("Template No."),
                                                                 Language = FIELD (Language),
                                                                 "Line No." = FIELD ("Line No."),
                                                                 "Line Type" = CONST (Attachment)));
            Caption = 'Replacements';
            Editable = false;
            FieldClass = FlowField;
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
        field(115; "PDF User Replacements"; Integer)
        {
            CalcFormula = Count ("CMNM E-Mail Replacement" WHERE ("Template No." = FIELD ("Template No."),
                                                                 Language = FIELD (Language),
                                                                 "Line No." = CONST (0),
                                                                 "Line Type" = CONST (PDFUser)));
            Caption = 'PDF User Replacements';
            Editable = false;
            FieldClass = FlowField;
        }
        field(116; "PDF Owner Replacements"; Integer)
        {
            CalcFormula = Count ("CMNM E-Mail Replacement" WHERE ("Template No." = FIELD ("Template No."),
                                                                 Language = FIELD (Language),
                                                                 "Line No." = CONST (0),
                                                                 "Line Type" = CONST (PdfOwner)));
            Caption = 'PDF Owner Replacements';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Template No.", Language, "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

