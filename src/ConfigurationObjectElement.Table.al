table 5395803 "Configuration Object Element"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.00.01:T100 30.12.13 DEBIE.NKA Product Configuration Management tool added
    // #AMPW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #AMPW18.00:T103 13.01.15 DEMSR.IST
    //   New field 101 "Control Name"
    //   New Key <Object Type,Object ID,Seq No.>

    Caption = 'Configuration Object Element';

    fields
    {
        field(1; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            Description = 'Object ID from Object Table';
        }
        field(2; "Object Type"; Option)
        {
            Caption = 'Object Type';
            Description = 'Object Type';
            OptionCaption = 'TableData,Table,Form,Report,Dataport,Codeunit,XMLport,MenuSuite,Page,,System,FieldNumber';
            OptionMembers = TableData,"Table",Form,"Report",Dataport,"Codeunit","XMLport",MenuSuite,"Page",,System,FieldNumber;
        }
        field(3; "Element Type"; Text[50])
        {
            Caption = 'Element Type';
        }
        field(4; "Element ID"; Text[50])
        {
            Caption = 'Element ID';
        }
        field(5; "Element Name"; Text[250])
        {
            Caption = 'Element Name';
        }
        field(6; "Parent Element"; Text[50])
        {
            Caption = 'Parent Element';
        }
        field(7; "Seq No."; Integer)
        {
            Caption = 'Seq No.';
            Description = 'Line number from XML metadata';
        }
        field(8; Level; Integer)
        {
            Caption = 'Level';
            Description = 'Indentation Level';
        }
        field(9; "Profile"; Text[30])
        {
            Caption = 'Profile';
        }
        field(10; "Personalization ID"; Text[40])
        {
            Caption = 'Personalization ID';
        }
        field(11; "Visible In Configuration"; Boolean)
        {
            Caption = 'Visible In Configuration';
        }
        field(12; "In Configuration"; Boolean)
        {
            Caption = 'In Configuration';
            Description = 'True if this element is present in configuration file';
        }
        field(13; Visible; Boolean)
        {
            Caption = 'Visible';
            Description = 'Visible property from page element';
        }
        field(14; "Source Table"; Integer)
        {
            Caption = 'Source Table';
            Description = 'SourceTable for page element';
        }
        field(15; "Page Type"; Text[30])
        {
            Caption = 'Page Type';
            Description = 'List/Card etc';
        }
        field(16; "Run Object Type"; Text[30])
        {
            Caption = 'Run Object Type';
            Description = 'Object type for actions';
        }
        field(17; "Target ID"; Integer)
        {
            Caption = 'Target ID';
            Description = 'Target ID for actions';
        }
        field(100; "Control ID"; Integer)
        {
            Caption = 'Control ID';
        }
        field(101; "Control Name"; Text[250])
        {
            Caption = 'Control Name';
            Description = '#AMPW18.00:T103';
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID", "Profile", "Personalization ID", "Element Type", "Element ID")
        {
            Clustered = true;
        }
        key(Key2; "Element ID", "Profile", "Personalization ID")
        {
        }
        key(Key3; "Object Type", "Object ID", "Profile", "Personalization ID", "Seq No.")
        {
        }
        key(Key4; "Object Type", "Element Type", "Target ID")
        {
        }
        key(Key5; "Object Type", "Object ID", "Seq No.")
        {
        }
    }

    fieldgroups
    {
    }
}

