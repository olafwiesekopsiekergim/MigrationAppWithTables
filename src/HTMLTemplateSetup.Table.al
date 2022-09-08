table 76001 "HTML Template Setup"
{
    // cc|mail (MAIL)

    Caption = 'cc|mail Detailed Setup';

    fields
    {
        field(1; "Report ID"; Integer)
        {
            Caption = 'Report ID';
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Report),
                                                      "Object ID" = FILTER (50000 .. 99999));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(3; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language.Code;
        }
        field(4; "HTML Template"; BLOB)
        {
        }
        field(6; "Record Type"; Option)
        {
            Caption = 'Record Type';
            Description = 'MAILW19.00.01';
            OptionCaption = 'Email Setup,Attachments,Process';
            OptionMembers = MailSetup,Attachments,Process;
        }
        field(8; Deactivate; Boolean)
        {
            Caption = 'Deactivate';
        }
        field(10; "Link to Table"; Option)
        {
            Caption = 'Link to Table';
            OptionCaption = ' ,Customer,Vendor,Contact,Responsibility Center';
            OptionMembers = " ",Customer,Vendor,Contact,"Responsibility Center";
        }
        field(11; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'MAILW19.00.01';
            TableRelation = IF ("Link to Table" = CONST (Customer)) Customer
            ELSE
            IF ("Link to Table" = CONST (Vendor)) Vendor
            ELSE
            IF ("Link to Table" = CONST (Contact)) Contact
            ELSE
            IF ("Link to Table" = CONST ("Responsibility Center")) "Responsibility Center";
        }
        field(13; "Fax sending"; Option)
        {
            Caption = 'Fax sending';
            InitValue = normal;
            OptionCaption = ' ,normal,silent';
            OptionMembers = " ",normal,silent;
        }
        field(14; "Mail sending"; Option)
        {
            Caption = 'Mail sending';
            InitValue = normal;
            OptionCaption = ' ,normal,silent';
            OptionMembers = " ",normal,silent;
        }
        field(15; "activate PDF"; Boolean)
        {
            Caption = 'activate PDF';
            InitValue = true;
        }
        field(21; "Sender Address"; Text[50])
        {
            Caption = 'Sender Address';
            ExtendedDatatype = EMail;
        }
        field(22; "Mail Method"; Option)
        {
            Caption = 'Mail Method';
            OptionCaption = ' ,Outlook,SMTP';
            OptionMembers = Outlook,SMTP;
        }
        field(24; "Show Request Page"; Boolean)
        {
            Caption = 'Show Request Page';
        }
        field(30; "Search Additions"; Boolean)
        {
            Caption = 'Search Additions';
        }
        field(31; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(32; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(33; "File Name"; Text[250])
        {
            Caption = 'File Name';
            Editable = false;
        }
        field(40; "Attach To"; Option)
        {
            Caption = 'Attach To';
            OptionCaption = 'Both,Mail,Fax';
            OptionMembers = Both,Mail,Fax;
        }
        field(42; "Report Filter"; BLOB)
        {
            Caption = 'Reportfilter';
            Description = 'MAILW19.00.01';
        }
        field(50; Process; Option)
        {
            Caption = 'Process';
            Description = 'MAILW19.00.01';
            OptionCaption = ' ,Sales - Release Order Confirmation,Sales - Post Invoice,Sales - Post Credit Memo,Sales - Post Shipment,Purchase - Release Order,Purchase - Post Return Shipment,Purchase - Post Credit Memo';
            OptionMembers = " ",SalesOrderRelease,PostSalesInv,PostSalesCR,PostSalesShpt,PurchOrderRelease,PostPurchReturn,PostPurchCR;
        }
        field(51; "Add Document"; Boolean)
        {
            Caption = 'Add Document';
            Description = 'MAILW19.00.01';
        }
        field(52; Subject; Text[250])
        {
            Caption = 'Subject';
            Description = 'MAILW19.00.01';
        }
    }

    keys
    {
        key(Key1; "Record Type", "Report ID", "Language Code", "Link to Table", "No.", "Entry No.")
        {
            Clustered = true;
            MaintainSIFTIndex = false;
            SQLIndex = "Record Type", "Report ID", "Language Code", "Link to Table", "No.", "Entry No.";
        }
    }

    fieldgroups
    {
    }
}

