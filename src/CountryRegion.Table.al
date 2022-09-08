table 9 "Country/Region"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // OPP  01.02.13   OPplus Granule
    //                 - New Fields added
    // -----------------------------------------------------
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn      21.10.2015  BASE     akq        Implementing dynamo Products
    // ================================================================================

    Caption = 'Country/Region';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(6; "EU Country/Region Code"; Code[10])
        {
            Caption = 'EU Country/Region Code';
        }
        field(7; "Intrastat Code"; Code[10])
        {
            Caption = 'Intrastat Code';
        }
        field(8; "Address Format"; Option)
        {
            Caption = 'Address Format';
            InitValue = "City+Post Code";
            OptionCaption = 'Post Code+City,City+Post Code,City+County+Post Code,Blank Line+Post Code+City';
            OptionMembers = "Post Code+City","City+Post Code","City+County+Post Code","Blank Line+Post Code+City";
        }
        field(9; "Contact Address Format"; Option)
        {
            Caption = 'Contact Address Format';
            InitValue = "After Company Name";
            OptionCaption = 'First,After Company Name,Last';
            OptionMembers = First,"After Company Name",Last;
        }
        field(10; "VAT Scheme"; Code[10])
        {
            Caption = 'VAT Scheme';
        }
        field(5001901; "Bank Country Code"; Code[3])
        {
            Caption = 'Bank Country Code';
            Description = 'DYNPMT';
            TableRelation = "Bank Country Code";
        }
        field(5001902; "EU Standard"; Boolean)
        {
            Caption = 'EU Standard';
            Description = 'DYNPMT';
        }
        field(5001903; "max. IBAN Length"; Integer)
        {
            Caption = 'max IBAN Length';
            Description = 'DYNPMT';
        }
        field(5001904; "Length of Bank Branch Code"; Integer)
        {
            Caption = 'Length of Bank Branch Code';
            Description = 'DYNPMT';
        }
        field(5001905; "Length of Creditor-ID"; Integer)
        {
            Caption = 'Length of Creditor-ID';
            Description = 'DYNPMT';
        }
        field(5001906; "Is SEPA"; Boolean)
        {
            Caption = 'Is SEPA';
            Description = 'DYNPMT';
        }
        field(5001907; "Length of IBAN Check Digit dif"; Boolean)
        {
            Caption = 'Length of IBAN Check Digit differs';
            Description = 'DYNPMT';
        }
        field(5001908; "Length of IBAN Check Digit"; Integer)
        {
            Caption = 'Length of IBAN Check Digit';
            Description = 'DYNPMT';
        }
        field(5157892; "Default Length Branch Code"; Integer)
        {
            Caption = 'Default Length Branch Code';
            Description = 'PMT';
        }
        field(5157893; "Default Length Account No."; Integer)
        {
            Caption = 'Default Length Account No.';
            Description = 'PMT';
        }
        field(5157894; "ISO Bank Code"; Code[3])
        {
            Caption = 'ISO Bank Code';
            Description = 'PMT';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "EU Country/Region Code")
        {
        }
        key(Key3; "Intrastat Code")
        {
        }
        key(Key4; Name)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "Code", Name, "VAT Scheme")
        {
        }
    }
}

