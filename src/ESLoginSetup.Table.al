table 14123540 "ES Login Setup"
{
    Caption = 'Login Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
        }
        field(12; "Autostart Recording"; Boolean)
        {
            Caption = 'Autostart Recording';
        }
        field(14; "Autostart Recording Code"; Code[30])
        {
            Caption = 'Autostart Recording Code';
            TableRelation = "ES Recording";
        }
        field(15; "Limited Access Control Editing"; Boolean)
        {
            Caption = 'Limited Access Control Editing';
        }
        field(16; "Edit User Security Setup"; Boolean)
        {
            Caption = 'Edit User Security Setup';
        }
        field(17; "Edit Field level Sec. Codes"; Boolean)
        {
            Caption = 'Edit Field level Security Codes';
        }
        field(18; "Edit Data Security Codes"; Boolean)
        {
            Caption = 'Edit Data Security Codes';
        }
        field(19; "Edit Group Members (FLADS)"; Boolean)
        {
            Caption = 'Edit Group Members (Field Level and Data Security)';
        }
        field(20; "Edit Setup (FLADS)"; Boolean)
        {
            Caption = 'Edit Setup (Field Level and Data Security)';
        }
        field(21; "Edit User Filters"; Boolean)
        {
            Caption = 'Edit User Filters';
        }
        field(22; "Direct Login Integration"; Boolean)
        {
            Caption = 'Direct Login Integration';
        }
        field(23; "Direct Role Integration"; Boolean)
        {
            Caption = 'Direct Permission Set Integration';
        }
        field(24; "No SQL Details on Import Rec."; Boolean)
        {
            Caption = 'No SQL Details on Import Recording';
        }
        field(25; "No Confirm on Import Recording"; Boolean)
        {
            Caption = 'No Confirm on Import Recording';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

