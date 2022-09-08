table 14123604 "ES Analyzer Status"
{
    Caption = 'ES Analyzer Status';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "In Table Relation"; Boolean)
        {
            Caption = 'In Table Relation';
        }
        field(3; "In Permissions"; Boolean)
        {
            Caption = 'In Permissions';
        }
        field(4; "In CalcFormula"; Boolean)
        {
            Caption = 'In CalcFormula';
        }
        field(5; "In Fields"; Boolean)
        {
            Caption = 'In Fields';
        }
        field(6; "In Levels"; Boolean)
        {
            Caption = 'In Levels';
        }
        field(7; "In RDLData"; Boolean)
        {
            Caption = 'In RDLData';
        }
        field(8; "In VAR"; Boolean)
        {
            Caption = 'In VAR';
        }
        field(9; "VAR Indentation"; Integer)
        {
            Caption = 'VAR Indentation';
        }
        field(10; "Reference Name"; Text[100])
        {
            Caption = 'Reference Name';
        }
        field(11; "Reference ID"; Integer)
        {
            Caption = 'Reference ID';
        }
        field(12; "Reference Type"; Option)
        {
            Caption = 'Reference Type';
            OptionCaption = ' ,Procedure,Local Procedure,Event,Local Variable,Global Variable';
            OptionMembers = " ","Procedure","Local Procedure","Event","Local Variable","Global Variable";
        }
        field(13; "Last RunObjectType"; Text[30])
        {
            Caption = 'Last RunObjectType';
        }
        field(14; "Control ID"; Integer)
        {
            Caption = 'Control ID';
        }
        field(15; "Menu Items"; Boolean)
        {
            Caption = 'Menu Items';
        }
        field(16; "In Properties"; Boolean)
        {
            Caption = 'In Properties';
        }
        field(17; "In Controls"; Boolean)
        {
            Caption = 'In Controls';
        }
        field(18; "Second Control ID"; Integer)
        {
            Caption = 'Second Control ID';
        }
        field(19; "Parent Control ID"; Integer)
        {
            Caption = 'Parent Control ID';
        }
        field(20; "Control Type Text"; Text[30])
        {
            Caption = 'Control Type Text';
        }
        field(21; "Source Table ID"; Integer)
        {
            Caption = 'Source Table ID';
        }
        field(22; "Visible Code"; Text[50])
        {
            Caption = 'Visible Code';
        }
        field(23; "Editable Code"; Text[50])
        {
            Caption = 'Editable Code';
        }
        field(24; "HideValue Code"; Text[50])
        {
            Caption = 'HideValue Code';
        }
        field(25; "Control Name"; Text[100])
        {
            Caption = 'Control Name';
        }
        field(26; "SourceExpr Code"; Text[50])
        {
            Caption = 'SourceExpr Code';
        }
        field(27; "Menu Level"; Integer)
        {
            Caption = 'Menu Level';
        }
        field(28; "Menu Visible Code"; Text[50])
        {
            Caption = 'Menu Visible Code';
        }
        field(29; "RunObject Code"; Text[50])
        {
            Caption = 'RunObject Code';
        }
        field(30; "In Code"; Boolean)
        {
            Caption = 'In Code';
        }
        field(31; "In Code BEGIN Position"; Integer)
        {
            Caption = 'In Code BEGIN Position';
        }
        field(32; "PageType Code"; Text[30])
        {
            Caption = 'PageType Code';
        }
        field(33; "Control Number in Code"; Integer)
        {
            Caption = 'Control Number in Code';
        }
        field(34; "Second Control Type Text"; Text[30])
        {
            Caption = 'Second Control Type Text';
        }
        field(35; "Control Level"; Integer)
        {
            Caption = 'Control Level';
        }
        field(36; "Enabled Code"; Text[50])
        {
            Caption = 'Enabled Code';
        }
        field(37; "Control Name Blank"; Boolean)
        {
            Caption = 'Control Name Blank';
        }
        field(38; "FLADS Change Found"; Boolean)
        {
            Caption = 'Field Level and Data Security Change Found';
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

