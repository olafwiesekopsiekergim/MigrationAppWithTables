table 5292342 "PR - Job Contact"
{
    Caption = 'Job Contact';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            NotBlank = true;
            TableRelation = Job;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(11; "Contact Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; Initials; Code[20])
        {
            Caption = 'Initials';
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(21; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(100; City; Text[30])
        {
            Caption = 'City';
        }
        field(101; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(102; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(103; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
        }
        field(104; "Mobile Phone No."; Text[30])
        {
            Caption = 'Mobile Phone No.';
        }
        field(5050; Type; Option)
        {
            Caption = 'Type';
            Description = 'Company,Person';
            OptionCaption = 'Company,Person';
            OptionMembers = Company,Person;
        }
        field(5051; "Company No."; Code[20])
        {
            Caption = 'Company No.';
            TableRelation = Contact WHERE (Type = CONST (Company));
        }
        field(5052; "Company Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Company No.")));
            Caption = 'Company Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5053; "Lookup Contact No."; Code[20])
        {
            Caption = 'Lookup Contact No.';
            Editable = false;
            TableRelation = Contact;
        }
    }

    keys
    {
        key(Key1; "Job No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Contact No.")
        {
        }
    }

    fieldgroups
    {
    }
}

