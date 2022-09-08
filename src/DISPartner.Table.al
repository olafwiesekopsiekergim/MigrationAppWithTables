table 5100910 "DIS - Partner"
{
    // cc|data integration suite - base (CCDIS)
    // cc|data integration suite - intercompany (CCDISIC)

    Caption = 'Partner';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(8; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(20; "Transport Type"; Option)
        {
            Caption = 'Transport Type';
            Description = 'CCDISIC';
            InitValue = Company;
            OptionCaption = 'None,Company,Message File Directory,Web Service,XML File Directory';
            OptionMembers = "None",Company,MessageFileDirectory,WebService,XmlFileDirectory;
        }
        field(21; "Partner Matrix Active"; Boolean)
        {
            Caption = 'Show in Partner Matrix';
        }
        field(30; "Company Name"; Text[30])
        {
            Caption = 'Company Name';
            TableRelation = Company;
        }
        field(40; "File Exchange Directory"; Text[250])
        {
            Caption = 'File Exchance Directory';
        }
        field(50; "Web Service Url"; Text[250])
        {
            Caption = 'Web Service URL';
        }
        field(51; "Web Service Timeout"; Integer)
        {
            Caption = 'Web Service Timeout (ms)';
            InitValue = 60000;
        }
        field(80; Categories; Boolean)
        {
            CalcFormula = Exist ("DIS - Linked Category" WHERE ("Partner Code" = FIELD (Code),
                                                               "Category Code" = FIELD ("Category Filter")));
            Caption = 'Categories';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Category Filter"; Code[20])
        {
            Caption = 'Category Filter';
            FieldClass = FlowFilter;
        }
        field(1000; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(1001; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(1020; "Setup Sender Code"; Code[20])
        {
            Caption = 'Setup Sender Code';
            TableRelation = "DIS - Partner";
            ValidateTableRelation = false;
        }
        field(1100; "Partner Text Value 1"; Text[50])
        {
            Caption = 'Partner Text Value 1';
        }
        field(1101; "Partner Text Value 2"; Text[50])
        {
            Caption = 'Partner Text Value 2';
        }
        field(1110; "Partner Integer Value 1"; Integer)
        {
            Caption = 'Partner Integer Value 1';
        }
        field(1111; "Partner Integer Value 2"; Integer)
        {
            Caption = 'Partner Integer Value 2';
        }
        field(1121; "Partner Decimal Value 1"; Decimal)
        {
            Caption = 'Partner Decimal Value 1';
        }
        field(1122; "Partner Decimal Value 2"; Decimal)
        {
            Caption = 'Partner Decimal Value 2';
        }
        field(1130; "Partner Bool Value 1"; Boolean)
        {
            Caption = 'Partner Bool Value 1';
        }
        field(1131; "Partner Bool Value 2"; Boolean)
        {
            Caption = 'Partner Bool Value 2';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

