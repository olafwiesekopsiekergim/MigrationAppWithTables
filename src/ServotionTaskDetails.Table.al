table 42014856 "Servotion Task Details"
{

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
        field(139; "Task Customer Priority"; Integer)
        {
            Caption = 'Task Customer Priority';
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
        field(500; F_ResponseDatePositive; Decimal)
        {
        }
        field(501; F_ResponseDateNegative; Decimal)
        {
        }
        field(502; F_LatestStartingTimePositive; Decimal)
        {
        }
        field(503; F_LatestStartingTimeNegative; Decimal)
        {
        }
        field(504; F_TaskLength; Decimal)
        {
        }
        field(505; F_TimeFrameLength; Decimal)
        {
        }
        field(506; F_CustomerPriority; Decimal)
        {
        }
        field(507; F_TaskPriority; Decimal)
        {
        }
        field(514; F_LongestWaitingTask; Decimal)
        {
        }
        field(1000; "Task Response DateTime"; DateTime)
        {
            Caption = 'Task Response DateTime';
        }
        field(1001; "Task Order DateTime"; DateTime)
        {
            Caption = 'Task Order DateTime';
        }
        field(1002; "Task Promised Start DateTime"; DateTime)
        {
            Caption = 'Task Promised Start DateTime';
        }
        field(1003; "Task Promised Finish DateTime"; DateTime)
        {
            Caption = 'Task Promised Finish DateTime';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Document Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

