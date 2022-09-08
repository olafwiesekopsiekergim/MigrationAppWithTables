table 5012612 "QC Template Allocation"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:20:1
    //   # Object created.
    // 
    // :PMW15.00:241:1
    //   # Field 2 "QC No.", Property NotBlank = Yes
    // 
    // #PMW16.00.03:T510 15.09.11 DEMSR.IST
    //   OptionString and OptionCaptions of field "Processing Status" capitalized
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Template Allocation';

    fields
    {
        field(1; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'QC Template,QC Test';
            OptionMembers = "QC Template","QC Test";
        }
        field(2; "QC No."; Code[20])
        {
            Caption = 'QC No.';
            NotBlank = true;
            TableRelation = IF ("Entry Type" = CONST ("QC Template")) "QC Template Header".Code
            ELSE
            IF ("Entry Type" = CONST ("QC Test")) "QC Test Header"."No.";
        }
        field(3; "Line No"; Integer)
        {
            Caption = 'Line No';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(11; "Source Name"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Source Type")));
            Caption = 'Source Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Source ID"; Text[200])
        {
            Caption = 'Source ID';
        }
        field(20; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(21; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(22; Date; Date)
        {
            Caption = 'Date';
        }
        field(30; "QC Template No."; Code[20])
        {
            Caption = 'QC Template No.';
            TableRelation = "QC Template Header";
        }
        field(31; "QC Test No."; Code[20])
        {
            Caption = 'QC Test No.';
            TableRelation = "QC Test Header";
        }
        field(32; "QC Test Processing Status"; Option)
        {
            Caption = 'QC Test Processing Status';
            OptionCaption = 'New,Finished,Cancelled';
            OptionMembers = New,Finished,Cancelled;
        }
        field(41; "QC Test Description"; Text[50])
        {
            CalcFormula = Lookup ("QC Test Header".Description WHERE ("No." = FIELD ("QC Test No.")));
            Caption = 'QC Test Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry Type", "QC No.", "Line No")
        {
            Clustered = true;
        }
        key(Key2; "Entry Type", "Source ID")
        {
        }
    }

    fieldgroups
    {
    }
}

