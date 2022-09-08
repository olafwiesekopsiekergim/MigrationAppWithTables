table 5171654 "Scan Command"
{
    Caption = 'Scan Command';

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(10; Command; Text[3])
        {
            Caption = 'Command';
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; Scanpreview; Text[30])
        {
            Caption = 'Scanpreview';
        }
        field(40; "Open Inputform"; Boolean)
        {
            Caption = 'Open Inputform';
        }
        field(50; "Internal Code"; Code[20])
        {
            Caption = 'internal Code';
        }
        field(60; RunObject; Option)
        {
            Caption = 'RunObject';
            OptionCaption = ' ,Form,Report,XMLport,Codeunit';
            OptionMembers = " ","Page","Report","XMLport","Codeunit";
        }
        field(70; "Object-ID"; Integer)
        {
            Caption = 'Object-ID';
            TableRelation = IF (RunObject = CONST(Page)) Object.ID WHERE(Type = CONST(Page))
            ELSE
            IF (RunObject = CONST(Report)) Object.ID WHERE(Type = CONST(Report))
            ELSE
            IF (RunObject = CONST(XMLport)) Object.ID WHERE(Type = CONST(XMLport))
            ELSE
            IF (RunObject = CONST(Codeunit)) Object.ID WHERE(Type = CONST(Codeunit));
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }

    }

    fieldgroups
    {
    }
}

