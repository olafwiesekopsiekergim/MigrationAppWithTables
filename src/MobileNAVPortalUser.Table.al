table 42012843 "MobileNAV Portal User"
{
    // 2016-12-02 MNAD4.6.0.6 SZT
    //   - Now the email address format is validated.
    //   - added field: Company.
    //   - DataPerCompany set to no.
    // 
    // 2017-01-05 MNAD4.6.0.8 SZT
    //   - Company is now part of the PK.
    // 
    // 2017-10-24 MNAD4.7.0.13 SZT
    //   - Replaced inline strings constants to global TextConsts.
    //   - Refactoring caused by new components DLL.
    // 
    // 2017-12-13 MNAD4.7.0.16 SZT
    //   Refactored generating "Last DateTime Modified Ticks".

    DataPerCompany = false;

    fields
    {
        field(1; Email; Text[80])
        {
            Caption = 'Email Address';
            ExtendedDatatype = EMail;
        }
        field(2; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer."No.";
        }
        field(3; Deleted; Boolean)
        {
            Caption = 'Deleted';
            Editable = false;
        }
        field(4; Company; Text[30])
        {
            Caption = 'Company';
        }
        field(21; Name; Text[50])
        {
            Caption = 'Full Name';
        }
        field(22; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
        }
        field(23; "Last Datetime Modified Ticks"; Decimal)
        {
            Caption = 'Last Datetime Modified Ticks';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Email, "Customer No.", Deleted, Company)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

