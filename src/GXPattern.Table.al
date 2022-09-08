table 5012804 "GX Pattern"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // GXW16.00.01
    //   # changed DEU-caption of field "Font Size"
    //   # changed DEU-caption of field "Disable Job Shadows"
    // 
    // #GXW17.00:T100 02.01.13 DEMSR.IST
    //   Form variables changes to page variables
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.02:T501 12.02.14 DEMSR.BKR
    //   Correct Spelling Issues
    //   "Text Vertival Alignment" > "Text Vertical Alignment"
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #GXW18.00:T102 14.01.15 DEMSR.BKR
    //   Remove all GX automations and unused code
    //   Removed Field "Flashing", "Flashing Pattern Code", "Flashing Speed MS"
    //   Removed Function "Export"

    Caption = 'GX Pattern';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
        }
        field(3; "Modify Tick"; Integer)
        {
            Caption = 'Modify Tick';
            Description = 'to detect changes';
        }
        field(10; "Background Type"; Option)
        {
            Caption = 'Background Type';
            OptionCaption = 'Solid,Gradient,Global Gradient,Vista';
            OptionMembers = solid,gradient,gradientglobal,vista;
        }
        field(11; "Render Background"; Boolean)
        {
            Caption = 'Define Background Settings';
            InitValue = true;
        }
        field(12; "Gradient Angle"; Integer)
        {
            Caption = 'Gradient Angle';
        }
        field(20; "From Color"; Integer)
        {
            Caption = 'From Color';
        }
        field(24; "From Alpha"; Integer)
        {
            Caption = 'From Alpha';
            InitValue = 255;
        }
        field(30; "To Color"; Integer)
        {
            Caption = 'To Color';
        }
        field(34; "To Alpha"; Integer)
        {
            Caption = 'To Alpha';
            InitValue = 255;
        }
        field(35; "Hatched Color"; Integer)
        {
            Caption = 'Hatched Color';
        }
        field(36; "Hatched Alpha"; Integer)
        {
            Caption = 'Hatched Alpha';
            InitValue = 255;
        }
        field(37; "Hatch Enabled"; Boolean)
        {
            Caption = 'Hatch Enabled';
        }
        field(38; "Inverse Hatch"; Boolean)
        {
            Caption = 'Inverse Hatch';
        }
        field(39; "Hatch Style"; Integer)
        {
            Caption = 'Hatch Style';
        }
        field(40; "Round Jobs"; Boolean)
        {
            Caption = 'Round Jobs';
        }
        field(41; "Edge Radius"; Decimal)
        {
            Caption = 'Edge Radius';
            InitValue = 5;
        }
        field(42; "Job Height"; Integer)
        {
            Caption = 'Job Height';
        }
        field(59; "Render Border"; Boolean)
        {
            Caption = 'Render Border';
        }
        field(60; "Border Color"; Integer)
        {
            Caption = 'Border Color';
        }
        field(61; "Border Color Alpha"; Integer)
        {
            Caption = 'Border Color Alpha';
            InitValue = 255;
        }
        field(62; "Border Width"; Decimal)
        {
            Caption = 'Border Width';
            InitValue = 1;
        }
        field(70; "Font Size"; Decimal)
        {
            Caption = 'Font Size';
            InitValue = 10;
        }
        field(71; "Text Color"; Integer)
        {
            Caption = 'Text Color';
        }
        field(72; "Text Color Alpha"; Integer)
        {
            Caption = 'Text Color Alpha';
            InitValue = 255;
        }
        field(73; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(74; Italic; Boolean)
        {
            Caption = 'Italic';
        }
        field(75; Underline; Boolean)
        {
            Caption = 'Underline';
        }
        field(76; "Text Horizontal Alignment"; Option)
        {
            Caption = 'Text Horizontal Alignment';
            OptionCaption = 'Left,Center,Right';
            OptionMembers = Left,Center,Right;
        }
        field(77; "Text Vertical Alignment"; Option)
        {
            Caption = 'Text Vertical Alignment';
            OptionCaption = 'Top,Center,Bottom';
            OptionMembers = Top,Center,Bottom;
        }
        field(78; "Define Text Settings"; Boolean)
        {
            Caption = 'Define Text Settings';
        }
        field(79; "Disable Job Shadows"; Boolean)
        {
            Caption = 'Disable Job Shadows';
            InitValue = false;
        }
        field(80; "Render Text Border"; Boolean)
        {
            Caption = 'Render Text Border';
        }
        field(81; "Text Border Width"; Integer)
        {
            Caption = 'Text Border Width';
        }
        field(82; "Text Border Color"; Integer)
        {
            Caption = 'Text Border Color';
        }
        field(83; "Text Border Alpha"; Integer)
        {
            Caption = 'Text Border Alpha';
            InitValue = 255;
        }
        field(90; "Offset X Pixels"; Integer)
        {
            Caption = 'Offset X Pixels';
        }
        field(91; "Offset Y Pixels"; Integer)
        {
            Caption = 'Offset Y Pixels';
        }
        field(100; "Offset X Relative"; Decimal)
        {
            Caption = 'Offset X Relative';
        }
        field(101; "Offset Y Relative"; Decimal)
        {
            Caption = 'Offset Y Relative';
        }
        field(110; "Left Edge Rendertype"; Option)
        {
            Caption = 'Left Edge Rendertype';
            OptionCaption = 'Normal,Arrow,Round';
            OptionMembers = Normal,Arrow,Round;
        }
        field(111; "Right Edge Rendertype"; Option)
        {
            Caption = 'Right Edge Rendertype';
            OptionCaption = 'Normal,Arrow,Round';
            OptionMembers = Normal,Arrow,Round;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

