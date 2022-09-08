table 5001905 "Bank Branch No."
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'Bank Branch No.';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            CharAllowed = '09';
            NotBlank = true;
            Numeric = true;
        }
        field(2; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
        }
        field(3; City; Text[30])
        {
            Caption = 'City';
        }
        field(4; "Post Code"; Text[15])
        {
            Caption = 'Post code';
        }
        field(5; PAN; Text[5])
        {
            Caption = 'PAN';
        }
        field(6; "Swift/BIC"; Text[11])
        {
            Caption = 'Swift/BIC';
        }
        field(7; "Change indicator"; Text[1])
        {
            Caption = 'Change indicator';
        }
        field(8; "Succession Bank Branch No"; Text[8])
        {
            Caption = 'Succession Bank Branch No';
        }
        field(9; "Bank Branch No. Leader"; Boolean)
        {
            Caption = 'Bank Branch No. Leader';
        }
        field(10; "Short Discription"; Code[27])
        {
            Caption = 'Short Discription';
        }
        field(11; "Check digit indicator"; Text[2])
        {
            Caption = 'Check digit indicator';
        }
        field(12; "Record No."; Code[6])
        {
            Caption = 'Record No.';
        }
        field(13; "Delete indicator"; Boolean)
        {
            Caption = 'Delete indicator';
        }
        field(14; "Import valid until"; Date)
        {
            Caption = 'Import valid until';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; City)
        {
        }
        key(Key3; "Bank Name")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Code", "Bank Name", City)
        {
        }
    }
}

