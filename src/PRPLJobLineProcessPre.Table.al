table 5292752 "PRPL - Job Line Process Pre."
{
    Caption = 'Job Line Process Predecessor';

    fields
    {
        field(1; "Process No. Follower"; Code[20])
        {
            Caption = 'Process No. Follower';
            Description = 'TR "Job Line Process"';
            Editable = false;
            NotBlank = true;
            TableRelation = "PRPL - Job Line Process";
        }
        field(2; "Process No. Predecessor"; Code[20])
        {
            Caption = 'Process No. Predecessor';
            Description = 'TR "Job Line Process"';
            NotBlank = true;
            TableRelation = "PRPL - Job Line Process";
        }
        field(10; "Predecessor Description"; Text[50])
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Description WHERE ("Process No." = FIELD ("Process No. Predecessor")));
            Caption = 'Predecessor Description';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Predecessor Type"; Option)
        {
            Caption = 'Predecessor Type';
            Description = ' ,FF,(FS),(SF),SS';
            OptionCaption = ' ,FF,,,SS';
            OptionMembers = " ",FF,,,SS;
        }
        field(30; "Lag Quantity"; Decimal)
        {
            Caption = 'Lag Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(31; "Lag Format"; Option)
        {
            Caption = 'Lag Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
        }
        field(100; "Predecessor ID"; Integer)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process"."Process ID" WHERE ("Process No." = FIELD ("Process No. Predecessor")));
            Caption = 'Predecessor ID';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Predecessor Start"; Date)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Start WHERE ("Process No." = FIELD ("Process No. Predecessor")));
            Caption = 'Predecessor Start';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(111; "Pred. min Start"; Decimal)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process"."Minutes before Start" WHERE ("Process No." = FIELD ("Process No. Predecessor")));
            Caption = 'Pred. min Start';
            DecimalPlaces = 0 : 5;
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Predecessor Finish"; Date)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Finish WHERE ("Process No." = FIELD ("Process No. Predecessor")));
            Caption = 'Predecessor Finish';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(121; "Pred. min at Finish"; Decimal)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process"."Minutes at Finish" WHERE ("Process No." = FIELD ("Process No. Predecessor")));
            Caption = 'Pred. min at Finish';
            DecimalPlaces = 0 : 5;
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Follower Description"; Text[50])
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Description WHERE ("Process No." = FIELD ("Process No. Follower")));
            Caption = 'Follower Description';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(201; "Follower ID"; Integer)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process"."Process ID" WHERE ("Process No." = FIELD ("Process No. Follower")));
            Caption = 'Follower ID';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(210; "Follower Start"; Date)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Start WHERE ("Process No." = FIELD ("Process No. Follower")));
            Caption = 'Follower Start';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(211; "Foll. min Start"; Decimal)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process"."Minutes before Start" WHERE ("Process No." = FIELD ("Process No. Follower")));
            Caption = 'Foll. min Start';
            DecimalPlaces = 0 : 5;
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(220; "Follower Finish"; Date)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Finish WHERE ("Process No." = FIELD ("Process No. Follower")));
            Caption = 'Follower Finish';
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(221; "Foll. min at Finish"; Decimal)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process"."Minutes at Finish" WHERE ("Process No." = FIELD ("Process No. Follower")));
            Caption = 'Foll. min at Finish';
            DecimalPlaces = 0 : 5;
            Description = 'LU "Job Line Process"';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4800; "-- MSP"; Integer)
        {
            Caption = '-- MSP';
            Enabled = false;
        }
        field(4850; "MSP Task UID"; Code[10])
        {
            Caption = 'MSP Task UID';
            Description = 'ne';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Process No. Follower", "Process No. Predecessor")
        {
            Clustered = true;
        }
        key(Key2; "Process No. Predecessor", "Process No. Follower")
        {
        }
    }

    fieldgroups
    {
    }
}

