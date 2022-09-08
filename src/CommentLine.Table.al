table 97 "Comment Line"
{
    // cc|formatted documents (CCFD)
    // cc|formatted documents - Flow Text Editor (CCFTE)
    // 
    // #FDW18.00.05:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration
    // 
    // #FTEW18.00:T100 DEDRS.RKRA 15.06.2015
    //   New key "FD Frame No." and module integration

    Caption = 'Comment Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = 'G/L Account,Customer,Vendor,Item,Resource,Job,,Resource Group,Bank Account,Campaign,Fixed Asset,Insurance,Nonstock Item,IC Partner';
            OptionMembers = "G/L Account",Customer,Vendor,Item,Resource,Job,,"Resource Group","Bank Account",Campaign,"Fixed Asset",Insurance,"Nonstock Item","IC Partner";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table Name" = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Table Name" = CONST (Customer)) Customer
            ELSE
            IF ("Table Name" = CONST (Vendor)) Vendor
            ELSE
            IF ("Table Name" = CONST (Item)) Item
            ELSE
            IF ("Table Name" = CONST (Resource)) Resource
            ELSE
            IF ("Table Name" = CONST (Job)) Job
            ELSE
            IF ("Table Name" = CONST ("Resource Group")) "Resource Group"
            ELSE
            IF ("Table Name" = CONST ("Bank Account")) "Bank Account"
            ELSE
            IF ("Table Name" = CONST (Campaign)) Campaign
            ELSE
            IF ("Table Name" = CONST ("Fixed Asset")) "Fixed Asset"
            ELSE
            IF ("Table Name" = CONST (Insurance)) Insurance
            ELSE
            IF ("Table Name" = CONST ("IC Partner")) "IC Partner";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(5305932; "FD Blob"; BLOB)
        {
            Caption = 'FD Blob';
            Description = 'CCFD,CCFTE';
        }
        field(5305933; "FD SHA-256"; Text[64])
        {
            Caption = 'FD SHA-256';
            Description = 'CCFD,CCFTE';
        }
        field(5305934; "FD Size KB"; Decimal)
        {
            Caption = 'FD Size KB';
            DecimalPlaces = 0 : 5;
            Description = 'CCFD,CCFTE';
        }
        field(5305935; "FD Frame No."; Integer)
        {
            Caption = 'FD Frame No.';
            Description = 'CCFD,CCFTE';
        }
    }

    keys
    {
        key(Key1; "Table Name", "No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "FD Frame No.")
        {
        }
    }

    fieldgroups
    {
    }
}

