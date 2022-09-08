table 5157806 "CSV Port Line"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'CSV Port Line';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "CSV Port";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
            Editable = false;
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
        }
        field(5; "Processing Only"; Boolean)
        {
            Caption = 'Process only';
        }
        field(6; Position; Integer)
        {
            Caption = 'Column';
        }
        field(7; "Field Name"; Text[30])
        {
            Caption = 'Field Name';
            Editable = false;
        }
        field(10; Amounts; Option)
        {
            Caption = 'Amounts';
            InitValue = Default;
            OptionCaption = 'As Saved,Absolute,Change Sign,<Default>';
            OptionMembers = AsSaved,Absolute,Invert,Default;
        }
        field(12; "Text before"; Text[30])
        {
            Caption = 'Prefix';
        }
        field(13; "Text after"; Text[30])
        {
            Caption = 'Suffix';
        }
        field(14; "Inc/Dec"; Integer)
        {
            Caption = 'increase/decrease';
        }
        field(15; Factor; Decimal)
        {
            Caption = 'Factor';
        }
        field(16; "Column Description"; Text[30])
        {
            Caption = 'Description';
        }
        field(17; "Space before Field"; Boolean)
        {
            Caption = 'Space before Field';
        }
        field(18; "Space after Field"; Boolean)
        {
            Caption = 'Space after Field';
        }
        field(20; Colwidth; Integer)
        {
            Caption = 'Column Width';
            MinValue = 0;
        }
        field(21; Padding; Option)
        {
            Caption = 'Padding';
            OptionCaption = ' ,Left,Right';
            OptionMembers = " ",Left,Right;
        }
        field(22; PadChar; Text[1])
        {
            Caption = 'Padding Char.';
        }
        field(23; LeftDrop; Integer)
        {
            Caption = 'Drop Left';
        }
        field(24; RightDrop; Integer)
        {
            Caption = 'Drop Right';
        }
        field(34; FieldClass; Text[30])
        {
            Caption = 'Field Class';
            Editable = false;
        }
        field(35; FieldType; Text[30])
        {
            Caption = 'FieldType';
            Editable = false;
        }
        field(43; TextCase; Option)
        {
            Caption = 'Case of Text Fields';
            InitValue = Default;
            OptionCaption = 'As Saved,Lowercase,Uppercase,<Default>';
            OptionMembers = AsSaved,Lower,Upper,Default;
        }
        field(50; Formatstring; Text[30])
        {
            Caption = 'Format String / Fixed Text';
        }
        field(51; Exportfilter; Text[250])
        {
            Caption = 'Exportfilter';
            Description = 'Exportfilter';
        }
        field(55; ContentLength; Integer)
        {
            Caption = 'Fieldlength';
        }
        field(56; StartPos; Integer)
        {
            Caption = 'From Column';
            MinValue = 0;
        }
        field(57; EndPos; Integer)
        {
            Caption = 'To Column';
            MinValue = 0;
        }
        field(58; SkipTrigger; Boolean)
        {
            Caption = 'Don´t Validate';
        }
        field(59; CustomProcID; Integer)
        {
            Caption = 'Custom. Proc. ID';
            Description = 'Future use / Customization';
        }
        field(60; "Auto Increment"; Boolean)
        {
            Caption = 'Auto Increment';
        }
        field(61; "Increment Value"; Integer)
        {
            Caption = 'Increment Value';
        }
        field(62; Fieldlinking; Boolean)
        {
            Caption = 'Used for Fieldlink';
        }
        field(63; Importfilter; Text[250])
        {
            Caption = 'Import Filter';
        }
        field(64; "Formula included"; Boolean)
        {
            Caption = 'Formula included';
        }
        field(65; ValidatePosition; Integer)
        {
            Caption = 'Validate on Position';
        }
        field(66; "Ext. Mapping"; Boolean)
        {
            Caption = 'Ext. Mapping';
        }
    }

    keys
    {
        key(Key1; "Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Code", "Table No.", Position)
        {
        }
        key(Key3; "Code", ValidatePosition)
        {
        }
    }

    fieldgroups
    {
    }
}

