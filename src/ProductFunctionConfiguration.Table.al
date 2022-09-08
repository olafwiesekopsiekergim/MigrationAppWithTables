table 5395808 "Product Function Configuration"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.01:T104 16.10.14 DEMSR.IST - Object created

    Caption = 'Product Function Configuration';

    fields
    {
        field(1; "Profile ID"; Code[30])
        {
            Caption = 'Profile ID';
            NotBlank = true;
            TableRelation = Profile."Profile ID";
        }
        field(2; "Function Configuration Code"; Code[20])
        {
            Caption = 'Function Configuration Code';
            TableRelation = "Function Configuration".Code;
        }
        field(3; "Function Configuration Desc."; Text[80])
        {
            CalcFormula = Lookup ("Function Configuration".Description WHERE (Code = FIELD ("Function Configuration Code")));
            Caption = 'Function Configuration Desc.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Action"; Option)
        {
            Caption = 'Action';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
    }

    keys
    {
        key(Key1; "Profile ID", "Function Configuration Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

