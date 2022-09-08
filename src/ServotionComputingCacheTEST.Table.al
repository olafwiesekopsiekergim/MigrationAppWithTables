table 42014855 "Servotion Computing Cache TEST"
{
    Caption = 'Computing Cache';

    fields
    {
        field(101; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(102; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(103; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
        }
        field(104; "Slot Starting Time"; DateTime)
        {
            Caption = 'Slot Starting Time';
        }
        field(121; "Slot Ending Time"; DateTime)
        {
            Caption = 'Slot Ending Time';
        }
        field(122; "Slot Starting GPS Latitude"; Decimal)
        {
            Caption = 'Slot Starting GPS Latitude';
            DecimalPlaces = 0 : 8;
        }
        field(123; "Slot Starting GPS Longitude"; Decimal)
        {
            Caption = 'Slot Starting GPS Longitude';
            DecimalPlaces = 0 : 8;
        }
        field(124; "Slot Ending GPS Latitude"; Decimal)
        {
            Caption = 'Slot Ending GPS Latitude';
            DecimalPlaces = 0 : 8;
        }
        field(125; "Slot Ending GPS Longitude"; Decimal)
        {
            Caption = 'Slot Ending GPS Longitude';
            DecimalPlaces = 0 : 8;
        }
        field(126; "Slot Duration"; Duration)
        {
            Caption = 'Slot Duration';
        }
        field(127; "Resource Zone Match"; Boolean)
        {
            Caption = 'Resource Zone Match';
        }
        field(140; "Task GPS Latitude"; Decimal)
        {
            Caption = 'Task GPS Latitude';
            DecimalPlaces = 0 : 8;
        }
        field(141; "Task GPS Longitude"; Decimal)
        {
            Caption = 'Task GPS Longitude';
            DecimalPlaces = 0 : 8;
        }
        field(142; "Task Duration"; Duration)
        {
            Caption = 'Task Duration';
        }
        field(143; "Task Priority"; Option)
        {
            Caption = 'Task Priority';
            OptionCaption = 'Low,Medium,High';
            OptionMembers = Low,Medium,High;
        }
        field(144; "Task Zone Code"; Code[10])
        {
            Caption = 'Task Zone Code';
        }
        field(145; "Task Time To Latest Start"; Duration)
        {
            Caption = 'Task Time To Latest Start';
        }
        field(146; "Slot Distance From Previous"; Decimal)
        {
            Caption = 'Slot Distance From Previous';
        }
        field(147; "Slot Travel Time From Previous"; Duration)
        {
            Caption = 'Slot Travel Time From Previous';
        }
        field(148; "Slot Distance To Next"; Decimal)
        {
            Caption = 'Slot Distance To Next';
        }
        field(149; "Slot Travel Time To Next"; Duration)
        {
            Caption = 'Slot Travel Time To Next';
        }
        field(150; "Slot Earliest Starting Time"; DateTime)
        {
            Caption = 'Slot Earliest Starting Time';
        }
        field(151; "Slot Latest Finishing Time"; DateTime)
        {
            Caption = 'Slot Latest Finishing Time';
        }
        field(152; "Slot Effective Starting Time"; DateTime)
        {
            Caption = 'Slot Effective Starting Time';
        }
        field(153; "Task Promised Date"; Date)
        {
            Caption = 'Task Promised Date';
        }
        field(154; "Task Promised Start Time"; Time)
        {
            Caption = 'Task Promised Start Time';
        }
        field(155; "Task Promised Finish Time"; Time)
        {
            Caption = 'Task Promised Finish Time';
        }
        field(156; "Task Order Date"; Date)
        {
            Caption = 'Task Order Date';
        }
        field(157; "Task Order Time"; Time)
        {
            Caption = 'Task Order Time';
        }
        field(158; "Task Response Date"; Date)
        {
            Caption = 'Task Response Date';
        }
        field(159; "Task Response Time"; Time)
        {
            Caption = 'Task Response Time';
        }
        field(160; "Task Preferred Resource"; Code[20])
        {
            Caption = 'Task Preferred Resource';
        }
        field(161; "Task Service Item No."; Code[20])
        {
            Caption = 'Task Service Item No.';
        }
        field(162; "Task Customer No."; Code[20])
        {
            Caption = 'Task Customer No.';
        }
        field(163; "Task Latest Starting Time"; DateTime)
        {
            Caption = 'Task Latest Starting Time';
        }
        field(164; "Task Earliest Starting Time"; DateTime)
        {
            Caption = 'Task Earliest Starting Time';
        }
        field(165; "Task Min. Waiting From Order"; Duration)
        {
            Caption = 'Task Min. Waiting From Order';
        }
        field(166; "Task Item No."; Code[20])
        {
            Caption = 'Task Item No.';
        }
        field(167; "Task Service Item Group Code"; Code[10])
        {
            Caption = 'Task Service Item Group Code';
        }
        field(168; "Task Skill Source"; Option)
        {
            Caption = 'Task Skill Source';
            OptionMembers = " ","Service Item",Item,"Service Item Group";
        }
        field(169; "Task Require Skill"; Boolean)
        {
            Caption = 'Task Require Skill';
        }
        field(170; "Partial Value"; Decimal)
        {
            Caption = 'Partial Value';
        }
        field(171; "Partial Value Calculated"; Boolean)
        {
            Caption = 'Partial Value Calculated';
        }
        field(172; "Total Value"; Decimal)
        {
            Caption = 'Total Value';
        }
        field(173; "Total Value Calculated"; Boolean)
        {
            Caption = 'Total Value Calculated';
        }
        field(174; "Match Status"; Option)
        {
            Caption = 'Match Status';
            OptionCaption = ' ,No Match,Match,Out of Promised Time,Out of Response Time';
            OptionMembers = " ","No Match",Match,"Out of Promised Time","Out of Response Time";
        }
        field(200; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(201; "Task Added to Allocation Line"; Boolean)
        {
            Caption = 'Task Added to Allocation Line';
        }
        field(202; "Added to Allocation Line"; Boolean)
        {
            Caption = 'Added to Allocation Line';
        }
        field(203; "Initial Slot"; Boolean)
        {
            Caption = 'Initial Slot';
        }
        field(204; "Match With Res Zone"; Boolean)
        {
            CalcFormula = Exist ("Servotion CC Res. Zone" WHERE ("Computing Cache Entry No." = FIELD ("Entry No."),
                                                                "Resource Zone Code" = FIELD ("Task Zone Code")));
            Caption = 'Match With Res Zone';
            FieldClass = FlowField;
        }
        field(205; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(206; "Previously Active"; Boolean)
        {
            Caption = 'Previously Active';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Document Line No.", "Resource No.", "Slot Starting Time", "Slot Ending Time")
        {
            Clustered = true;
        }
        key(Key2; "Entry No.")
        {
        }
        key(Key3; "Slot Ending Time")
        {
        }
        key(Key4; "Match Status", Active)
        {
        }
        key(Key5; "Total Value", Active)
        {
        }
        key(Key6; Active, "Slot Effective Starting Time", "Entry No.")
        {
        }
        key(Key7; Active, "Task Earliest Starting Time", "Entry No.")
        {
        }
        key(Key8; "Slot Effective Starting Time", "Added to Allocation Line")
        {
        }
        key(Key9; "Task Added to Allocation Line", "Match Status", "Document No.", "Resource No.", "Slot Starting Time", "Slot Ending Time")
        {
        }
        key(Key10; "Match Status", "Partial Value Calculated", "Resource No.")
        {
        }
        key(Key11; "Total Value Calculated", Active)
        {
        }
        key(Key12; "Added to Allocation Line", "Match Status")
        {
        }
        key(Key13; "Match Status")
        {
        }
        key(Key14; "Previously Active")
        {
        }
        key(Key15; "Task Added to Allocation Line", "Previously Active", "Document No.", "Resource No.", "Slot Starting Time", "Slot Ending Time")
        {
        }
        key(Key16; "Initial Slot")
        {
        }
    }

    fieldgroups
    {
    }
}

