table 5013561 "Characteristic Search Tree"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Use DM Variables/Attribute instead of own tables

    Caption = 'Characteristic Search Tree';

    fields
    {
        field(15; Symbol; Text[1])
        {
            Caption = 'Symbol';
            Editable = true;
        }
        field(20; Characteristic; Code[30])
        {
            Caption = 'Characteristic';
            TableRelation = "Variable/Attribute Type";
        }
        field(30; "Characteristic Description"; Text[50])
        {
            CalcFormula = Lookup ("Variable/Attribute Type".Description WHERE (Code = FIELD (Characteristic)));
            Caption = 'Characteristic Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(50; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
            Editable = false;
        }
        field(60; "Level Line No."; Integer)
        {
            Caption = 'Level Line No.';
            Editable = false;
        }
        field(70; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(80; "Entry No. Representation"; Integer)
        {
            Caption = 'Entry No. Representation';
            Editable = false;
        }
        field(90; Unfolded; Boolean)
        {
            Caption = 'Unfolded';
            Editable = false;
        }
        field(100; "Sub Level"; Boolean)
        {
            CalcFormula = Exist ("Characteristic Search Tree" WHERE ("Belongs to Entry No." = FIELD ("Entry No.")));
            Caption = 'Sub Level';
            Editable = false;
            FieldClass = FlowField;
        }
        field(105; "Sub Level Temp"; Boolean)
        {
            Caption = 'Sub Level Temp';
            Description = ':DMW16.00:99:01';
            Editable = false;
        }
        field(110; "Selected Item"; Code[20])
        {
            Caption = 'Selected Item';
        }
        field(120; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
            Description = ':DMW16.00:99:01';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Belongs to Entry No.", "Level Line No.")
        {
        }
        key(Key3; "Entry No. Representation")
        {
        }
        key(Key4; Level, "Level Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

