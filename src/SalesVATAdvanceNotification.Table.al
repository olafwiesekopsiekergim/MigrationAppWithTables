table 11011 "Sales VAT Advance Notification"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date        changed
    // -----------------------------------------------------
    // TAX  01.11.08    Balance and Taxes
    //                  - New Field added
    //                  - New Functions Added
    // -----------------------------------------------------

    Caption = 'Sales VAT Advance Notification';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(4; "XML Submission Document"; BLOB)
        {
            Caption = 'XML Submission Document';
        }
        field(5; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(6; Period; Option)
        {
            Caption = 'Period';
            OptionCaption = 'Month,Quarter';
            OptionMembers = Month,Quarter;
        }
        field(7; "XML-File Creation Date"; Date)
        {
            Caption = 'XML-File Creation Date';
            Editable = false;
        }
        field(8; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(9; "XSL-Filename"; Text[250])
        {
            Caption = 'XSL-Filename';
        }
        field(10; "XSD-Filename"; Text[250])
        {
            Caption = 'XSD-Filename';
        }
        field(11; "Statement Template Name"; Code[10])
        {
            Caption = 'Statement Template Name';
            Editable = false;
            TableRelation = "VAT Statement Template";
        }
        field(12; "Statement Name"; Code[10])
        {
            Caption = 'Statement Name';
            Editable = false;
            TableRelation = "VAT Statement Name".Name WHERE ("Statement Template Name" = FIELD ("Statement Template Name"));
        }
        field(13; "Incl. VAT Entries (Closing)"; Option)
        {
            Caption = 'Incl. VAT Entries (Closing)';
            OptionCaption = 'Open,Closed,Open and Closed';
            OptionMembers = Open,Closed,"Open and Closed";
        }
        field(14; "Incl. VAT Entries (Period)"; Option)
        {
            Caption = 'Incl. VAT Entries (Period)';
            OptionCaption = 'Within Period,Before and Within Period';
            OptionMembers = "Within Period","Before and Within Period";
        }
        field(15; "Corrected Notification"; Boolean)
        {
            Caption = 'Corrected Notification';
        }
        field(16; "Offset Amount of Refund"; Boolean)
        {
            Caption = 'Offset Amount of Refund';
        }
        field(17; "Cancel Order for Direct Debit"; Boolean)
        {
            Caption = 'Cancel Order for Direct Debit';
        }
        field(18; "Transmission successful"; Boolean)
        {
            CalcFormula = Exist ("Transmission Log Entry" WHERE ("Sales VAT Adv. Notif. No." = FIELD ("No."),
                                                                "Transmission successful" = CONST (true)));
            Caption = 'Transmission successful';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Amounts in Add. Rep. Currency"; Boolean)
        {
            Caption = 'Amounts in Add. Rep. Currency';
            InitValue = false;
        }
        field(20; Testversion; Boolean)
        {
            Caption = 'Testversion';
        }
        field(24; "Additional Information"; Text[250])
        {
            Caption = 'Additional Information';
        }
        field(25; "Contact for Tax Office"; Text[30])
        {
            Caption = 'Contact for Tax Office';
        }
        field(26; "Contact Phone No."; Text[20])
        {
            Caption = 'Contact Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(27; "Contact E-Mail"; Text[70])
        {
            Caption = 'Contact E-Mail';
            ExtendedDatatype = EMail;
        }
        field(30; "Documents Submitted Separately"; Boolean)
        {
            Caption = 'Documents Submitted Separately';
        }
        field(5157882; Affiliation; Boolean)
        {
            Caption = 'Affiliation';
            Description = 'TAX';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Starting Date")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description)
        {
        }
    }
}

