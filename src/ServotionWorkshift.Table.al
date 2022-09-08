table 42014852 "Servotion Workshift"
{
    // 2019-01-08 SNAD1.0.0.73 MAJORT
    //   - Resume process fix for Last Modified, Last Modified By and Created

    Caption = 'Workshift';

    fields
    {
        field(1; "Entry No."; Code[10])
        {
            Caption = 'Entry No.';
        }
        field(2; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(3; "Workshift Type Code"; Code[20])
        {
            Caption = 'Workshift Type Code';
        }
        field(4; Started; DateTime)
        {
            Caption = 'Started';
        }
        field(5; Finished; DateTime)
        {
            Caption = 'Finished';
        }
        field(6; Duration; Duration)
        {
            Caption = 'Duration';
        }
        field(7; "Work Start Entry No."; Code[10])
        {
            Caption = 'Work Start Entry No.';
        }
        field(8; Paused; Boolean)
        {
            Caption = 'Paused';
        }
        field(9; "Paused Entry No."; Code[10])
        {
            Caption = 'Paused Entry No.';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Integer)
        {
            Caption = 'Source Subtype';
            MaxValue = 10;
            MinValue = 0;
        }
        field(12; "Source No."; Code[20])
        {
            Caption = 'Source No.';
        }
        field(13; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
        }
        field(14; "Source Subline No."; Integer)
        {
            Caption = 'Source Subline No.';
        }
        field(15; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(16; Note; Text[100])
        {
            Caption = 'Note';
        }
        field(17; Created; DateTime)
        {
            Caption = 'Created';
        }
        field(18; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
        }
        field(19; "Last Modified"; DateTime)
        {
            Caption = 'Last Modified';
            Editable = false;
        }
        field(20; "Last Modified By"; Code[50])
        {
            Caption = 'Last Modified By';
            Editable = false;
        }
        field(30; "WT - Work Start"; Boolean)
        {
            Caption = 'Workshift Type - Work Start';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(31; "WT - Work Finish"; Boolean)
        {
            Caption = 'Workshift Type - Work Finish';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(32; "WT - Work"; Boolean)
        {
            Caption = 'Workshift Type - Work';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(33; "WT - Travel"; Boolean)
        {
            Caption = 'Workshift Type - Travel';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(34; "WT - Pausable"; Boolean)
        {
            Caption = 'Workshift Type - Pausable';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(35; "WT - Worktime"; Boolean)
        {
            Caption = 'Workshift Type - Worktime';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(36; "WT - Billable"; Boolean)
        {
            Caption = 'Workshift Type - Billable';
            Description = 'Servotion Workshift Type';
            Editable = false;
        }
        field(37; "Workshift Start"; DateTime)
        {
            CalcFormula = Lookup ("Servotion Workshift".Started WHERE ("Entry No." = FIELD ("Work Start Entry No.")));
            Caption = 'Workshift Start';
            FieldClass = FlowField;
        }
        field(38; "Workshift Finish"; DateTime)
        {
            CalcFormula = Lookup ("Servotion Workshift".Finished WHERE ("Work Start Entry No." = FIELD ("Work Start Entry No."),
                                                                       "WT - Work Finish" = CONST (true)));
            Caption = 'Workshift Finish';
            FieldClass = FlowField;
        }
        field(39; "Workshift Is Finished"; Boolean)
        {
            CalcFormula = Exist ("Servotion Workshift" WHERE ("Work Start Entry No." = FIELD ("Work Start Entry No."),
                                                             "WT - Work Finish" = CONST (true)));
            Caption = 'Workshift Is Finished';
            FieldClass = FlowField;
        }
        field(40; "Continuation of Entry No."; Code[10])
        {
            Caption = 'Continuation of Entry No.';
        }
        field(41; "Continues on Entry No."; Code[10])
        {
            Caption = 'Continues on Entry No.';
        }
        field(42; "Workshift Duration"; Duration)
        {
            Caption = 'Workshift Duration';
            Editable = false;
        }
        field(43; "Work Time"; Duration)
        {
            CalcFormula = Sum ("Servotion Workshift".Duration WHERE ("Work Start Entry No." = FIELD ("Work Start Entry No."),
                                                                    "WT - Worktime" = CONST (true)));
            Caption = 'Work Time';
            FieldClass = FlowField;
        }
        field(44; "Billable Time"; Duration)
        {
            CalcFormula = Sum ("Servotion Workshift".Duration WHERE ("Work Start Entry No." = FIELD ("Work Start Entry No."),
                                                                    "WT - Billable" = CONST (true)));
            Caption = 'Billable Time';
            FieldClass = FlowField;
        }
        field(45; "Open Workshift Entry No."; Code[10])
        {
            CalcFormula = Max ("Servotion Workshift"."Entry No." WHERE ("User ID" = FIELD ("User ID Filter"),
                                                                       "WT - Work Start" = CONST (true),
                                                                       "Workshift Is Finished" = CONST (false)));
            Caption = 'Open Workshift Entry No';
            FieldClass = FlowField;
        }
        field(46; "Working on"; Text[250])
        {
            CalcFormula = Lookup ("Servotion Document Description".Description WHERE (Type = CONST ("User ID"),
                                                                                     ID = FIELD ("User ID")));
            Caption = 'Working on';
            FieldClass = FlowField;
        }
        field(47; "Document Description"; Text[250])
        {
            CalcFormula = Lookup ("Servotion Document Description".Description WHERE (Type = CONST ("Workshift Entry No."),
                                                                                     ID = FIELD ("Entry No.")));
            Caption = 'Document Description';
            FieldClass = FlowField;
        }
        field(48; "User ID Filter"; Code[50])
        {
            Caption = 'User ID Filter';
            FieldClass = FlowFilter;
        }
        field(42012823; "Page No. Filter"; Integer)
        {
            Caption = 'Page No. Filter';
            Description = 'MobileNAV';
            FieldClass = FlowFilter;
        }
        field(42012824; RecGUID; Guid)
        {
            Caption = 'RecGUID';
            Description = 'MobileNAV';
        }
        field(42012825; "Last DateTime Modified Ticks"; Decimal)
        {
            CalcFormula = Lookup ("MobileNAV Offline Admin."."Last DateTime Modified Ticks" WHERE ("User ID" = FIELD ("User ID Filter"),
                                                                                                  "Page No." = FIELD ("Page No. Filter"),
                                                                                                  "Record GUID" = FIELD (RecGUID)));
            Caption = 'Last DateTime Modified Ticks';
            Description = 'MobileNAV';
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "User ID", "Work Start Entry No.", Started)
        {
        }
        key(Key3; "User ID", "Work Start Entry No.", Finished)
        {
        }
        key(Key4; "User ID", "Workshift Type Code", Started)
        {
        }
        key(Key5; "User ID", "Work Start Entry No.", "WT - Work Finish")
        {
        }
        key(Key6; "User ID", Started, "Source Type", "Source Subtype", "Source No.")
        {
            SumIndexFields = Duration;
        }
        key(Key7; "User ID", "WT - Work Start")
        {
        }
        key(Key8; "User ID", "WT - Work Start", Started, Finished)
        {
        }
        key(Key9; "User ID", "Work Start Entry No.", "WT - Work", Started)
        {
        }
    }

    fieldgroups
    {
    }
}

