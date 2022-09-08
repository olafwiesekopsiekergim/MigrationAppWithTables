table 5100955 "DIS - Mapping Repository"
{
    // cc|data integration suite - base (CCDIS)
    // cc|data integration suite - intercompany (CCDISIC)

    Caption = 'Mapping Repository';
    DataPerCompany = false;

    fields
    {
        field(1; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            TableRelation = "DIS - Mapping";
        }
        field(2; "Version No."; Integer)
        {
            Caption = 'Version No.';
            TableRelation = "DIS - Mapping Version"."No." WHERE ("Mapping Code" = FIELD ("Mapping Code"));
        }
        field(3; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(15; "Field Structure"; BLOB)
        {
            Caption = 'Field Structure';
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'NAV Table,Record Pool,XML Node,ADO Table,SharePoint List';
            OptionMembers = NAV,RecordPool,XML,ADO,SharePoint;
        }
        field(30; "NAV Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            TableRelation = IF (Type = CONST (NAV)) AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(31; "NAV Table Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("NAV Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "NAV Temporary Table"; Boolean)
        {
            Caption = 'Temporary Table';
        }
        field(33; "NAV Company Name"; Text[30])
        {
            Caption = 'Company Name';
            Description = 'CCDISIC';
            TableRelation = Company;
        }
        field(34; "NAV Partner ChangeCompany"; Boolean)
        {
            Caption = 'Company of Partner';
            Description = 'CCDISIC';
        }
        field(35; "NAV Key Index"; Integer)
        {
            BlankZero = true;
            Caption = 'Key Index';
            TableRelation = Key."No." WHERE (TableNo = FIELD ("NAV Table No."));
        }
        field(36; "NAV Key Descending"; Boolean)
        {
            Caption = 'Sort Key Descending';
        }
        field(37; "NAV Key Description"; Text[250])
        {
            CalcFormula = Lookup (Key.Key WHERE (TableNo = FIELD ("NAV Table No."),
                                                "No." = FIELD ("NAV Key Index")));
            Caption = 'Key Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Record Pool Code"; Code[20])
        {
            Caption = 'Record Pool Code';
            TableRelation = "DIS - Record Pool";
        }
        field(41; "Record Pool Table No."; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("DIS - Record Pool"."Table No." WHERE (Code = FIELD ("Record Pool Code")));
            Caption = 'Record Pool Table No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42; "Record Pool Partner Records"; Boolean)
        {
            Caption = 'Use Partner Matrix';
        }
        field(43; "Record Pool Record Frequency"; Option)
        {
            Caption = 'Permitted Record Frequency';
            OptionCaption = 'Unrestricted,Once';
            OptionMembers = Unrestricted,Once;
        }
        field(44; "Record Pool Rec. Freq. Error"; Option)
        {
            Caption = 'Record Frequency Error Handling';
            OptionCaption = 'Skip Record,Create Warning and Skip,Create Warning and Process,Create Error';
            OptionMembers = Skip,WarningSkip,WarningProcess,Error;
        }
        field(45; "Record Pool Rec. Not Exist"; Option)
        {
            Caption = 'Rec. Not Exist Handling';
            OptionCaption = 'Error,Skip As Processed';
            OptionMembers = Error,SkipAsProcessed;
        }
        field(50; "XML Node Name"; Text[80])
        {
            Caption = 'XML Node Name';
        }
        field(51; "XML Parent Node"; Code[20])
        {
            Caption = 'Parent XML Node';
            TableRelation = "DIS - Mapping Repository".Code WHERE ("Mapping Code" = FIELD ("Mapping Code"),
                                                                   "Version No." = FIELD ("Version No."),
                                                                   Type = CONST (XML));
        }
        field(60; "ADO Interface Code"; Code[20])
        {
            Caption = 'ADO Interface Code';
            TableRelation = "DIS - ADO Interface";
        }
        field(61; "ADO Table Name"; Text[50])
        {
            Caption = 'ADO Table Name';
        }
        field(65; "ADO Select Command Postfix"; Text[150])
        {
            Caption = 'ADO Select Command Postfix';
        }
        field(70; "SharePoint Server Url"; Text[50])
        {
            Caption = 'SharePoint Server URL';
        }
        field(71; "SharePoint Site Url"; Text[80])
        {
            Caption = 'SharePoint Site URL';
        }
        field(72; "SharePoint List Guid"; Text[50])
        {
            Caption = 'SharePoint List GUID';
        }
        field(73; "SharePoint List Display Name"; Text[50])
        {
            Caption = 'SharePoint List Display Name';
            Editable = false;
        }
        field(75; "SharePoint User Domain"; Text[80])
        {
            Caption = 'SharePoint User Domain';
        }
        field(76; "SharePoint User Name"; Text[250])
        {
            Caption = 'SharePoint User Name';
        }
        field(77; "SharePoint User Password"; Text[250])
        {
            Caption = 'SharePoint User Password';
            ExtendedDatatype = Masked;
        }
        field(78; "SharePoint Database User"; Boolean)
        {
            Caption = 'SharePoint Database User (FBA)';
        }
        field(79; "SharePoint Office 365 User"; Boolean)
        {
            Caption = 'SharePoint Office 365 User';
        }
        field(120; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(270; "SharePoint Folder Variable Key"; Text[30])
        {
            Caption = 'SharePoint Folder Variable Key';
        }
        field(271; "SharePoint List Root Folder"; Text[150])
        {
            Caption = 'SharePoint List Root Folder';
            Editable = false;
        }
        field(275; "SharePoint Query Postfix"; Text[150])
        {
            Caption = 'Query Node Postfix';
        }
    }

    keys
    {
        key(Key1; "Mapping Code", "Version No.", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", Type, Description)
        {
        }
    }
}

