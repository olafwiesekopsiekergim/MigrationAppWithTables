table 5157814 Association
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EXT  01.11.08   Extended Application (Extension)
    //                 - Object created
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001477  09.02.2017  gbedv.ast   only use accounts for field Pmt. Account No.

    Caption = 'Association';

    fields
    {
        field(1; Type; Option)
        {
            BlankZero = true;
            Caption = 'Type';
            InitValue = Customer;
            NotBlank = true;
            OptionCaption = ',Customer,Vendor';
            OptionMembers = ,Customer,Vendor;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = Association."No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
            TableRelation = Association."No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
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
        }
        field(9; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(10; "Telex No."; Text[20])
        {
            Caption = 'Telex No.';
        }
        field(11; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(12; "Global Dimension 1 Filter"; Code[20])
        {
            Caption = 'Global Dimension 1 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(13; "Global Dimension 2 Filter"; Code[20])
        {
            Caption = 'Global Dimension 2 Filter';
            FieldClass = FlowFilter;
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(14; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            FieldClass = FlowFilter;
            TableRelation = Currency;
        }
        field(15; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            TableRelation = "Country/Region";
        }
        field(16; "Salespers./Purch. Code"; Code[10])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(18; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(19; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(20; County; Text[30])
        {
            Caption = 'County';
        }
        field(21; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(22; "Home Page"; Text[80])
        {
            Caption = 'Home Page';
        }
        field(23; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(24; "Leading Account No."; Code[20])
        {
            Caption = 'Leading Account No.';
            TableRelation = IF (Type = CONST (Customer)) Customer
            ELSE
            IF (Type = CONST (Vendor)) Vendor;
        }
        field(25; "Pmt. Account No."; Code[20])
        {
            Caption = 'Pmt. Account No.';
            TableRelation = "G/L Account";
        }
        field(26; "Keep old Entries"; Boolean)
        {
            Caption = 'Keep old Entries';
        }
    }

    keys
    {
        key(Key1; Type, "No.")
        {
            Clustered = true;
        }
        key(Key2; Type, "Leading Account No.")
        {
        }
    }

    fieldgroups
    {
    }
}

