table 5001963 "Import IBAN Back"
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


    fields
    {
        field(1; "Import No."; Integer)
        {
            Caption = 'Import No.';
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Import Date"; Date)
        {
            Caption = 'Import Date';
        }
        field(4; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
        field(5; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(6; "Bank Account No."; Code[10])
        {
            Caption = 'Bank Account No.';
        }
        field(7; "Bank Branch No. Old"; Text[20])
        {
            Caption = 'Bank Branch No. Old';
            TableRelation = "Bank Branch No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(8; "Bank Account No. Old"; Text[34])
        {
            Caption = 'Bank Account No. Old';
        }
        field(9; "BIC New"; Code[11])
        {
            Caption = 'BIC New';
        }
        field(10; "IBAN New"; Code[50])
        {
            Caption = 'IBAN New';
        }
        field(11; "Change Flag"; Code[2])
        {
            Caption = 'Change Flag';
        }
        field(12; "Transfered to Bank Account"; Boolean)
        {
            Caption = 'Transfered to Bank Account';
        }
        field(13; "Dummy Field"; Text[250])
        {
        }
    }

    keys
    {
        key(Key1; "Import No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

