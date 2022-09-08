table 5034652 "8D Team Member"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T101 30.03.15 DEMSR.KHS
    //   Create Object

    Caption = '8D Team Member';

    fields
    {
        field(1; "8D Report Code"; Code[20])
        {
            Caption = '8D Report Code';
        }
        field(10; "Team Member Code"; Code[50])
        {
            Caption = 'Team Member Code';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(20; "Team Member Name"; Text[50])
        {
            Caption = 'Team Member Name';
        }
        field(30; "Function / Responsibility"; Text[50])
        {
            Caption = 'Function / Responsibility';
        }
        field(100; Lead; Boolean)
        {
            Caption = 'Lead';
        }
    }

    keys
    {
        key(Key1; "8D Report Code", "Team Member Code")
        {
            Clustered = true;
        }
        key(Key2; "8D Report Code", Lead)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Team Member Code", "Team Member Name")
        {
        }
    }
}

