table 79 "Company Information"
{
    // #RENW18.00.00.08:T501 31.07.15 DEMSR.KHS
    //   Filter out Rental Locations on field "Location Code"

    Caption = 'Company Information';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(4; Address; Text[50])
        {
            Caption = 'Address';
        }
        field(5; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
        }
        field(6; City; Text[30])
        {
            Caption = 'City';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            ExtendedDatatype = PhoneNo;
        }
        field(8; "Phone No. 2"; Text[30])
        {
            Caption = 'Phone No. 2';
            ExtendedDatatype = PhoneNo;
        }
        field(9; "Telex No."; Text[30])
        {
            Caption = 'Telex No.';
        }
        field(10; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(11; "Giro No."; Text[20])
        {
            Caption = 'Giro No.';
        }
        field(12; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
        }
        field(13; "Bank Branch No."; Text[20])
        {
            Caption = 'Bank Branch No.';
        }
        field(14; "Bank Account No."; Text[30])
        {
            Caption = 'Bank Account No.';
        }
        field(15; "Payment Routing No."; Text[20])
        {
            Caption = 'Payment Routing No.';
        }
        field(17; "Customs Permit No."; Text[10])
        {
            Caption = 'Customs Permit No.';
        }
        field(18; "Customs Permit Date"; Date)
        {
            Caption = 'Customs Permit Date';
        }
        field(19; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(20; "Registration No."; Text[20])
        {
            Caption = 'Registration No.';
        }
        field(21; "Telex Answer Back"; Text[20])
        {
            Caption = 'Telex Answer Back';
        }
        field(22; "Ship-to Name"; Text[50])
        {
            Caption = 'Ship-to Name';
        }
        field(23; "Ship-to Name 2"; Text[50])
        {
            Caption = 'Ship-to Name 2';
        }
        field(24; "Ship-to Address"; Text[50])
        {
            Caption = 'Ship-to Address';
        }
        field(25; "Ship-to Address 2"; Text[50])
        {
            Caption = 'Ship-to Address 2';
        }
        field(26; "Ship-to City"; Text[30])
        {
            Caption = 'Ship-to City';
            TableRelation = IF ("Ship-to Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Ship-to Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Ship-to Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(27; "Ship-to Contact"; Text[50])
        {
            Caption = 'Ship-to Contact';
        }
        field(28; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Description = '#RENW18.00.00.08:T501';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false),
                                            "Use As Rental Location" = CONST (false),
                                            "Use As - Rented" = CONST (false));
        }
        field(29; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(30; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = IF ("Country/Region Code" = CONST ('')) "Post Code".Code
            ELSE
            IF ("Country/Region Code" = FILTER (<> '')) "Post Code".Code WHERE ("Country/Region Code" = FIELD ("Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(31; County; Text[30])
        {
            Caption = 'County';
        }
        field(32; "Ship-to Post Code"; Code[20])
        {
            Caption = 'Ship-to Post Code';
            TableRelation = IF ("Ship-to Country/Region Code" = CONST ('')) "Post Code".Code
            ELSE
            IF ("Ship-to Country/Region Code" = FILTER (<> '')) "Post Code".Code WHERE ("Country/Region Code" = FIELD ("Ship-to Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(33; "Ship-to County"; Text[30])
        {
            Caption = 'Ship-to County';
        }
        field(34; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(35; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
            ExtendedDatatype = URL;
        }
        field(36; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(37; "Ship-to Country/Region Code"; Code[10])
        {
            Caption = 'Ship-to Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(38; IBAN; Code[50])
        {
            Caption = 'IBAN';
        }
        field(39; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
        }
        field(40; "Industrial Classification"; Text[30])
        {
            Caption = 'Industrial Classification';
        }
        field(41; "IC Partner Code"; Code[20])
        {
            AccessByPermission = TableData "IC G/L Account" = R;
            Caption = 'IC Partner Code';
        }
        field(42; "IC Inbox Type"; Option)
        {
            AccessByPermission = TableData "IC G/L Account" = R;
            Caption = 'IC Inbox Type';
            OptionCaption = 'File Location,Database';
            OptionMembers = "File Location",Database;
        }
        field(43; "IC Inbox Details"; Text[250])
        {
            AccessByPermission = TableData "IC G/L Account" = R;
            Caption = 'IC Inbox Details';
        }
        field(46; "System Indicator"; Option)
        {
            Caption = 'System Indicator';
            OptionCaption = 'None,Custom Text,Company Information,Company,Database,Company+Database';
            OptionMembers = "None","Custom Text","Company Information",Company,Database,"Company+Database";
        }
        field(47; "Custom System Indicator Text"; Text[250])
        {
            Caption = 'Custom System Indicator Text';
        }
        field(48; "System Indicator Style"; Option)
        {
            Caption = 'System Indicator Style';
            OptionCaption = 'Standard,Accent1,Accent2,Accent3,Accent4,Accent5,Accent6,Accent7,Accent8,Accent9';
            OptionMembers = Standard,Accent1,Accent2,Accent3,Accent4,Accent5,Accent6,Accent7,Accent8,Accent9;
        }
        field(50; "Allow Blank Payment Info."; Boolean)
        {
            Caption = 'Allow Blank Payment Info.';
        }
        field(90; GLN; Code[13])
        {
            Caption = 'GLN';
            Numeric = true;
        }
        field(92; "EORI Number"; Text[40])
        {
            Caption = 'EORI Number';
        }
        field(101; "Intrastat Contact Type"; Option)
        {
            Caption = 'Intrastat Contact Type';
            OptionCaption = ' ,Contact,Vendor';
            OptionMembers = " ",Contact,Vendor;
        }
        field(102; "Intrastat Contact No."; Code[20])
        {
            Caption = 'Intrastat Contact No.';
            TableRelation = IF ("Intrastat Contact Type" = CONST (Contact)) Contact."No."
            ELSE
            IF ("Intrastat Contact Type" = CONST (Vendor)) Vendor."No.";
        }
        field(5700; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center".Code;
            ValidateTableRelation = true;
        }
        field(5791; "Check-Avail. Period Calc."; DateFormula)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Check-Avail. Period Calc.';
        }
        field(5792; "Check-Avail. Time Bucket"; Option)
        {
            AccessByPermission = TableData Item = R;
            Caption = 'Check-Avail. Time Bucket';
            OptionCaption = 'Day,Week,Month,Quarter,Year';
            OptionMembers = Day,Week,Month,Quarter,Year;
        }
        field(7600; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            TableRelation = "Base Calendar";
        }
        field(7601; "Cal. Convergence Time Frame"; DateFormula)
        {
            AccessByPermission = TableData "Base Calendar" = R;
            Caption = 'Cal. Convergence Time Frame';
            InitValue = '1Y';
        }
        field(11000; "Area"; Code[10])
        {
            Caption = 'Area';
            TableRelation = Area;
        }
        field(11001; "Place of Dispatcher"; Code[10])
        {
            Caption = 'Place of Dispatcher';
            TableRelation = "Place of Dispatcher";
        }
        field(11002; "Place of Receiver"; Code[10])
        {
            Caption = 'Place of Receiver';
            TableRelation = "Place of Receiver";
        }
        field(11003; "Sales Authorized No."; Code[8])
        {
            Caption = 'Sales Authorized No. (ASCII)';
        }
        field(11004; "Purch. Authorized No."; Code[8])
        {
            Caption = 'Purch. Authorized No. (ASCII)';
        }
        field(11005; "Company No."; Text[10])
        {
            Caption = 'Company No./Material No. (XML)';
        }
        field(11006; "Special Agreement"; Text[20])
        {
            Caption = 'Special Agreement';
        }
        field(11007; "Agency No."; Text[10])
        {
            Caption = 'Agency No.';
        }
        field(11008; "Tax Office Name"; Text[50])
        {
            Caption = 'Tax Office Name';
        }
        field(11009; "Tax Office Name 2"; Text[50])
        {
            Caption = 'Tax Office Name 2';
        }
        field(11010; "Tax Office Address"; Text[50])
        {
            Caption = 'Tax Office Address';
        }
        field(11011; "Tax Office Address 2"; Text[50])
        {
            Caption = 'Tax Office Address 2';
        }
        field(11012; "Tax Office City"; Text[50])
        {
            Caption = 'Tax Office City';
            TableRelation = IF ("Tax Office Country/Region Code" = CONST ('')) "Post Code".City
            ELSE
            IF ("Tax Office Country/Region Code" = FILTER (<> '')) "Post Code".City WHERE ("Country/Region Code" = FIELD ("Tax Office Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11013; "Tax Office Post Code"; Code[20])
        {
            Caption = 'Tax Office Post Code';
            TableRelation = IF ("Tax Office Country/Region Code" = CONST ('')) "Post Code"
            ELSE
            IF ("Tax Office Country/Region Code" = FILTER (<> '')) "Post Code" WHERE ("Country/Region Code" = FIELD ("Tax Office Country/Region Code"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11014; "Tax Office Country/Region Code"; Code[10])
        {
            Caption = 'Tax Office Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(11015; "Tax Office County"; Text[30])
        {
            Caption = 'Tax Office County';
        }
        field(11016; "Tax Office Area"; Option)
        {
            Caption = 'Tax Office Area';
            OptionCaption = ' ,Schleswig-Holstein,Hamburg,Niedersachsen,Bremen,Nordrhein-Westfalen,Hessen,Rheinland-Pfalz,Baden-Württemberg,Bayern,Saarland,Brandenburg,Mecklenburg-Vorpommern,Sachsen,Sachsen-Anhalt,Thüringen,Berlin';
            OptionMembers = " ","Schleswig-Holstein",Hamburg,Niedersachsen,Bremen,"Nordrhein-Westfalen",Hessen,"Rheinland-Pfalz","Baden-Württemberg",Bayern,Saarland,Brandenburg,"Mecklenburg-Vorpommern",Sachsen,"Sachsen-Anhalt","Thüringen",Berlin;
        }
        field(11017; "Check Transport Method"; Boolean)
        {
            Caption = 'Check Transport Method';
            InitValue = true;
        }
        field(11018; "Check Transaction Specific."; Boolean)
        {
            Caption = 'Check Transaction Specific.';
            InitValue = true;
        }
        field(11019; "VAT Representative"; Text[45])
        {
            Caption = 'VAT Representative';
        }
        field(11050; "Participant No."; Text[10])
        {
            Caption = 'Participant No.';
        }
        field(11051; "Check for Partner VAT ID"; Boolean)
        {
            Caption = 'Check for Partner VAT ID';
            InitValue = true;
        }
        field(11052; "Check for Country of Origin"; Boolean)
        {
            Caption = 'Check for Country of Origin';
            InitValue = true;
        }
        field(11100; "Statistic No."; Code[20])
        {
            Caption = 'Statistic No.';
        }
        field(11101; "Control No."; Code[20])
        {
            Caption = 'Control No.';
        }
        field(11102; "DVR Number"; Code[20])
        {
            Caption = 'DVR Number';
        }
        field(11103; "Tax Office Number"; Code[4])
        {
            Caption = 'Tax Office Number';
            Numeric = true;
        }
        field(50500; "Picture 2"; BLOB)
        {
            SubType = Bitmap;
        }
        field(50501; "Picture 3"; BLOB)
        {
            SubType = Bitmap;
        }
        field(50502; "Black Logo"; BLOB)
        {
            Caption = 'Black Logo';
            DataClassification = ToBeClassified;
            Description = 'CC01';
            SubType = Bitmap;
        }
        field(50600; "Report Receipts"; Boolean)
        {
            Caption = 'Report Receipts';
        }
        field(50601; "Report Shipments"; Boolean)
        {
            Caption = 'Report Shipments';
        }
        field(42014822; "GPS Latitude"; Decimal)
        {
            Caption = 'GPS Latitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
        }
        field(42014823; "GPS Longitude"; Decimal)
        {
            Caption = 'GPS Longitude';
            DecimalPlaces = 0 : 7;
            Description = 'SNST1.0.0.0';
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

