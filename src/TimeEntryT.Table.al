table 5056324 "Time Entry/T"
{
    Caption = 'Time Entry';
    Description = 'GrTimeEntry';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Current Date"; Date)
        {
            Caption = 'Current Date';
            NotBlank = true;
        }
        field(3; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(4; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(5; "Task No."; Code[20])
        {
            Caption = 'Task No.';
        }
        field(6; "Time Account No."; Code[10])
        {
            Caption = 'Time Account No.';
            NotBlank = true;
            TableRelation = "Time Account/T"."No.";
        }
        field(7; "Time Account Descr."; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Time Account Symbol"; Text[3])
        {
            CalcFormula = Lookup ("Time Account/T".Symbol WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Symbol';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Time Account Value"; Decimal)
        {
            Caption = 'Time Account Value';
        }
        field(11; "Dimension 1"; Code[20])
        {
            Caption = 'Dimension 1';
        }
        field(12; "Dimension 2"; Code[20])
        {
            Caption = 'Dimension 2';
        }
        field(13; "Dimension 3"; Code[20])
        {
            Caption = 'Dimension 3';
        }
        field(14; "Dimension 4"; Code[20])
        {
            Caption = 'Dimension 4';
        }
        field(20; "TA Class (General)"; Option)
        {
            Caption = 'TA Class (General)';
            OptionCaption = ' ,Target Time,Actual Time,Presence Time,Total Time,Overtime,Absent Time,Supplement,Absent Day,Public Holiday,Special Day,Holiday,Info Day,Balance Period,Balance Total,Value Car. Fwd.,Break,Errand,Core Time,Bandwidth,Internal';
            OptionMembers = " ","Target Time","Actual Time","Presence Time","Total Time",Overtime,"Absent Time",Supplement,"Absent Day","Public Holiday","Special Day",Holiday,"Info Day","Balance Period","Balance Total","Value Car. Fwd.","Break",Errand,"Core Time",Bandwidth,Internal;
        }
        field(21; "TA Class (Statistics)"; Option)
        {
            Caption = 'TA Class (Statistics)';
            OptionCaption = ' ,Target Times,Total Times,Presence Times,app.Overtime,unapp.Overtime,app.Absences,unapp.Absences,Medical Appointm.,Vacation Days,Sick Leave,Values Car. Fwd.,Balances Period,Balances Total,Errands,Break Exceedings,Core Time Deviations';
            OptionMembers = " ","Target Times","Total Times","Presence Times","app.Overtime","unapp.Overtime","app.Absences","unapp.Absences","Medical Appointm.","Vacation Days","Sick Leave","Values Car. Fwd.","Balances Period","Balances Total",Errands,"Break Exceedings","Core Time Deviations";
        }
        field(22; "TA Class (Absent Days)"; Option)
        {
            Caption = 'TA Class (Absent Days)';
            OptionCaption = ' ,Vacation,Sick,Pub. Holiday,Leisure Time,Training,Business Trip,On-Call Duty,w/o continued Pay,Application';
            OptionMembers = " ",Vacation,Sick,"Pub. Holiday","Leisure Time",Training,"Business Trip","On-Call Duty","w/o continued Pay",Application;
        }
        field(23; "TA Class (Time Processing)"; Option)
        {
            Caption = 'TA Class (Time Processing)';
            OptionCaption = ' ,Target Time,Presence,Break,Value Car. Fwd.,Balance,Absent Time,Overtime,Supplement,Others,Internal';
            OptionMembers = " ","Target Time",Presence,"Break","Value Car. Fwd.",Balance,"Absent Time",Overtime,Supplement,Others,Internal;
        }
        field(24; "TA Class (Individual)"; Option)
        {
            Caption = 'TA Class (Individual)';
            OptionCaption = ' ,Time Account 1,Time Account 2,Time Account 3,Time Account 4,Time Account 5,Time Account 6,Time Account 7,Time Account 8,Time Account 9,Time Account 10';
            OptionMembers = " ","Time Account 1","Time Account 2","Time Account 3","Time Account 4","Time Account 5","Time Account 6","Time Account 7","Time Account 8","Time Account 9","Time Account 10";
        }
        field(25; "TA Class (Employee Info)"; Option)
        {
            Caption = 'TA Class (Employee Info)';
            OptionCaption = ' ,Target Time,Presence,Overtime,Absent Time,Value Car. Fwd.,Balance,Missing Day';
            OptionMembers = " ","Target Time",Presence,Overtime,"Absent Time","Value Car. Fwd.",Balance,"Missing Day";
        }
        field(26; "TA Class (Vacation Reduction)"; Option)
        {
            Caption = 'TA Class (Vacation Reduction)';
            OptionCaption = ' ,Reduction Agreed Vacation,Reduction Special Vacation 1,Reduction Special Vacation 2,Reduction Special Vacation 3,Reduction Vacation in Hours,Adaptation Vacation in Hours,Adaptation Vacation in Days';
            OptionMembers = " ","Reduction Agreed Vacation","Reduction Special Vacation 1","Reduction Special Vacation 2","Reduction Special Vacation 3","Reduction Vacation in Hours","Adaptation Vacation in Hours","Adaptation Vacation in Days";
        }
        field(30; "TA Formatting"; Option)
        {
            Caption = 'TA Formatting';
            OptionCaption = 'Hours,Minutes,Hours/Minutes,Days,Currency,Unit';
            OptionMembers = Hours,Minutes,"Hours/Minutes",Days,Currency,Unit;
        }
        field(31; "Generating Function"; Option)
        {
            Caption = 'Generating Function';
            OptionCaption = ' ,Time Planning,Calendar,TP Standard,TP CASE,TP Value Car. Fwd.,TP Manual,Period Evaluation,Period End,Individual Application,Terminal Services,Online-FDC-Integration,Integrated FDC';
            OptionMembers = " ","Time Planning",Calendar,"TP Standard","TP CASE","TP Value Car. Fwd.","TP Manual","Period Evaluation","Period End","Individual Application","Terminal Services","Integrated FDC";
        }
        field(32; "Record protected"; Boolean)
        {
            Caption = 'Record protected';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Current Date", "Department No.", "Order No.", "Task No.", "Dimension 1", "Dimension 2", "Dimension 3", "Dimension 4", "Time Account No.")
        {
            Clustered = true;
        }
        key(Key2; "Employee No.", "TA Class (Statistics)", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key3; "Employee No.", "TA Class (Absent Days)", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key4; "Employee No.", "TA Class (Individual)", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key5; "Employee No.", "TA Class (Vacation Reduction)", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key6; "Employee No.", "TA Class (Employee Info)", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key7; "Employee No.", "Time Account No.", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key8; "Order No.", "Task No.", "Dimension 1", "Dimension 2", "Dimension 3", "Dimension 4", "Employee No.", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key9; "Order No.", "Task No.", "Dimension 1", "Dimension 2", "Dimension 3", "Dimension 4", "Current Date", "Employee No.")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key10; "Task No.", "Order No.", "Dimension 1", "Dimension 2", "Dimension 3", "Dimension 4", "Employee No.", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key11; "Task No.", "Order No.", "Dimension 1", "Dimension 2", "Dimension 3", "Dimension 4", "Current Date", "Employee No.")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key12; "Employee No.", "Department No.", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key13; "Department No.", "Employee No.", "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key14; "Department No.", "Time Account No.")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key15; "Employee No.", "Department No.", "Time Account No.")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key16; "Current Date")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key17; "Employee No.", "Current Date", "Department No.", "Dimension 3", "Time Account No.")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key18; "Employee No.", "Current Date", "Department No.", "Time Account No.")
        {
            SumIndexFields = "Time Account Value";
        }
        key(Key19; "Order No.", "Current Date", "Time Account No.")
        {
            SumIndexFields = "Time Account Value";
        }
    }

    fieldgroups
    {
    }
}

