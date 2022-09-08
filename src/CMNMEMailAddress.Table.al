table 5171697 "CMNM E-Mail Address"
{
    Caption = 'Address';

    fields
    {
        field(1; "Template No."; Code[20])
        {
            Caption = 'Template No.';
            NotBlank = true;
            TableRelation = "CMNM E-Mail Template"."No." WHERE ("No." = FIELD ("Template No."));
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'From,To,CC,BCC,Display Name,Reply-To Address';
            OptionMembers = From,"To",CC,BCC,DisplayName,ReplyTo;
        }
        field(3; "Contact Type"; Option)
        {
            Caption = 'Contact Type';
            OptionCaption = 'Custom address,Macro,Source Record Field,Linked Record Field,Multinav Mail User,Document Type Recipient';
            OptionMembers = Custom,Macro,SourceField,LinkedRecord,MailUser,DocumentType;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Custom Value"; Text[80])
        {
            Caption = 'Custom value';
        }
        field(6; "Email Display Name"; Text[80])
        {
            Caption = 'Display Name';
            Description = 'obsolete since 6.02.36';
        }
        field(7; Macro; Code[20])
        {
            Caption = 'Macro';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (Macro));
        }
        field(8; "Recipient Source Type"; Option)
        {
            Caption = 'Recipient Source Type';
            OptionCaption = 'Contact,Customer,Vendor';
            OptionMembers = Contact,Customer,Vendor;
        }
        field(9; "Recipient Use Type"; Option)
        {
            Caption = 'Recipient Use Type';
            Description = 'c/sr/230115 deprecated';
            OptionCaption = 'Template,Template Group,Document Type,All';
            OptionMembers = Template,TemplateGroup,DocType,All;
        }
        field(10; "Table Relation"; Text[250])
        {
            Caption = 'Table Relation';
            Description = '{Comment FieldNo1:Source FieldNo1},{Comment FieldNo2:Source FieldNo2},{m:n}';
        }
        field(12; "Document Type"; Code[20])
        {
            Caption = 'Document Type';
            TableRelation = "CMNM Document Type".Type;
        }
        field(15; Restriction; Option)
        {
            Caption = 'Restriction';
            OptionCaption = ' ,Only Server Processing,Only Outlook Processing';
            OptionMembers = " ",NASOnly,OutlookOnly;
        }
        field(22; "Linked Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Linked Table';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(23; "Linked Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Custom Dest. Field No.';
        }
        field(24; "Linked Field Name"; Text[80])
        {
            CalcFormula = Lookup (Field.FieldName WHERE (TableNo = FIELD ("Linked Table No."),
                                                        "No." = FIELD ("Linked Field No.")));
            Caption = 'Benutzerdef. Dest. Field Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Sender overwriteable"; Boolean)
        {
            Caption = 'Sender overwriteable';
            Description = 'c/sr/060409 Absender kann manuell überschrieben werden';
        }
        field(40; "Backup address"; Text[80])
        {
            Caption = 'Backup address';
        }
    }

    keys
    {
        key(Key1; "Template No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

