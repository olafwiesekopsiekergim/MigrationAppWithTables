table 2087631 "DS Appointment"
{
    Caption = 'DS Appointment';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Source Type"; Code[10])
        {
            Caption = 'Source Type';
        }
        field(3; "Source App"; Text[30])
        {
            Caption = 'Source App';
        }
        field(10; "Job No."; Text[50])
        {
            Caption = 'Job No.';
        }
        field(11; "Task No."; Text[50])
        {
            Caption = 'Task No.';
        }
        field(12; "Appointment Id"; Integer)
        {
            Caption = 'Appointment Id';
        }
        field(20; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(21; Body; Text[250])
        {
            Caption = 'Body';
        }
        field(22; Start; DateTime)
        {
            Caption = 'Start';
        }
        field(23; "End"; DateTime)
        {
            Caption = 'End';
        }
        field(24; "Is All Day Event"; Boolean)
        {
            Caption = 'Is All Day Event';
        }
        field(25; "Time Marker"; Text[100])
        {
            Caption = 'Time Marker';
        }
        field(26; Category; Text[100])
        {
            Caption = 'Category';
        }
        field(27; Importance; Integer)
        {
            Caption = 'Importance';
        }
        field(28; Duration; Time)
        {
            Caption = 'Duration';
        }
        field(29; "Duration (Sec.)"; Decimal)
        {
            Caption = 'Duration (Sec.)';
        }
        field(30; "Non Working Time (Sec.)"; Decimal)
        {
            Caption = 'Non Working Time (Sec.)';
        }
        field(31; "Planning Quantity"; Decimal)
        {
            Caption = 'Planning Quantity';
        }
        field(32; "Planning Unit Of Measure"; Text[20])
        {
            Caption = 'Planning Unit Of Measure';
        }
        field(33; "Planning UoM Conversion"; Decimal)
        {
            Caption = 'Planning UoM Conversion';
        }
        field(34; "Use Fix Planning Quantity"; Boolean)
        {
            Caption = 'Use Fix Planning Quantity';
        }
        field(35; "Round To Unit Of Measure"; Boolean)
        {
            Caption = 'Round To Unit Of Measure';
        }
        field(36; "Last Modified Date"; DateTime)
        {
            Caption = 'Last Modified Date';
        }
        field(37; "Last Modified User"; Text[100])
        {
            Caption = 'Last Modified User';
        }
        field(38; "Created Date"; DateTime)
        {
            Caption = 'Created Date';
        }
        field(39; "Created User"; Text[100])
        {
            Caption = 'Created User';
        }
        field(40; "Sent From Backoffice"; Boolean)
        {
            Caption = 'Sent From Backoffice';
        }
        field(41; "Backoffice Id"; Text[100])
        {
            Caption = 'Backoffice Id';
        }
        field(42; "Backoffice Parent Id"; Text[100])
        {
            Caption = 'Backoffice Parent Id';
        }
        field(43; "Travel Time (Sec.)"; Decimal)
        {
        }
        field(44; "Travel Distance"; Decimal)
        {
        }
        field(100; "Database Action"; Text[1])
        {
            Caption = 'Database Action';
        }
        field(101; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = New,Processed,Error;
        }
        field(102; "Error Message"; Text[250])
        {
            Caption = 'Error Message';
        }
        field(103; "DateTime Received"; DateTime)
        {
            Caption = 'DateTime Received';
        }
        field(200; "Resource Report Filter"; Code[20])
        {
            Caption = 'Resource Report Filter';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Appointment Id")
        {
        }
        key(Key3; "Job No.", "Task No.")
        {
        }
    }

    fieldgroups
    {
    }
}

