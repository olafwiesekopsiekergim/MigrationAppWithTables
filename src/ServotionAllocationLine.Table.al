table 42014858 "Servotion Allocation Line"
{
    Caption = 'Calculation Result Line';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(21; Dirty; Boolean)
        {
            Caption = 'Dirty';
            Editable = false;
        }
        field(22; Validated; DateTime)
        {
            Caption = 'Validated';
        }
        field(23; Message; Text[250])
        {
            Caption = 'Message';
        }
        field(24; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'New,Unmodified,Modified,To Be Late,Calculation Error,Allocation Error';
            OptionMembers = New,Unmodified,Modified,"To Be Late","Calculation Error","Allocation Error";
        }
        field(25; "Manually Allocated"; Boolean)
        {
            Caption = 'Manually Allocated';
            Editable = false;
        }
        field(26; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
        }
        field(101; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'Servotion Computing Cache';
            Editable = false;
        }
        field(102; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            Description = 'Servotion Computing Cache';
            Editable = false;
        }
        field(103; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            Description = 'Servotion Computing Cache';
        }
        field(104; "Slot Starting Time"; DateTime)
        {
            Caption = 'Slot Starting Time';
            Description = 'Servotion Computing Cache';
        }
        field(121; "Slot Ending Time"; DateTime)
        {
            Caption = 'Slot Ending Time';
            Description = 'Servotion Computing Cache';
        }
        field(122; "Slot Starting GPS Latitude"; Decimal)
        {
            Caption = 'Slot Starting GPS Latitude';
            DecimalPlaces = 0 : 8;
            Description = 'Servotion Computing Cache';
        }
        field(123; "Slot Starting GPS Longitude"; Decimal)
        {
            Caption = 'Slot Starting GPS Longitude';
            DecimalPlaces = 0 : 8;
            Description = 'Servotion Computing Cache';
        }
        field(124; "Slot Ending GPS Latitude"; Decimal)
        {
            Caption = 'Slot Ending GPS Latitude';
            DecimalPlaces = 0 : 8;
            Description = 'Servotion Computing Cache';
        }
        field(125; "Slot Ending GPS Longitude"; Decimal)
        {
            Caption = 'Slot Ending GPS Longitude';
            DecimalPlaces = 0 : 8;
            Description = 'Servotion Computing Cache';
        }
        field(126; "Slot Duration"; Duration)
        {
            Caption = 'Slot Duration';
            Description = 'Servotion Computing Cache';
        }
        field(127; "Resource Zone Match"; Boolean)
        {
            Caption = 'Resource Zone Match';
            Description = 'Servotion Computing Cache';
        }
        field(139; "Task Customer Priority"; Integer)
        {
            Caption = 'Task Customer Priority';
            Description = 'Servotion Task Details';
        }
        field(140; "Task GPS Latitude"; Decimal)
        {
            Caption = 'Task GPS Latitude';
            DecimalPlaces = 0 : 8;
            Description = 'Servotion Task Details';
        }
        field(141; "Task GPS Longitude"; Decimal)
        {
            Caption = 'Task GPS Longitude';
            DecimalPlaces = 0 : 8;
            Description = 'Servotion Task Details';
        }
        field(142; "Task Duration"; Duration)
        {
            Caption = 'Task Duration';
            Description = 'Servotion Task Details';
        }
        field(143; "Task Priority"; Option)
        {
            Caption = 'Task Priority';
            Description = 'Servotion Task Details';
            OptionCaption = 'Low,Medium,High';
            OptionMembers = Low,Medium,High;
        }
        field(144; "Task Zone Code"; Code[10])
        {
            Caption = 'Task Zone Code';
            Description = 'Servotion Task Details';
        }
        field(145; "Task Time To Latest Start"; Duration)
        {
            Caption = 'Task Time To Latest Start';
            Description = 'Servotion Task Details';
        }
        field(146; "Slot Distance From Previous"; Decimal)
        {
            Caption = 'Slot Distance From Previous';
            Description = 'Servotion Computing Cache';
        }
        field(147; "Slot Travel Time From Previous"; Duration)
        {
            Caption = 'Slot Travel Time From Previous';
            Description = 'Servotion Computing Cache';
        }
        field(148; "Slot Distance To Next"; Decimal)
        {
            Caption = 'Slot Distance To Next';
            Description = 'Servotion Computing Cache';
        }
        field(149; "Slot Travel Time To Next"; Duration)
        {
            Caption = 'Slot Travel Time To Next';
            Description = 'Servotion Computing Cache';
        }
        field(150; "Slot Earliest Starting Time"; DateTime)
        {
            Caption = 'Slot Earliest Starting Time';
            Description = 'Servotion Computing Cache';
        }
        field(151; "Slot Latest Finishing Time"; DateTime)
        {
            Caption = 'Slot Latest Finishing Time';
            Description = 'Servotion Computing Cache';
        }
        field(152; "Slot Effective Starting Time"; DateTime)
        {
            Caption = 'Slot Effective Starting Time';
            Description = 'Servotion Computing Cache';
        }
        field(153; "Task Promised Date"; Date)
        {
            Caption = 'Task Promised Date';
            Description = 'Servotion Task Details';
        }
        field(154; "Task Promised Start Time"; Time)
        {
            Caption = 'Task Promised Start Time';
            Description = 'Servotion Task Details';
        }
        field(155; "Task Promised Finish Time"; Time)
        {
            Caption = 'Task Promised Finish Time';
            Description = 'Servotion Task Details';
        }
        field(156; "Task Order Date"; Date)
        {
            Caption = 'Task Order Date';
            Description = 'Servotion Task Details';
        }
        field(157; "Task Order Time"; Time)
        {
            Caption = 'Task Order Time';
            Description = 'Servotion Task Details';
        }
        field(158; "Task Response Date"; Date)
        {
            Caption = 'Task Response Date';
            Description = 'Servotion Task Details';
        }
        field(159; "Task Response Time"; Time)
        {
            Caption = 'Task Response Time';
            Description = 'Servotion Task Details';
        }
        field(160; "Task Preferred Resource"; Code[20])
        {
            Caption = 'Task Preferred Resource';
            Description = 'Servotion Task Details';
        }
        field(161; "Task Service Item No."; Code[20])
        {
            Caption = 'Task Service Item No.';
            Description = 'Servotion Task Details';
        }
        field(162; "Task Customer No."; Code[20])
        {
            Caption = 'Task Customer No.';
            Description = 'Servotion Task Details';
        }
        field(163; "Task Latest Starting Time"; DateTime)
        {
            Caption = 'Task Latest Starting Time';
            Description = 'Servotion Task Details';
        }
        field(164; "Task Earliest Starting Time"; DateTime)
        {
            Caption = 'Task Earliest Starting Time';
            Description = 'Servotion Task Details';
        }
        field(165; "Task Min. Waiting From Order"; Duration)
        {
            Caption = 'Task Min. Waiting From Order';
            Description = 'Servotion Task Details';
        }
        field(166; "Task Item No."; Code[20])
        {
            Caption = 'Task Item No.';
            Description = 'Servotion Task Details';
        }
        field(167; "Task Service Item Group Code"; Code[10])
        {
            Caption = 'Task Service Item Group Code';
            Description = 'Servotion Task Details';
        }
        field(168; "Task Skill Source"; Option)
        {
            Caption = 'Task Skill Source';
            Description = 'Servotion Task Details';
            OptionMembers = " ","Service Item",Item,"Service Item Group";
        }
        field(169; "Task Require Skill"; Boolean)
        {
            Caption = 'Task Require Skill';
            Description = 'Servotion Task Details';
        }
        field(170; "Partial Value"; Decimal)
        {
            Caption = 'Partial Value';
            Description = 'Servotion Task Details';
        }
        field(172; "Total Value"; Decimal)
        {
            Caption = 'Total Value';
            Description = 'Servotion Computing Cache';
        }
        field(174; "Match Status"; Option)
        {
            Caption = 'Match Status';
            Description = 'Servotion Computing Cache';
            OptionCaption = ' ,No Match,Match,Out of Promised Time,Out of Response Time';
            OptionMembers = " ","No Match",Match,"Out of Promised Time","Out of Response Time";
        }
        field(500; F_ResponseDatePositive; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(501; F_ResponseDateNegative; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(502; F_LatestStartingTimePositive; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(503; F_LatestStartingTimeNegative; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(504; F_TaskLength; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(505; F_TimeFrameLength; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(506; F_CustomerPriority; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(507; F_TaskPriority; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(510; F_GeographicalDistance; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(511; F_EarliestStartingDate; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(512; F_PreferredResource; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(513; F_SlotUsefulness; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(514; F_LongestWaitingTask; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(515; F_ResponseDatePositive_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(516; F_ResponseDateNegative_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(517; F_LatestStartingTimePositive_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(518; F_LatestStartingTimeNegative_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(519; F_TaskLength_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(520; F_TimeFrameLength_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(521; F_CustomerPriority_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(522; F_TaskPriority_P; Decimal)
        {
            Description = 'Servotion Task Details';
        }
        field(523; F_GeographicalDistance_P; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(524; F_EarliestStartingDate_P; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(525; F_PreferredResource_P; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(526; F_SlotUsefulness_P; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(527; F_LongestWaitingTask_P; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(528; F_ResourceZonePreference; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
        field(529; F_ResourceZonePreference_P; Decimal)
        {
            Description = 'Servotion Computing Cache';
        }
    }

    keys
    {
        key(Key1; "Entry No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Document Line No.")
        {
        }
        key(Key3; "Entry No.", "Document No.", "Document Line No.", "Resource No.", "Slot Starting Time", "Slot Ending Time")
        {
        }
        key(Key4; "Resource No.")
        {
        }
        key(Key5; "Manually Allocated")
        {
        }
        key(Key6; "Match Status")
        {
        }
        key(Key7; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

