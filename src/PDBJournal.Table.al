table 5013876 "PDB Journal"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00.00.01:6:01 #When SQL-Server is used, the Order of Code fields are used in another way. Field 1: SQL Data Type = BigInteger
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'PDB Journal';
    DataCaptionFields = "No.";

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
            SQLDataType = BigInteger;
        }
        field(2; User; Text[50])
        {
            Caption = 'User';
        }
        field(3; "Journal Date"; Date)
        {
            Caption = 'Journal Date';
        }
        field(4; "Journal Time"; Time)
        {
            Caption = 'Journal Time';
        }
        field(5; Problems; Integer)
        {
            Caption = 'Problems';
        }
        field(6; Records; Integer)
        {
            Caption = 'Records';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

