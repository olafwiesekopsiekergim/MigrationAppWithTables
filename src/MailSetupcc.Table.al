table 76000 "Mail Setup, cc"
{
    // cc|mail (MAIL)

    Caption = 'cc|mail setup';

    fields
    {
        field(76000; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(76001; "Local Language Code"; Code[10])
        {
            Caption = 'Local Language Code';
            NotBlank = true;
            TableRelation = Language;
        }
        field(76002; "Log Activity"; Boolean)
        {
            Caption = 'Log Activity';
            InitValue = true;
        }
        field(76003; "Log Storage Time"; DateFormula)
        {
            Caption = 'Log Storage Time';
        }
        field(76004; "Email Demo Mode"; Boolean)
        {
            Caption = 'Email Demo Mode';
        }
        field(76005; "Email Error handling"; Option)
        {
            Caption = 'Email Error handling';
            OptionCaption = 'Error Message,Write Log';
            OptionMembers = ErrorMessage,WriteLog;
        }
        field(76006; "Allow Fonts in Editor"; Boolean)
        {
            Caption = 'Allow Fonts in Editor';
        }
        field(76007; "Allow Colors in Editor"; Boolean)
        {
            Caption = 'Allow Colors in Editor';
        }
        field(76008; "Receiver search failed"; Option)
        {
            Caption = 'Receiver search failed';
            Description = 'MAILW19.00.01';
            OptionCaption = 'Ask for PDF,Open Empty,Error,Write Log';
            OptionMembers = "Ask PDF",OpenEmpty,Error,WriteLog;
        }
        field(76009; "Allow SMTP Text Modification"; Boolean)
        {
            Caption = 'Allow SMTP Text Modification';
        }
        field(76010; "Subject Style"; Option)
        {
            Caption = 'Subject Style';
            OptionCaption = 'Document Name + Documen No.,Company Name + Documen Name+Document No.';
            OptionMembers = "DocName+DocNo","Company+DocName+DocNo";
        }
        field(76011; "Attachment Style"; Option)
        {
            Caption = 'Attachment Style';
            OptionCaption = 'Document Name + Documen No.,Company Name + Documen Name+Document No.';
            OptionMembers = "DocName+DocNo","Company+DocName+DocNo";
        }
        field(76012; "Default Font"; Text[50])
        {
            Caption = 'Default Font';
            InitValue = 'Arial';
        }
        field(76013; "Default Font Size"; Integer)
        {
            Caption = 'Default Font Size';
            InitValue = 9;
        }
        field(76014; "Default Salutation"; Code[10])
        {
            Caption = 'Default Salutation';
            TableRelation = Salutation;
        }
        field(76015; "Customer Vendor Setup"; Option)
        {
            Caption = 'Customer/Vendor Setup';
            Description = 'MAILW19.00.01';
            OptionCaption = 'Opt-In,Opt-Out';
            OptionMembers = "Opt-In","Opt-Out";
        }
        field(76020; "Test Fax No."; Text[30])
        {
            Caption = 'Test Fax No.';
            ExtendedDatatype = PhoneNo;
        }
        field(76021; "Test Email Address"; Text[50])
        {
            Caption = 'Test Email Address';
            ExtendedDatatype = EMail;
        }
        field(76030; "Faxno. Suffix"; Text[30])
        {
            Caption = 'Faxno. Suffix';
        }
        field(76031; "Fax Subject"; Text[50])
        {
            Caption = 'Fax Subject';
        }
        field(76032; "Fax Method"; Option)
        {
            Caption = 'Fax Method';
            OptionCaption = 'Mail,Print';
            OptionMembers = Email,Print;
        }
        field(76033; "Fax Printer Name"; Text[250])
        {
            Caption = 'Fax Printer Name';
            TableRelation = Printer;
        }
        field(76034; "Fax Font"; Text[50])
        {
            Caption = 'Font - Fax Control Element';
        }
        field(76035; "Fax Font Size"; Integer)
        {
            BlankZero = true;
            Caption = 'Font Size - Fax Control Element';
        }
        field(76036; "Fax Font Color"; Text[100])
        {
            Caption = 'Color - Fax Control Element';
            Editable = false;
        }
        field(76037; "Fax String"; Text[100])
        {
            Caption = 'Fax Control Element';
        }
        field(76090; "No. of Mail Setups"; Integer)
        {
            CalcFormula = Count ("HTML Template Setup" WHERE ("Record Type" = FILTER (MailSetup)));
            Caption = 'Email Setups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76091; "No. of Mail Attachments"; Integer)
        {
            CalcFormula = Count ("HTML Template Setup" WHERE ("Record Type" = FILTER (Attachments)));
            Caption = 'Email Attachments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(76092; "No. of Process Mails"; Integer)
        {
            CalcFormula = Count ("HTML Template Setup" WHERE ("Record Type" = FILTER (Process)));
            Caption = 'Process Mails';
            Description = 'MAILW19.00.01';
            Editable = false;
            FieldClass = FlowField;
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

