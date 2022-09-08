table 5034550 "Test Location"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Test Location';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; Address; Text[30])
        {
            Caption = 'Address';
        }
        field(4; "Address 2"; Text[30])
        {
            Caption = 'Address 2';
        }
        field(5; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(6; City; Text[30])
        {
            Caption = 'City';
        }
        field(7; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
        }
        field(8; "Fax No."; Text[30])
        {
            Caption = 'Fax No.';
        }
        field(9; "Name 2"; Text[30])
        {
            Caption = 'Name 2';
        }
        field(10; Contact; Text[30])
        {
            Caption = 'Contact';
        }
        field(11; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(12; "Create Sample Shipment"; Boolean)
        {
            Caption = 'Create Sample Shipment';
        }
        field(14; External; Boolean)
        {
            Caption = 'External';
        }
        field(20; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
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

