table 5395805 "Product Configuration"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #AMPW17.10.00.01:T100 30.12.13 DEBIE.NKA Product Configuration Management tool added
    // #AMPDE7.10.00.01:T100 30.12.13 DEBIE.NKA Advanced Payment
    // #AMPW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #AMPW17.10.01:T107 22.10.14 DEMSR.IST
    //   Add new products/modules to product configuration
    // 
    // #AMPW18.00.01.02:T500 30.09.15 DEMSR.IST
    //   Delete related Product Function Configurations OnDelete

    Caption = 'Product Configuration';
    DataCaptionFields = "Profile ID", Description;

    fields
    {
        field(1; "Profile ID"; Code[30])
        {
            Caption = 'Profile ID';
            TableRelation = Profile."Profile ID";
        }
        field(2; Description; Text[250])
        {
            CalcFormula = Lookup (Profile.Description WHERE ("Profile ID" = FIELD ("Profile ID")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Applied on"; DateTime)
        {
            Caption = 'Applied on';
            Editable = false;
        }
        field(4; "Used Page Definition from"; DateTime)
        {
            Caption = 'Used Page Definition from';
            Editable = false;
        }
        field(10; "Configure to Order"; Option)
        {
            Caption = 'Configure to Order';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(20; "Process Manufacturing"; Option)
        {
            Caption = 'Process Manufacturing';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(30; "Quality Management"; Option)
        {
            Caption = 'Quality Management';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(40; "Vendor Rating"; Option)
        {
            Caption = 'Vendor Rating';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(50; "Regulatory Affairs"; Option)
        {
            Caption = 'Regulatory Affairs';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(60; Calculation; Option)
        {
            Caption = 'Calculation';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(70; "Graphical Extension"; Option)
        {
            Caption = 'Graphical Extension';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(80; "Planning Extension"; Option)
        {
            Caption = 'Planning Extension';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(90; "Text Module"; Option)
        {
            Caption = 'Text Module';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(100; Time; Option)
        {
            Caption = 'Time';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(110; Rental; Option)
        {
            Caption = 'Rental';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(120; Commission; Option)
        {
            Caption = 'Commission';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(130; Intercompany; Option)
        {
            Caption = 'Intercompany';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(140; "Advanced Payment"; Option)
        {
            Caption = 'Advanced Payment';
            Description = '#AMPDE7.10.00.01:T100';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(150; "Project - Base"; Option)
        {
            Caption = 'Project - Base';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(160; "Project - Planning"; Option)
        {
            Caption = 'Project - Planning';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(170; "Project - BoQ Manager"; Option)
        {
            Caption = 'Bill of Quantities Manager';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(180; "Project - Constr. Works Proc."; Option)
        {
            Caption = 'Construction Works Processing';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(190; "Purchase Quotes Manager"; Option)
        {
            Caption = 'Purchase Quotes Manager';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(200; "Alloy Management"; Option)
        {
            Caption = 'Alloy Management';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(210; Workflow; Option)
        {
            Caption = 'Workflow';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(220; "Mobile Solution"; Option)
        {
            Caption = 'Mobile Solution';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(230; "Formatted Documents"; Option)
        {
            Caption = 'Formatted Documents';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(240; "Document Configurator"; Option)
        {
            Caption = 'Document Configurator';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
        field(250; DMS; Option)
        {
            Caption = 'DMS';
            Description = '#AMPW17.10.01:T107';
            OptionCaption = ' ,Enabled,Disabled';
            OptionMembers = " ",Enabled,Disabled;
        }
    }

    keys
    {
        key(Key1; "Profile ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

