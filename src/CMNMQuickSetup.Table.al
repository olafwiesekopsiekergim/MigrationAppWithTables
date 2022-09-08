table 5171713 "CMNM Quick Setup"
{
    Caption = 'Quick Setup';

    fields
    {
        field(1; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(2; "Optional Key"; Code[20])
        {
            Caption = 'Optional Key';
        }
        field(3; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'Form/Page,Codeunit,Report,Table';
            OptionMembers = FormPage,"Codeunit","Report","Table";
        }
        field(4; "Source Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Source Table No.';
            TableRelation = Object.ID WHERE(Type = CONST(Table));
        }
        field(5; "Processing Type"; Option)
        {
            Caption = 'Processing Type';
            Description = 'deprecated';
            OptionCaption = 'Query User,Smtp,Outlook,Fax,Post';
            OptionMembers = QueryUser,Smtp,Outlook,Fax,Post;
        }
        field(6; "Send via Smtp"; Boolean)
        {
            Caption = 'By Smtp';
            Description = 'deprecated';
        }
        field(7; "Send via Outlook"; Boolean)
        {
            Caption = 'By Outlook';
            Description = 'deprecated';
        }
        field(8; "Send via Fax"; Boolean)
        {
            Caption = 'By Fax';
            Description = 'deprecated';
        }
        field(9; "Send via E-POST"; Boolean)
        {
            Caption = 'By E-POST';
            Description = 'deprecated';
        }
        field(10; "SMTP Type"; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Template,Template Group';
            OptionMembers = Template,TemplateGroup;
        }
        field(11; "SMTP Template"; Code[20])
        {
            Caption = 'Smtp Template';
            TableRelation = IF ("SMTP Type" = CONST(Template)) "CMNM E-Mail Template"."No." WHERE("Source Table No." = FIELD("Source Table No."))
            ELSE
            IF ("SMTP Type" = CONST(TemplateGroup)) "CMNM E-Mail Template Group".Code;
        }
        field(12; "User Message"; Code[10])
        {
            Caption = 'User Message';
            TableRelation = "CMNM Quick Part".Key WHERE(Type = CONST(1));
        }
        field(13; "Send via FP"; Boolean)
        {
            Caption = 'via FP Webmail';
        }
        field(14; "Pre Processing Parameter"; Code[20])
        {
            Caption = 'Pre Processing Parameter';
        }
        field(16; "Post Processing Parameter"; Code[20])
        {
            Caption = 'Post Processing Parameter';
        }
        field(17; "Source Table Name"; Text[50])
        {
            CalcFormula = Lookup(AllObjWithCaption."Object Caption" WHERE("Object Type" = CONST(Table),
                                                                           "Object ID" = FIELD("Source Table No.")));
            Caption = 'Source Table';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Outlook Type"; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Template,Template Group';
            OptionMembers = Template,TemplateGroup;
        }
        field(21; "Outlook Template"; Code[20])
        {
            Caption = 'Outlook Template';
            TableRelation = IF ("Outlook Type" = CONST(Template)) "CMNM E-Mail Template"."No." WHERE("Source Table No." = FIELD("Source Table No."))
            ELSE
            IF ("Outlook Type" = CONST(TemplateGroup)) "CMNM E-Mail Template Group".Code;
        }
        field(23; "E-POST Template"; Code[20])
        {
            Caption = 'E-Post Template';
        }
        field(25; "FP Template"; Code[20])
        {
            Caption = 'FP Template';
        }
        field(30; "Show Editor"; Boolean)
        {
            Caption = 'Show Editor';
        }
        field(31; "Enable MailFrom"; Boolean)
        {
            Caption = 'Show Sender Address';
        }
        field(32; "Enable MailTo"; Boolean)
        {
            Caption = 'Show Recipient';
        }
        field(33; "Enable MailCC"; Boolean)
        {
            Caption = 'Show CC';
        }
        field(34; "Enable MailBCC"; Boolean)
        {
            Caption = 'Show BCC';
        }
        field(35; "Enable MailComment"; Boolean)
        {
            Caption = 'Show Comment';
        }
        field(36; "Enable MailAttachments"; Boolean)
        {
            Caption = 'Show Attachments';
        }
        field(37; "Document Type"; Code[20])
        {
            Caption = 'Document Type';
            TableRelation = "CMNM Document Type".Type;
        }
        field(38; "Recipient Source Type"; Option)
        {
            Caption = 'Recipient Source Type';
            OptionCaption = 'Contact,Customer,Vendor';
            OptionMembers = Contact,Customer,Vendor;
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID", "Optional Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

