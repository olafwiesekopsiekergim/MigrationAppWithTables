table 5012800 "GX Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00:T100 04.05.12 DEMSR.IST
    //   Obsolet field 11 deleted
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #GXW18.00:T102 14.01.15 DEMSR.BKR
    //   Remove all GX automations and unused code
    //   Removed Field "Automatic Update on Clients"

    Caption = 'GX Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Scheme Code"; Code[20])
        {
            Caption = 'Scheme Code';
            TableRelation = "GX Basic Scheme".Code;
        }
        field(10; "Default Pattern Code"; Code[20])
        {
            Caption = 'Default Pattern Code';
            TableRelation = "GX Pattern".Code;
        }
        field(20; "Setup File"; BLOB)
        {
            Caption = 'Setupfile';
        }
        field(25; "Last Upload"; DateTime)
        {
            Caption = 'Last Upload';
        }
        field(30; "Setup Build No."; Integer)
        {
            Caption = 'Setup Build No.';
            Description = '6.00.00.01';
        }
        field(35; "Setup Version"; Text[30])
        {
            Caption = 'Setup Version';
        }
        field(40; "Display Mode (Classic Client)"; Option)
        {
            Caption = 'Display Mode (Classic Client)';
            OptionCaption = 'Single Screen,Multiple Screens,Embedded';
            OptionMembers = "Single Screen","Multiple Screens",Embedded;
        }
        field(70; Blob; BLOB)
        {
            Caption = 'Blob';
        }
        field(1000; "Pattern Modify Tick"; Integer)
        {
            Caption = 'Pattern Modify Tick';
            Description = 'Online Updates Table 5012804';
        }
        field(1001; "Scheme Modify Tick"; Integer)
        {
            Caption = 'Scheme Modify Tick';
            Description = 'Online Updates Table 5012803';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

