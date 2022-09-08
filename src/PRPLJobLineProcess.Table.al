table 5292750 "PRPL - Job Line Process"
{
    Caption = 'Job Line Process';

    fields
    {
        field(1; "Process No."; Code[20])
        {
            Caption = 'Process No.';
            Description = 'ne';
            Editable = false;
            NotBlank = true;
        }
        field(10; "Process Outline No."; Code[160])
        {
            Caption = 'Process Outline No.';
            Description = 'ne';
            Editable = false;
        }
        field(11; "Process Outline Level"; Integer)
        {
            Caption = 'Process Outline Level';
            Description = 'ne';
            Editable = false;
        }
        field(19; Summary; Boolean)
        {
            Caption = 'Summary';
            Description = 'ne';
            Editable = false;
        }
        field(20; "Line Type"; Option)
        {
            Caption = 'Line Type';
            Description = 'ne  ,Top,Sum';
            Editable = false;
            OptionCaption = ' ,Top,Sum';
            OptionMembers = " ",Top,"Sum";
        }
        field(40; "Outline Code"; Code[20])
        {
            Caption = 'Outline Code';
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(61; "Comment General"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292750),
                                                               Code1 = FIELD ("Process No."),
                                                               Type = CONST (General)));
            Caption = 'Comment General';
            Description = 'CF CommentLine';
            Editable = false;
            FieldClass = FlowField;
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(910; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(980; "Schedule Type Filter"; Option)
        {
            Caption = 'Schedule Type Filter';
            Description = 'FF  ,Simulated,Planned,Fixed';
            FieldClass = FlowFilter;
            OptionCaption = ' ,Simulated,Planned,Fixed';
            OptionMembers = " ",Simulated,Planned,"Fixed";
        }
        field(981; "Schedule Resource Filter"; Code[20])
        {
            Caption = 'Schedule Resource Filter';
            Description = 'FF';
            FieldClass = FlowFilter;
        }
        field(1000; "-- Component"; Integer)
        {
            Caption = '-- Component';
            Enabled = false;
        }
        field(1010; Type; Option)
        {
            Caption = 'Type';
            Description = ' ,Service,Item,General';
            OptionCaption = ' ,Service,Item,General';
            OptionMembers = " ",Service,Item,General;
        }
        field(1011; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST (Service)) Resource
            ELSE
            IF (Type = CONST (Item)) Item
            ELSE
            IF (Type = CONST (General)) "PR - General Component";
        }
        field(1100; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = 'TR "Item Variant"';
            TableRelation = IF (Type = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(1200; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(2000; "-- Calculation"; Integer)
        {
            Caption = '-- Calculation';
            Enabled = false;
        }
        field(2010; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2021; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2030; "Quantity per"; Decimal)
        {
            Caption = 'Quantity per';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(2050; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = 'MTR Type';
            TableRelation = IF (Type = CONST (" ")) "Unit of Measure"
            ELSE
            IF (Type = CONST (Service)) "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (Item)) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."))
            ELSE
            IF (Type = CONST (General)) "Unit of Measure";
        }
        field(2051; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(3000; "-- Schedule"; Integer)
        {
            Caption = '-- Expectation';
            Enabled = false;
        }
        field(3011; "Schedule Type"; Option)
        {
            Caption = 'Schedule Type';
            Description = ' ,Simulated,Planned,Fixed';
            OptionCaption = ' ,Simulated,Planned,Fixed';
            OptionMembers = " ",Simulated,Planned,"Fixed";
        }
        field(3410; "Scheduled Minutes"; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Minutes" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                                     Start = FIELD ("Date Filter"),
                                                                                     "Schedule Type" = FIELD ("Schedule Type Filter"),
                                                                                     "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Scheduled Minutes';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3420; "Scheduled Hours"; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Schedule Type" = FIELD ("Schedule Type Filter"),
                                                                                   "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Scheduled Hours';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3421; "Hours Fixed"; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Schedule Type" = CONST (Fixed),
                                                                                   "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Hours Fixed';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3422; "Hours Planned"; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Schedule Type" = CONST (Planned),
                                                                                   "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Hours Planned';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3423; "Hours Simulated"; Decimal)
        {
            CalcFormula = Sum ("PRPL - Job Schedule Entry"."Scheduled Hours" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                                   Start = FIELD ("Date Filter"),
                                                                                   "Schedule Type" = CONST (Simulated),
                                                                                   "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Hours Simulated';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3430; "Scheduled Freeze"; Boolean)
        {
            Caption = 'Scheduled Freeze';
        }
        field(3431; "Effort driven"; Boolean)
        {
            Caption = 'Effort driven';
        }
        field(3500; "Assigned Resources"; Boolean)
        {
            CalcFormula = Exist ("PRPL - Assigned Resource" WHERE ("Process No." = FIELD ("Process No.")));
            Caption = 'Assigned Resources';
            Description = 'CF Assigned Resource';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3501; "Assigned Resource No."; Text[150])
        {
            Caption = 'Assigned Resource No.';
        }
        field(3510; "Scheduled Early Start"; Date)
        {
            CalcFormula = Min ("PRPL - Job Schedule Entry".Start WHERE ("Job Process No." = FIELD ("Process No.")));
            Caption = 'Scheduled Early Start';
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3511; "Scheduled Early Days"; Integer)
        {
            Caption = 'Scheduled Early Days';
            Editable = false;
        }
        field(3520; "Scheduled Late Finish"; Date)
        {
            CalcFormula = Max ("PRPL - Job Schedule Entry".Start WHERE ("Job Process No." = FIELD ("Process No.")));
            Caption = 'Scheduled Late Finish';
            Description = 'CF Job Schedule Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3521; "Scheduled Late Days"; Integer)
        {
            Caption = 'Scheduled Late Days';
            Editable = false;
        }
        field(3522; "Hours after Finish"; Integer)
        {
            Caption = 'Hours after Finish';
            Editable = false;
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4002; "Process ID"; Integer)
        {
            Caption = 'Process ID';
            Description = 'ne';
            Editable = false;
        }
        field(4005; "Sorting No."; Integer)
        {
            Caption = 'Sorting No.';
        }
        field(4010; "Process Channel"; Option)
        {
            Caption = 'Process Channel';
            Description = ' ,Work,Lead time,Structure';
            OptionCaption = ' ,Work,Lead time,Structure';
            OptionMembers = " ",Work,"Lead time",Structure;
        }
        field(4020; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
        }
        field(4090; "Planning Status"; Option)
        {
            Caption = 'Planning Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(4100; "Lead Time Calculation"; DateFormula)
        {
            Caption = 'Lead Time Calculation';
        }
        field(4200; "Priority Option"; Option)
        {
            Caption = 'Priority Option';
            Description = ' ,None,,Low,,,Middle,,,High,Very high,Top';
            OptionCaption = ' ,None,,Low,,,Middle,,,High,Very high,Top';
            OptionMembers = " ",Low,,,,,Middle,,,High,"Very high",Top;
        }
        field(4201; Priority; Integer)
        {
            Caption = 'Priority';
            Description = '0-1000';
            MaxValue = 1000;
            MinValue = 0;
        }
        field(4210; Milestone; Boolean)
        {
            Caption = 'Milestone';
        }
        field(4220; Critical; Boolean)
        {
            Caption = 'Critical';
            Description = 'ne';
            Editable = false;
        }
        field(4250; Deadline; Date)
        {
            Caption = 'Deadline';
        }
        field(4260; "Constraint Type"; Option)
        {
            Caption = 'Constraint Type';
            Description = 'DEU=" ,So früh wie möglich,So spät wie möglich,Muss anfangen am,Muss enden am,Anfang nicht früher als,Anfang nicht später als,Ende nicht früher als,Ende nicht später als";ENU=" ,As Soon As Possible,As Late As Possible,Must Start On,Must Finish On,Start No Earlier Than,Start No Later Than,Finish No Earlier Than,Finish No Later Than"';
            OptionCaption = ' ,ASAP,ALAP,MSOn,MFOn,SNET,SNLT,FNET,FNLT';
            OptionMembers = " ",ASAP,ALAP,MSOn,MFOn,SNET,SNLT,FNET,FNLT;
        }
        field(4261; "Constraint Date"; Date)
        {
            Caption = 'Constraint Date';
        }
        field(4262; "Constraint Minutes"; Decimal)
        {
            Caption = 'Constraint Minutes';
        }
        field(4290; "Process Type Fixed ..."; Option)
        {
            Caption = 'Process Type Fixed ...';
            Description = ' ,Units,Work,Duration';
            OptionCaption = ' ,Units,Work,Duration';
            OptionMembers = " ",Units,Work,Duration;
        }
        field(4310; "Work Quantity"; Decimal)
        {
            Caption = 'Work Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(4320; "Work Format"; Option)
        {
            Caption = 'Work Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
        }
        field(4330; "Work Hours"; Decimal)
        {
            Caption = 'Work Hours';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            Editable = false;
        }
        field(4331; "Work Planned Hours"; Decimal)
        {
            CalcFormula = Sum ("PRPL - Assigned Resource"."Planned Work Hours" WHERE ("Process No." = FIELD ("Process No.")));
            Caption = 'Work Planned Hours';
            DecimalPlaces = 0 : 5;
            Description = 'CF Assigned Resources';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4332; "Work Not Planned Hours"; Decimal)
        {
            Caption = 'Work Not Planned Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
        }
        field(4333; "Work Overplanned Hours"; Decimal)
        {
            Caption = 'Work Overplanned Hours';
            DecimalPlaces = 0 : 5;
            Description = 'ne';
            Editable = false;
        }
        field(4335; "Work Assigned max. Units"; Decimal)
        {
            CalcFormula = Max ("PRPL - Assigned Resource"."Assigned Units" WHERE ("Process No." = FIELD ("Process No.")));
            Caption = 'Work Assigned max. Units';
            DecimalPlaces = 0 : 5;
            Description = 'CF Assigned Resources';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4350; "Planned Capacity %"; Decimal)
        {
            Caption = 'Planned Capacity %';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
            MinValue = 0;
        }
        field(4360; "Assigned Capacity %"; Decimal)
        {
            Caption = 'Assigned Capacity %';
            DecimalPlaces = 0 : 5;
            Description = 'ne 0:5';
            Editable = false;
            MinValue = 0;
        }
        field(4410; "Duration Quantity"; Decimal)
        {
            Caption = 'Duration Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(4420; "Duration Format"; Option)
        {
            Caption = 'Duration Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
        }
        field(4500; "Early Start"; Date)
        {
            Caption = 'Early Start';
        }
        field(4505; "Buffer Start Days"; Decimal)
        {
            Caption = 'Buffer Start Days';
            DecimalPlaces = 0 : 2;
            Description = 'ne';
            Editable = false;
        }
        field(4510; Start; Date)
        {
            Caption = 'Start';
        }
        field(4511; "Minutes before Start"; Decimal)
        {
            Caption = 'Minutes before Start';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(4512; "Start Time"; Time)
        {
            Caption = 'Start Time';
        }
        field(4520; "Late Start"; Date)
        {
            Caption = 'Late Start';
        }
        field(4550; "Early Finish"; Date)
        {
            Caption = 'Early Finish';
        }
        field(4560; Finish; Date)
        {
            Caption = 'Finish';
        }
        field(4561; "Minutes at Finish"; Decimal)
        {
            Caption = 'Minutes at Finish';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(4562; "Finish Time"; Time)
        {
            Caption = 'Finish Time';
        }
        field(4565; "Buffer Finish Days"; Decimal)
        {
            Caption = 'Buffer Finish Days';
            DecimalPlaces = 0 : 2;
            Description = 'ne';
            Editable = false;
        }
        field(4570; "Late Finish"; Date)
        {
            Caption = 'Late Finish';
        }
        field(4580; "Summary Unique No."; Integer)
        {
            Caption = 'Summary Unique No.';
            Description = 'ne';
            Editable = false;
        }
        field(4583; "Summary Start"; Date)
        {
            Caption = 'Summary Start';
            Description = 'ne';
            Editable = false;
        }
        field(4586; "Summary Finish"; Date)
        {
            Caption = 'Summary Finish';
            Description = 'ne';
            Editable = false;
        }
        field(4600; Predecessor; Boolean)
        {
            CalcFormula = Exist ("PRPL - Job Line Process Pre." WHERE ("Process No. Follower" = FIELD ("Process No.")));
            Caption = 'Predecessor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4601; Follower; Boolean)
        {
            CalcFormula = Exist ("PRPL - Job Line Process Pre." WHERE ("Process No. Predecessor" = FIELD ("Process No.")));
            Caption = 'Follower';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4610; "Predecessor ID"; Text[100])
        {
            Caption = 'Predecessor ID';
        }
        field(4790; "% Complete"; Decimal)
        {
            Caption = '% Complete';
            MaxValue = 100;
            MinValue = 0;
        }
        field(4800; "-- MSP"; Integer)
        {
            Caption = '-- MSP';
            Enabled = false;
        }
        field(4801; "MSP Interface"; Boolean)
        {
            Caption = 'MSP Interface';
            Description = 'Init: true';
            InitValue = true;
        }
        field(4802; Rollup; Boolean)
        {
            Caption = 'Rollup';
            Description = 'ne';
            Editable = false;
        }
        field(4840; "MSP Calendar UID"; Code[20])
        {
            Caption = 'MSP Calendar UID';
            Description = 'ne';
            Editable = false;
        }
        field(4850; "MSP Task UID"; Code[10])
        {
            Caption = 'MSP Task UID';
            Description = 'ne';
            Editable = false;
        }
        field(4851; "MSP Process No."; Code[20])
        {
            Caption = 'MSP Process No.';
            Description = 'ne';
            Editable = false;
        }
        field(4900; "-- Signals"; Integer)
        {
            Caption = '-- Signals';
        }
        field(4910; "Signal Forward"; Text[1])
        {
            Caption = 'Signal Forward';
            Description = 'ne';
            Editable = false;
        }
        field(4911; "Signal Backward"; Text[1])
        {
            Caption = 'Signal Backward';
            Description = 'ne';
            Editable = false;
        }
        field(4915; "Signal Conflict"; Text[30])
        {
            Caption = 'Signal Conflict';
            Description = 'ne';
            Editable = false;
        }
        field(5292332; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292333; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292334; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Editable = false;
        }
        field(5292335; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292336; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292337; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(5292338; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292339; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292340; WBS; Code[50])
        {
            Caption = 'WBS';
            Description = 'ne';
            Editable = false;
        }
        field(5292341; "Time Entry Hours"; Decimal)
        {
            CalcFormula = Sum ("Job Journal Line"."Processing Hours" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                           "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Time Entry Hours';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292342; "Performed Hours"; Decimal)
        {
            CalcFormula = Sum ("Job Ledger Entry"."Processing Hours" WHERE ("Job Process No." = FIELD ("Process No."),
                                                                           "Planning Resource No." = FIELD ("Schedule Resource Filter")));
            Caption = 'Performed Hours';
            DecimalPlaces = 0 : 5;
            Description = 'CF Job Ledger Entry';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Process No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Process Outline No.", "Process No.")
        {
        }
        key(Key3; "Job No.", "Process ID", "Assigned Resource No.", "Planning Status")
        {
        }
        key(Key4; "Process Outline No.", "Planning Status", "Process Channel")
        {
        }
        key(Key5; "Process Outline No.", "Process No.", "Process Channel")
        {
        }
        key(Key6; "Job No.", "Job Line Unique No.", "Planning Status", "Process Channel")
        {
        }
        key(Key7; "Job No.", "Planning Status", "Process Channel", "Person Responsible", "Job Line Unique No.")
        {
        }
        key(Key8; "Job No.", "Summary Unique No.")
        {
        }
        key(Key9; "Job No.", "MSP Task UID")
        {
        }
        key(Key10; "Sorting No.", "Process Outline No.")
        {
        }
    }

    fieldgroups
    {
    }
}

