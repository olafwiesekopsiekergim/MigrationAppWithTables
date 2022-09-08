table 5157904 "Bundesbank Country"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // AZV  13.01.10   OPplus DTAZV
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Bundesbank Country List';

    fields
    {
        field(1; "Country/Region Code"; Code[10])
        {
            Caption = 'Country/Region Code';
            NotBlank = true;
            TableRelation = "Country/Region";
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "EU-Country"; Boolean)
        {
            Caption = 'EU Standard Transmission available';
        }
        field(4; "EU-Express"; Boolean)
        {
            Caption = 'EU Express Transmission available';
        }
        field(5; Shortcut; Text[10])
        {
            Caption = 'Shortcut AWV';
        }
    }

    keys
    {
        key(Key1; "Country/Region Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

