table 5171711 "CMNM Recipient"
{
    Caption = 'Recipients';

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'Contact,Customer,Vendor';
            OptionMembers = Contact,Customer,Vendor;
        }
        field(2; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            NotBlank = true;
            TableRelation = IF ("Source Type" = CONST (Contact)) Contact."No."
            ELSE
            IF ("Source Type" = CONST (Customer)) Customer."No."
            ELSE
            IF ("Source Type" = CONST (Vendor)) Vendor."No.";
        }
        field(4; "Document Type"; Code[20])
        {
            Caption = 'Document Type';
            TableRelation = "CMNM Document Type".Type;
        }
        field(5; "Recipient Type"; Option)
        {
            Caption = 'Recipient Type';
            OptionCaption = 'TO,CC,BCC';
            OptionMembers = "TO",CC,BCC;
        }
        field(6; "Dispatch Type"; Option)
        {
            Caption = 'Dispatch Type';
            OptionCaption = 'E-Mail,Fax,Print';
            OptionMembers = email,fax,print;
        }
        field(8; Valid; Option)
        {
            Caption = 'Option';
            Description = 'deprecated';
            OptionCaption = 'Fix,Optional';
            OptionMembers = fix,optional;
        }
        field(11; "Address Source Type"; Option)
        {
            Caption = 'Address Source Type';
            OptionCaption = 'Benutzerdefiniert,Kontakt';
            OptionMembers = Custom,Contact;
        }
        field(12; "Custom Address"; Text[80])
        {
            Caption = 'Custom Address';
        }
        field(13; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = IF ("Address Source Type" = CONST (Contact)) Contact."No.";
        }
        field(14; "Contact Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Contact Company Name"; Text[50])
        {
            CalcFormula = Lookup (Contact."Company Name" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Company Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "Contact E-Mail"; Text[80])
        {
            CalcFormula = Lookup (Contact."E-Mail" WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact E-Mail';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; Created; Date)
        {
            Caption = 'Created';
            Editable = false;
        }
        field(51; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(52; Modified; Date)
        {
            Caption = 'Modified';
            Editable = false;
        }
        field(53; "Modified By"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source Code", "Document Type", "Recipient Type", "Address Source Type", "Custom Address", "Contact No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

