table 743 "VAT Report Setup"
{
    Caption = 'VAT Report Setup';

    fields
    {
        field(1; "Primary key"; Code[10])
        {
            Caption = 'Primary key';
        }
        field(2; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(3; "Modify Submitted Reports"; Boolean)
        {
            Caption = 'Modify Submitted Reports';
        }
        field(11000; "Source Identifier"; Text[11])
        {
            Caption = 'Source Identifier';
        }
        field(11001; "Transmission Process ID"; Text[3])
        {
            Caption = 'Transmission Process ID';
        }
        field(11002; "Supplier ID"; Text[3])
        {
            Caption = 'Supplier ID';
        }
        field(11003; Codepage; Option)
        {
            Caption = 'Codepage';
            OptionCaption = 'IBM-850,EBCDIC273,EBCDIC1141';
            OptionMembers = "IBM-850",EBCDIC273,EBCDIC1141;
        }
        field(11004; "Registration ID"; Text[6])
        {
            Caption = 'Registration ID';
        }
        field(11005; "Export Cancellation Lines"; Boolean)
        {
            Caption = 'Export Cancellation Lines';
        }
        field(11006; "Company Name"; Text[100])
        {
            Caption = 'Company Name';
        }
        field(11007; "Company Address"; Text[30])
        {
            Caption = 'Company Address';
        }
        field(11008; "Company City"; Text[30])
        {
            Caption = 'Company City';
        }
    }

    keys
    {
        key(Key1; "Primary key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

