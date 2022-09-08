table 5012427 "Work Center Allocation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02.01:103:1
    //   # Object created.
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Work Center Allocation';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Work Center - Tool,Tool - Insert';
            OptionMembers = "Work Center - Tool","Tool - Insert";
        }
        field(2; "Attached to No."; Code[20])
        {
            Caption = 'Attached to No.';
            NotBlank = true;
            TableRelation = IF (Type = CONST ("Work Center - Tool")) "Work Center"."No." WHERE ("Work Center Type" = FILTER (" " | "Sequence Planning"))
            ELSE
            IF (Type = CONST ("Tool - Insert")) "Work Center"."No." WHERE ("Work Center Type" = CONST (Tool));
        }
        field(3; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = IF (Type = CONST ("Work Center - Tool")) "Work Center"."No." WHERE ("Work Center Type" = CONST (Tool))
            ELSE
            IF (Type = CONST ("Tool - Insert")) "Work Center"."No." WHERE ("Work Center Type" = CONST (Insert));
        }
        field(5; "Attached to Name"; Text[30])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("Attached to No.")));
            Caption = 'Attached to Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; Name; Text[30])
        {
            CalcFormula = Lookup ("Work Center".Name WHERE ("No." = FIELD ("No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; Type, "Attached to No.", "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

