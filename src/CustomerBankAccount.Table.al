table 287 "Customer Bank Account"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - New Field added
    //                 - 2nd Key Field added :
    //                   Bank Branch No.,Bank Account No.
    //                 - 3rd Key added:
    //                   IBAN
    // PMT  01.11.08   OPplus Payment
    //                 - New Fields added
    //                 - Lookup Bank Branch No.
    // -----------------------------------------------------
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'Customer Bank Account';
    DataCaptionFields = "Customer No.", "Code", Name;

    fields
    {
        field(1; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            NotBlank = true;
            TableRelation = Customer;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(5; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(6; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(7; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(8; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(9; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; Contact; Text[50])
        {
            Caption = 'Contact';
        }
        field(11; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(12; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
        }
        field(13; "Bank Branch No."; Text[20])
        {
            Caption = 'Bank Branch No.';
            TableRelation = "Bank Branch No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(14; "Bank Account No."; Text[30])
        {
            Caption = 'Bank Account No.';
        }
        field(15; "Transit No."; Text[20])
        {
            Caption = 'Transit No.';
        }
        field(16; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(17; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(18; County; Text[30])
        {
            Caption = 'County';
        }
        field(19; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(20; "Telex Answer Back"; Text[20])
        {
            Caption = 'Telex Answer Back';
        }
        field(21; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(22; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(23; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            ExtendedDatatype = URL;
        }
        field(24; IBAN; Code[50])
        {
            Caption = 'IBAN';
        }
        field(25; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
        }
        field(1211; "Bank Clearing Code"; Text[50])
        {
            Caption = 'Bank Clearing Code';
        }
        field(1212; "Bank Clearing Standard"; Text[50])
        {
            Caption = 'Bank Clearing Standard';
            TableRelation = "Bank Clearing Standard";
        }
        field(5001901; Clearing; Boolean)
        {
            Caption = 'Clearing';
            Description = 'DYNPMT';
        }
        field(5001902; "Alternative Account Owner"; Text[50])
        {
            Caption = 'Alternative Account Owner';
            Description = 'DYNPMT';
        }
        field(5001903; "Date of Signature"; Date)
        {
            Caption = 'Date of Signature';
            Description = 'DYNPMT';
        }
        field(5001904; "Mandate Identification"; Text[35])
        {
            Caption = 'Mandate Identification';
            Description = 'DYNPMT';
        }
        field(5001905; "Amendment Indicator"; Boolean)
        {
            Caption = 'Amendment Indicator';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001906; "Amendment Info Details"; Text[35])
        {
            Caption = 'Amendment Info Details';
            Description = 'DYNPMT';
        }
        field(5001907; "Last Payment Date"; Date)
        {
            Caption = 'Last Payment Date';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001908; "Reason of Amendment"; Text[35])
        {
            Caption = 'Reason of Amendment';
            Description = 'DYNPMT';
        }
        field(5001909; "Date of Amendment"; Date)
        {
            Caption = 'Änderungsdatum';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001910; "xAmendment Indicator"; Boolean)
        {
            Caption = 'xAmendment Indicator';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001911; "xLast Payment Date"; Date)
        {
            Caption = 'xLast Payment Date';
            Description = 'DYNPMT';
            Editable = false;
        }
        field(5001912; "Holder Name"; Text[50])
        {
            Caption = 'Holder Name';
            Description = 'DYNPMT';
        }
        field(5001913; "Holder Name 2"; Text[50])
        {
            Caption = 'Holder Name 2';
            Description = 'DYNPMT';
        }
        field(5001914; "Holder Address"; Text[50])
        {
            Caption = 'Holder Address';
            Description = 'DYNPMT';
        }
        field(5001915; "Holder Address 2"; Text[50])
        {
            Caption = 'Holder Address 2';
            Description = 'DYNPMT';
        }
        field(5001916; "Holder Post Code"; Code[20])
        {
            Caption = 'Holder Post Code';
            Description = 'DYNPMT';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5001917; "Holder City"; Text[30])
        {
            Caption = 'Holder City';
            Description = 'DYNPMT';
        }
        field(5001918; "Holder Mobile Phone"; Text[30])
        {
            Caption = 'Holder Mobile Phone';
            Description = 'DYNPMT';
            ExtendedDatatype = PhoneNo;
        }
        field(5001919; "Holder Fax"; Text[30])
        {
            Caption = 'Holder Fax';
            Description = 'DYNPMT';
        }
        field(5001920; "Holder e-Mail"; Text[80])
        {
            Caption = 'Holder E-Mail';
            Description = 'DYNPMT';
            ExtendedDatatype = EMail;
        }
        field(5001921; "Creditor-ID"; Code[35])
        {
            Caption = 'Creditor-ID';
            Description = 'DYNPMT';
        }
        field(5001922; "Base Calendar"; Code[10])
        {
            Caption = 'Base Calendar';
            Description = 'DYNPMT';
        }
        field(5001960; "IBAN / SWIFT approved"; Boolean)
        {
            Caption = 'IBAN / SWIFT approved';
            Description = 'DYNPMT';
        }
        field(5157802; "Inserted by Bank Import"; Boolean)
        {
            Caption = 'Inserted by Bank Import';
            Description = 'EA';
            Editable = false;
        }
        field(5157892; "Payment Type Code"; Code[10])
        {
            Caption = 'Payment Type Code';
            Description = 'PMT';
            TableRelation = "Payment Type Code";
        }
        field(5157893; Owner; Text[50])
        {
            Caption = 'Alt. Account Owner';
            Description = 'PMT';
        }
        field(5157894; "Mandate ID"; Code[35])
        {
            Caption = 'Mandate Id';
            Description = 'PMT';
            TableRelation = "Bank Account Mandate" WHERE ("Account Type" = CONST (Customer),
                                                          "Account No." = FIELD ("Customer No."),
                                                          Code = FIELD (Code));
            ValidateTableRelation = false;
        }
        field(5157895; "Mandate Date"; Date)
        {
            Caption = 'Mandate Date';
            Description = 'PMT';
        }
        field(5157896; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Description = 'PMT';
        }
        field(5157897; "Payment Method Code"; Code[10])
        {
            Caption = 'Payment Method Code';
            Description = 'PMT';
            TableRelation = "Payment Method";
        }
        field(5157898; "Mandate Type"; Option)
        {
            Caption = 'SEPA Type';
            Description = 'PMT';
            OptionCaption = 'CORE,B2B';
            OptionMembers = CORE,B2B;
        }
        field(5157899; "Mandate Frequency"; Option)
        {
            Caption = 'Type of Mandate';
            Description = 'PMT';
            InitValue = "Recurrent Payment";
            OptionCaption = 'One-off Payment,Recurrent Payment';
            OptionMembers = "One-off Payment","Recurrent Payment";
        }
        field(5157900; "Mandate Is Electronic"; Boolean)
        {
            Caption = 'e-Mandate';
            Description = 'PMT';
        }
        field(5157901; "Mandate On Behalf of Owner"; Boolean)
        {
            Caption = 'On Behalf of Owner';
            Description = 'PMT';
        }
        field(5157902; "Mandate Last Used"; Date)
        {
            Caption = 'Last Used';
            Description = 'PMT';
        }
        field(5157903; "Mandate Status"; Option)
        {
            Caption = 'Status of Mandate';
            Description = 'PMT';
            InitValue = FRST;
            OptionCaption = ' ,First,Recurring,Final';
            OptionMembers = " ",FRST,RCUR,FNAL;
        }
        field(5157904; "Alt. Reason Row 1"; Text[35])
        {
            Caption = 'Alt. Reason Row 1';
            Description = 'PMT';
        }
        field(5157905; "Alt. Reason Row 2"; Text[35])
        {
            Caption = 'Alt. Reason Row 2';
            Description = 'PMT';
        }
        field(5157906; "Owner Contact"; Code[20])
        {
            Caption = 'Owner Contact';
            Description = 'PMT';
            TableRelation = Contact;
        }
        field(5157907; "Alt. Creditor Identifier"; Code[38])
        {
            Caption = 'Alt. Creditor Identifier';
            Description = 'PMT';
        }
        field(5157908; "Hash Value Branch / Acc. No."; Text[50])
        {
            Caption = 'Hash Value Branch / Acc. No.';
            Description = 'PMT';
        }
        field(5157909; "Hash Value IBAN"; Text[50])
        {
            Caption = 'Hash Value IBAN';
            Description = 'PMT';
        }
        field(5157910; "Hash Value SWIFT / Acc. No."; Text[50])
        {
            Caption = 'Hash Value SWIFT / Acc. No.';
            Description = 'PMT';
        }
        field(5157911; "Valid to"; Date)
        {
            Caption = 'Valid to';
            Description = 'PMT';
        }
    }

    keys
    {
        key(Key1; "Customer No.", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Bank Branch No.", "Bank Account No.")
        {
        }
        key(Key3; IBAN)
        {
        }
        key(Key4; "Hash Value IBAN")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "Code", Name, "Phone No.", Contact)
        {
        }
    }
}

