table 5056304 "Day Object/T"
{
    Caption = 'Day Object';
    DataCaptionFields = "No.", Description;
    Description = 'GrDayObj';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(4; Symbol; Text[10])
        {
            Caption = 'Symbol';
        }
        field(10; "Target Object No. 1"; Code[10])
        {
            Caption = 'Target Object No. 1';
            TableRelation = "Target Object/T"."No.";
        }
        field(12; "Target Object No. 2"; Code[10])
        {
            Caption = 'Target Object No. 2';
            TableRelation = "Target Object/T"."No.";
        }
        field(14; "Break Object No. 1"; Code[10])
        {
            Caption = 'Break Object No. 1';
            TableRelation = "Break Object/T"."No.";
        }
        field(16; "Break Object No. 2"; Code[10])
        {
            Caption = 'Break Object No. 2';
            TableRelation = "Break Object/T"."No.";
        }
        field(18; "Break Object No. 3"; Code[10])
        {
            Caption = 'Break Object No. 3';
            TableRelation = "Break Object/T"."No.";
        }
        field(20; "Break Object No. 4"; Code[10])
        {
            Caption = 'Break Object No. 4';
            TableRelation = "Break Object/T"."No.";
        }
        field(22; "Rounding Group No."; Code[20])
        {
            Caption = 'Rounding Group No.';
            TableRelation = "Rounding Group/T"."No.";
        }
        field(24; "Supplement Object No."; Code[10])
        {
            Caption = 'Supplement Object No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Supplement Object 4000-4999"));
        }
        field(25; "Supplement Object No. Planned"; Code[10])
        {
            Caption = 'Supplement Object No. Planned';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Supplement Object 4000-4999"));
        }
        field(26; "Special Object No."; Code[10])
        {
            Caption = 'Special Object No.';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Special Object 6000-6999"));
        }
        field(30; Classification; Option)
        {
            Caption = 'Classification';
            OptionCaption = ' ,Early Shift,Late Shift,Night Shift,Normal Shift,Special Shift';
            OptionMembers = " ","Early Shift","Late Shift","Night Shift","Normal Shift","Special Shift";
        }
        field(31; "Flexitime (connect Clockings)"; Boolean)
        {
            Caption = 'Flexitime (connect Clockings)';
        }
        field(35; "Target Obj. No. Bus. College"; Code[10])
        {
            Caption = 'Target Obj. No. Bus. College';
            TableRelation = "Target Object/T"."No.";
        }
        field(37; "Off-Breaks"; Boolean)
        {
            Caption = 'Off-Breaks';
        }
        field(38; "Color Duty Scheduling"; Option)
        {
            Caption = 'Color Duty Scheduling';
            OptionCaption = ' ,red,darkred,blue,darkblue,green,darkgreen,yellow,turquoise,violet,lilac,grey,teslagrau';
            OptionMembers = " ",red,darkred,blue,darkblue,green,darkgreen,yellow,turquoise,violet,lilac,grey,teslagrau;
        }
        field(39; "Color Value Duty Scheduling"; Integer)
        {
            Caption = 'Color Value Duty Scheduling';
            Editable = false;
        }
        field(46; "Org-Value/Duty Sched."; Code[10])
        {
            Caption = 'Org-Value/Duty Sched.';
            TableRelation = IF ("Org-Form/Duty Sched." = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Org-Form/Duty Sched." = CONST ("Time Object")) "Time Object/T"."No.";
        }
        field(47; "Org-Form/Duty Sched."; Option)
        {
            Caption = 'Org-Form/Duty Sched.';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(48; "DS/Absent Day at Day Object"; Code[10])
        {
            Caption = 'DS/Absent Day at Day Object';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(50; Remark; Boolean)
        {
            CalcFormula = Exist ("TempVision Remark Line/T" WHERE ("Table Name" = CONST ("Day Object/T"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Remark';
            Editable = false;
            FieldClass = FlowField;
        }
        field(51; "Terminal 1"; Code[10])
        {
            Caption = 'Terminal 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(52; "Time Profile 1"; Text[2])
        {
            Caption = 'Time Profile 1';
        }
        field(53; "Terminal 2"; Code[10])
        {
            Caption = 'Terminal 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(54; "Time Profile 2"; Text[2])
        {
            Caption = 'Time Profile 2';
        }
        field(55; "Terminal 3"; Code[10])
        {
            Caption = 'Terminal 3';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(56; "Time Profile 3"; Text[2])
        {
            Caption = 'Time Profile 3';
        }
        field(57; "Terminal 4"; Code[10])
        {
            Caption = 'Terminal 4';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(58; "Time Profile 4"; Text[2])
        {
            Caption = 'Time Profile 4';
        }
        field(59; "Terminal 5"; Code[10])
        {
            Caption = 'Terminal 5';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(60; "Time Profile 5"; Text[2])
        {
            Caption = 'Time Profile 5';
        }
        field(61; "Terminal 6"; Code[10])
        {
            Caption = 'Terminal 6';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(62; "Time Profile 6"; Text[2])
        {
            Caption = 'Time Profile 6';
        }
        field(63; "Terminal 7"; Code[10])
        {
            Caption = 'Terminal 7';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(64; "Time Profile 7"; Text[2])
        {
            Caption = 'Time Profile 7';
        }
        field(65; "Terminal 8"; Code[10])
        {
            Caption = 'Terminal 8';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(66; "Time Profile 8"; Text[2])
        {
            Caption = 'Time Profile 8';
        }
        field(67; "Terminal 9"; Code[10])
        {
            Caption = 'Terminal 9';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(68; "Time Profile 9"; Text[2])
        {
            Caption = 'Time Profile 9';
        }
        field(69; "Terminal 10"; Code[10])
        {
            Caption = 'Terminal 10';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(70; "Time Profile 10"; Text[2])
        {
            Caption = 'Time Profile 10';
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

