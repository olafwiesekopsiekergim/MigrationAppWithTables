table 5370526 "Open G/L Setup"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // dyn.OGL  25.02.2015  OGL      akq        Created
    // ================================================================================

    Caption = 'Open G/L Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "OE Appl. Post Account"; Code[20])
        {
            Caption = 'OE Application Post Account';
            TableRelation = "G/L Account";
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

