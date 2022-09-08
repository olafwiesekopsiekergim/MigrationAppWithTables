table 5060601 "Text Module Predefined Object"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #TMW16.00:A1000         16.03.09 DEWUE.FB Creation of Text Module - Version 6.00
    // #TMW16.00.01.01:T504 14.04.11 DEMSR.BKR
    //   Increase Usability
    //   Set InitValue of Field "Use" to yes
    // #TMW17.00:A001 16.03.12 DEMSR.SSZ
    //   #Changes because of NAV 7
    //   #Replaced Formular with Page in option field and specified filter in table relation
    // #TMW17.10.00.02:T100    31.07.14 DEMSR.IST - Rebranding
    // #TMW17.10.01:T100 24.06.14 DEMSR.SSZ
    //   #New Output Type: Table; Deleted Output Type: Page

    Caption = 'Text Module Predefined Objects';

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'Report,,Table';
            OptionMembers = "Report",,"Table";
        }
        field(2; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            TableRelation = IF ("Object Type" = CONST (Report)) Object.ID WHERE (Type = CONST (Report))
            ELSE
            IF ("Object Type" = CONST (Table)) Object.ID WHERE (Type = CONST (Table));
        }
        field(3; "Object Name"; Text[100])
        {
            Caption = 'Object Name';
        }
        field(5; Use; Boolean)
        {
            Caption = 'Use';
            InitValue = true;
        }
        field(10; "Use in Area Code"; Code[10])
        {
            Caption = 'Use in Area Code';
            TableRelation = "Text Module Use in Area Base";
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

