table 5292751 "PRPL - Job Planning Setup"
{
    Caption = 'Job Planning Setup';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'ne, TR Job';
            Editable = false;
            TableRelation = Job;
        }
        field(10; "Job Description"; Text[50])
        {
            CalcFormula = Lookup (Job.Description WHERE ("No." = FIELD ("Job No.")));
            Caption = 'Job Description';
            Description = 'ne, LU Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Job Description 2"; Text[50])
        {
            CalcFormula = Lookup (Job."Description 2" WHERE ("No." = FIELD ("Job No.")));
            Caption = 'Job Description 2';
            Description = 'ne, LU Job';
            Editable = false;
            FieldClass = FlowField;
        }
        field(97; "Last Planning ID"; Integer)
        {
            Caption = 'Planning ID';
            Description = 'ne';
            Editable = false;
        }
        field(1000; "-- General Setup"; Integer)
        {
            Caption = '-- General Setup';
            Enabled = false;
        }
        field(1100; "Minutes per Day"; Decimal)
        {
            BlankZero = true;
            Caption = 'Minutes per Day';
            DecimalPlaces = 0 : 5;
        }
        field(1110; "Minutes per Week"; Decimal)
        {
            BlankZero = true;
            Caption = 'Minutes per Week';
            DecimalPlaces = 0 : 5;
        }
        field(1120; "Days per Month"; Decimal)
        {
            BlankZero = true;
            Caption = 'Days per Month';
            DecimalPlaces = 0 : 5;
        }
        field(1200; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            Description = 'TR Base Calendar';
            TableRelation = "Base Calendar";
        }
        field(1210; "Job Work-Hour Template"; Code[10])
        {
            Caption = 'Work-Hour Template';
            Description = 'TR Job Work-Hour Template';
            TableRelation = "PR - Job Work-Hour Template";
        }
        field(1250; "Default Start Time"; Time)
        {
            Caption = 'Default Start Time';
        }
        field(1251; "1. Break Start Time"; Time)
        {
            Caption = '1. Break Start Time';
        }
        field(1252; "1. Break Finish Time"; Time)
        {
            Caption = '1. Break Finish Time';
        }
        field(1253; "1. Break Minutes"; Decimal)
        {
            Caption = '1. Break Minutes';
        }
        field(1254; "2. Break Start Time"; Time)
        {
            Caption = '2. Break Start Time';
        }
        field(1255; "2. Break Finish Time"; Time)
        {
            Caption = '2. Break Finish Time';
        }
        field(1256; "2. Break Minutes"; Decimal)
        {
            Caption = '2. Break Minutes';
        }
        field(1257; "3. Break Start Time"; Time)
        {
            Caption = '3. Break Start Time';
        }
        field(1258; "3. Break Finish Time"; Time)
        {
            Caption = '3. Break Finish Time';
        }
        field(1259; "3. Break Minutes"; Decimal)
        {
            Caption = '3. Break Minutes';
        }
        field(1260; "Default Finish Time"; Time)
        {
            Caption = 'Default Finish Time';
        }
        field(1300; "Availability Priority"; Option)
        {
            Caption = 'Availability Priority';
            Description = 'Person,Resource Group';
            OptionCaption = 'Person,Resource Group';
            OptionMembers = Person,"Resource Group";
        }
        field(1400; "Calculate Buffer"; Boolean)
        {
            Caption = 'Calculate Buffer';
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
        field(3020; "Not schedule rem. min"; Decimal)
        {
            Caption = 'Not schedule rem. min';
            DecimalPlaces = 0 : 2;
        }
        field(3030; "Rounding in min"; Integer)
        {
            Caption = 'Rounding in min';
        }
        field(3031; "Rounding in min (Direction)"; Option)
        {
            Caption = 'Rounding in min (Direction)';
            Description = ' ,<,>';
            OptionCaption = ' ,<,>';
            OptionMembers = " ","<",">";
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
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
        field(4250; Deadline; Date)
        {
            Caption = 'Deadline';
        }
        field(4260; "Constraint Type"; Option)
        {
            Caption = 'Constraint Type';
            Description = ' ,As Soon As Possible,As Late As Possible';
            OptionCaption = ' ,As Soon As Possible,As Late As Possible';
            OptionMembers = " ","As Soon As Possible","As Late As Possible";
        }
        field(4270; "Critical Slack Limit (Days)"; Decimal)
        {
            Caption = 'Critical Slack Limit (Days)';
            DecimalPlaces = 0 : 5;
            Description = '0:5';
        }
        field(4290; "Process Fixed ..."; Option)
        {
            Caption = 'Process Fixed ...';
            Description = ' ,Units,Work,Duration';
            OptionCaption = ' ,Units,Work,Duration';
            OptionMembers = " ",Units,Work,Duration;
        }
        field(4320; "Work Format"; Option)
        {
            Caption = 'Work Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
        }
        field(4420; "Duration Format"; Option)
        {
            Caption = 'Duration Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
        }
        field(4510; Start; Date)
        {
            Caption = 'Start';
        }
        field(4530; "Status Date"; Date)
        {
            Caption = 'Status Date';
        }
        field(4560; Finish; Date)
        {
            Caption = 'Finish';
        }
        field(4800; "-- MSP"; Integer)
        {
            Caption = '-- MSP';
            Enabled = false;
        }
        field(4840; "MSP Calendar UID"; Code[10])
        {
            Caption = 'MSP Calendar UID';
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
    }

    keys
    {
        key(Key1; "Job No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

