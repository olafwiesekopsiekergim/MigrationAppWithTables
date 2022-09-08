table 5079 "Marketing Setup"
{
    // #PMW16.00.02:T250 15.10.10 DEMSR.KHS
    //   New field 5012583 "Virtual Customer No." added

    Caption = 'Marketing Setup';
    Permissions = TableData "Service Password" = rimd;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Contact Nos."; Code[10])
        {
            Caption = 'Contact Nos.';
            TableRelation = "No. Series";
        }
        field(3; "Campaign Nos."; Code[10])
        {
            AccessByPermission = TableData Campaign = R;
            Caption = 'Campaign Nos.';
            TableRelation = "No. Series";
        }
        field(4; "Segment Nos."; Code[10])
        {
            Caption = 'Segment Nos.';
            TableRelation = "No. Series";
        }
        field(5; "To-do Nos."; Code[10])
        {
            Caption = 'To-do Nos.';
            TableRelation = "No. Series";
        }
        field(6; "Opportunity Nos."; Code[10])
        {
            AccessByPermission = TableData "Sales Cycle" = R;
            Caption = 'Opportunity Nos.';
            TableRelation = "No. Series";
        }
        field(7; "Bus. Rel. Code for Customers"; Code[10])
        {
            Caption = 'Bus. Rel. Code for Customers';
            TableRelation = "Business Relation";
        }
        field(8; "Bus. Rel. Code for Vendors"; Code[10])
        {
            Caption = 'Bus. Rel. Code for Vendors';
            TableRelation = "Business Relation";
        }
        field(9; "Bus. Rel. Code for Bank Accs."; Code[10])
        {
            Caption = 'Bus. Rel. Code for Bank Accs.';
            TableRelation = "Business Relation";
        }
        field(22; "Inherit Salesperson Code"; Boolean)
        {
            Caption = 'Inherit Salesperson Code';
            InitValue = true;
        }
        field(23; "Inherit Territory Code"; Boolean)
        {
            Caption = 'Inherit Territory Code';
            InitValue = true;
        }
        field(24; "Inherit Country/Region Code"; Boolean)
        {
            Caption = 'Inherit Country/Region Code';
            InitValue = true;
        }
        field(25; "Inherit Language Code"; Boolean)
        {
            Caption = 'Inherit Language Code';
            InitValue = true;
        }
        field(26; "Inherit Address Details"; Boolean)
        {
            Caption = 'Inherit Address Details';
            InitValue = true;
        }
        field(27; "Inherit Communication Details"; Boolean)
        {
            Caption = 'Inherit Communication Details';
            InitValue = true;
        }
        field(28; "Default Salesperson Code"; Code[10])
        {
            Caption = 'Default Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(29; "Default Territory Code"; Code[10])
        {
            Caption = 'Default Territory Code';
            TableRelation = Territory;
        }
        field(30; "Default Country/Region Code"; Code[10])
        {
            Caption = 'Default Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(31; "Default Language Code"; Code[10])
        {
            Caption = 'Default Language Code';
            TableRelation = Language;
        }
        field(33; "Default Sales Cycle Code"; Code[10])
        {
            Caption = 'Default Sales Cycle Code';
            TableRelation = "Sales Cycle";
        }
        field(35; "Attachment Storage Type"; Option)
        {
            Caption = 'Attachment Storage Type';
            OptionCaption = 'Embedded,Disk File';
            OptionMembers = Embedded,"Disk File";
        }
        field(36; "Attachment Storage Location"; Text[250])
        {
            Caption = 'Attachment Storage Location';
        }
        field(37; "Autosearch for Duplicates"; Boolean)
        {
            Caption = 'Autosearch for Duplicates';
            InitValue = true;
        }
        field(38; "Search Hit %"; Integer)
        {
            Caption = 'Search Hit %';
            InitValue = 60;
            MaxValue = 100;
            MinValue = 1;
            NotBlank = true;
        }
        field(39; "Maintain Dupl. Search Strings"; Boolean)
        {
            Caption = 'Maintain Dupl. Search Strings';
            InitValue = true;
            NotBlank = true;
        }
        field(50; "Mergefield Language ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Mergefield Language ID';
            TableRelation = "Windows Language";
        }
        field(51; "Def. Company Salutation Code"; Code[10])
        {
            Caption = 'Def. Company Salutation Code';
            TableRelation = Salutation;
        }
        field(52; "Default Person Salutation Code"; Code[10])
        {
            Caption = 'Default Person Salutation Code';
            TableRelation = Salutation;
        }
        field(53; "Default Correspondence Type"; Option)
        {
            Caption = 'Default Correspondence Type';
            OptionCaption = ' ,Hard Copy,E-Mail,Fax';
            OptionMembers = " ","Hard Copy","E-Mail",Fax;
        }
        field(56; "Queue Folder Path"; Text[250])
        {
            Caption = 'Queue Folder Path';
            Editable = false;
        }
        field(57; "Queue Folder UID"; BLOB)
        {
            Caption = 'Queue Folder UID';
        }
        field(59; "Storage Folder Path"; Text[250])
        {
            Caption = 'Storage Folder Path';
            Editable = false;
        }
        field(60; "Storage Folder UID"; BLOB)
        {
            Caption = 'Storage Folder UID';
        }
        field(67; "Default To-do Date Calculation"; DateFormula)
        {
            Caption = 'Default To-do Date Calculation';
        }
        field(68; "Enable Connector"; Boolean)
        {
            Caption = 'Enable Connector';
        }
        field(69; "Autodiscovery E-Mail Address"; Text[250])
        {
            Caption = 'Autodiscovery E-Mail Address';
        }
        field(70; "Email Batch Size"; Integer)
        {
            Caption = 'Email Batch Size';
            MinValue = 0;
        }
        field(71; "Exchange Service URL"; Text[250])
        {
            Caption = 'Exchange Service URL';
        }
        field(72; "Exchange Account User Name"; Text[250])
        {
            Caption = 'Exchange Account User Name';
        }
        field(73; "Exchange Account Password Key"; Guid)
        {
            Caption = 'Exchange Account Password Key';
        }
        field(5012583; "Virtual Customer No."; Code[20])
        {
            Caption = 'Virtual Customer';
            Description = '#PMW16.00.02:T250';
            TableRelation = Customer;
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

