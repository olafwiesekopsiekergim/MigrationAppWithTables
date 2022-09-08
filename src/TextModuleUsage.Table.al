table 5060605 "Text Module Usage"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00.01:T100 14.10.10 DEMSR.SSZ
    //   #Addtional Filter for text assignment
    //   #Fields inserted: "Field Filter No.","Field Filter Term"
    //   #"Field Filter No." new in PrimaryKey
    // #TMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 07.08.14 DEMSR.SSZ
    //   #New Text Module technique
    //   #Deleted fields "Code 3" to "Code 8" and changed PK
    // 
    // #DMW16.00.01.99:A1000   19.04.2010 DEMSR.SSZ New Primary Key fields : Field 7,8,9

    Caption = 'Text Module Usage';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
        field(2; "Code 1"; Code[20])
        {
            Caption = 'Code 1';
        }
        field(3; "Code 2"; Code[20])
        {
            Caption = 'Code 2';
        }
        field(20; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language.Code;
        }
        field(25; "Text No."; Integer)
        {
            Caption = 'Text No.';
            Editable = false;
        }
        field(30; "Use for Type"; Option)
        {
            Caption = 'Use for Type';
            OptionCaption = 'Customer,Vendor,Customers with Country Code,Vendors with Country Code,Customers (Field Filter),Vendors (Field Filter)';
            OptionMembers = Customer,Vendor,"Customers with Country Code","Vendors with Country Code","Customers (Field Filter)","Vendors (Field Filter)";
        }
        field(35; "Use for Code"; Code[20])
        {
            Caption = 'Use for Code';
            TableRelation = IF ("Use for Type" = CONST (Customer)) Customer."No."
            ELSE
            IF ("Use for Type" = CONST (Vendor)) Vendor."No."
            ELSE
            IF ("Use for Type" = CONST ("Customers with Country Code")) "Country/Region".Code
            ELSE
            IF ("Use for Type" = CONST ("Vendors with Country Code")) "Country/Region".Code;
        }
        field(40; Name; Text[50])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(45; "Field Filter No."; Integer)
        {
            BlankZero = true;
            Caption = 'Field Filter No.';
            Description = '#TMW16.00.01:T100';
        }
        field(50; "Field Filter Term"; Text[250])
        {
            Caption = 'Field Filter Term';
            Description = '#TMW16.00.01:T100';
        }
    }

    keys
    {
        key(Key1; "Table ID", "Code 1", "Code 2", "Language Code", "Text No.", "Use for Type", "Use for Code", "Field Filter No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

