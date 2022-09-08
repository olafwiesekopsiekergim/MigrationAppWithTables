table 5012802 "GX License Information"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // GXW16.00.01-01
    //   # in RTC: validate on "Demo" does not change the field "Dynamics Serial No." due to malfunction in XMLPorts
    // 
    // #GXW17.00:T100 03.01.13 DEMSR.IST
    //   Unsupported dataport call deleted
    //   ISSERVICETIER condition deleted
    //   Obsolet field 12 deleted
    //   Import file name corrected
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX License Information';

    fields
    {
        field(1; "Primary key"; Integer)
        {
            AutoIncrement = true;
            Caption = 'Primary key';
        }
        field(10; "License Key"; Text[32])
        {
            Caption = 'License Key';
        }
        field(11; "Dynamics Serial No."; Text[30])
        {
            Caption = 'Dynamics Serial No.';
        }
        field(20; Demo; Boolean)
        {
            Caption = 'Demo';
        }
        field(30; "Expire Date"; Date)
        {
            Caption = 'Expire Date';
        }
        field(60; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(70; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
    }

    keys
    {
        key(Key1; "Primary key")
        {
            Clustered = true;
        }
        key(Key2; "Expire Date")
        {
        }
    }

    fieldgroups
    {
    }
}

