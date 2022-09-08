table 5171696 "CMNM E-Mail Replacement"
{
    // //c/sr/20130212: - Neue Felder Pre-/Post-Replacement Text

    Caption = 'Replacement';

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
        field(5; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = 'Subject,Content,Attachment,,PDF User,PDF Owner';
            OptionMembers = Subject,Content,Attachment,,PDFUser,PdfOwner;
        }
        field(6; "Replacement No."; Integer)
        {
            Caption = 'Replacement No.';
        }
        field(7; "Search Code"; Code[50])
        {
            Caption = 'Search Value';
            NotBlank = true;
        }
        field(8; "Replacement Type"; Option)
        {
            Caption = 'Replacement Type';
            OptionCaption = 'Macro,Source Record Field,Linked Record Field,Text Buffer,Embedded Images,User Signature';
            OptionMembers = Macro,SourceField,LinkedRecord,TextBuffer,EmbeddedImage,Signature;
        }
        field(10; "Macro Code"; Code[50])
        {
            Caption = 'Macro';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (Macro));
        }
        field(11; "Linked Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Linked Table';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(12; "Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Field No.';
        }
        field(15; "Record Link"; Text[250])
        {
            Caption = 'Link';
        }
        field(17; Attachment; BLOB)
        {
            Caption = 'Attachment';
        }
        field(18; "Attachment Name"; Text[80])
        {
            Caption = 'Attachment Filename';
        }
        field(19; "Entry Buffer Code"; Code[20])
        {
            Caption = 'Text Buffer Code';
        }
        field(20; "Replacement Format String"; Text[100])
        {
            Caption = 'Replacement Format Expression';
        }
        field(30; "Pre-Replacement Code"; Text[100])
        {
            Caption = 'Pre Code';
        }
        field(31; "Post-Replacement Code"; Text[100])
        {
            Caption = 'Post Code';
        }
    }

    keys
    {
        key(Key1; "Template No.", Language, "Line No.", "Line Type", "Replacement No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

