table 5292753 "PRPL - Job Schedule Entry"
{
    Caption = 'Job Schedule Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Description = 'ne';
            Editable = false;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(51; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
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
        field(1300; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            TableRelation = "Resource Group";
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
        field(3010; "Schedule Channel"; Option)
        {
            Caption = 'Schedule Channel';
            Description = ' ,Forecast,Calendar';
            OptionCaption = ' ,Forecast,Calendar';
            OptionMembers = " ",Forecast,Calendar;
        }
        field(3011; "Schedule Type"; Option)
        {
            Caption = 'Schedule Type';
            Description = ' ,Simulated,Planned,Fixed';
            OptionCaption = ' ,Simulated,Planned,Fixed';
            OptionMembers = " ",Simulated,Planned,"Fixed";
        }
        field(3019; "Planning Resource No."; Code[20])
        {
            Caption = 'Planning Resource No.';
            Description = 'TR "Planning Resource"';
            TableRelation = "PR - Planning Resource";
        }
        field(3020; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            TableRelation = Resource;
        }
        field(3021; "Person Group No."; Code[20])
        {
            Caption = 'Person Group No.';
            TableRelation = "Resource Group";
        }
        field(3030; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(3090; "Schedule Status"; Option)
        {
            Caption = 'Schedule Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(3100; "Lead Time Calculation"; DateFormula)
        {
            Caption = 'Lead Time Calculation';
        }
        field(3310; "Schedule Quantity"; Decimal)
        {
            Caption = 'Schedule Quantity';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(3320; "Schedule Format"; Option)
        {
            Caption = 'Schedule Format';
            Description = ' ,min,h,d,w,mo';
            OptionCaption = ' ,min,h,d,w,mo';
            OptionMembers = " ","min",h,d,w,mo;
        }
        field(3330; "Scheduled Minutes"; Decimal)
        {
            Caption = 'Scheduled Minutes';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(3331; "Scheduled Hours"; Decimal)
        {
            Caption = 'Scheduled Hours';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
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
        field(4570; "Process Finish"; Date)
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Finish WHERE ("Process No." = FIELD ("Job Process No.")));
            Caption = 'Process Finish';
            Description = 'LU Job Line Process';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4800; "-- MSP"; Integer)
        {
            Caption = '-- MSP';
            Enabled = false;
        }
        field(4870; "MSP Assignment UID"; Code[10])
        {
            Caption = 'MSP Assignment UID';
            Description = 'ne';
            Editable = false;
        }
        field(4871; "MSP Assignment Type"; Code[10])
        {
            Caption = 'MSP Assignment Type';
            Description = 'ne';
            Editable = false;
        }
        field(5292332; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            Description = 'TR Customer';
            TableRelation = Customer;
        }
        field(5292333; "Contact Company No."; Code[20])
        {
            Caption = 'Contact Company No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(5292334; "Contact Company Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact Company No.")));
            Caption = 'Contact Company Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292335; "Contact Person No."; Code[20])
        {
            Caption = 'Contact Person No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(5292336; "Contact Person Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact Person No.")));
            Caption = 'Contact Person Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292337; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292338; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292339; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Description = 'ne';
            Editable = false;
        }
        field(5292340; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292341; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292342; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne';
            Editable = false;
        }
        field(5292343; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292344; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
        field(5292345; WBS; Code[50])
        {
            Caption = 'WBS';
            Description = 'ne';
            Editable = false;
        }
        field(5292346; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292753),
                                                               Int1 = FIELD ("Entry No.")));
            Caption = 'Job Comment';
            Description = 'CF Job Comment Line';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5292347; "Job Process No."; Code[20])
        {
            Caption = 'Job Process No.';
            Description = 'TR "Job Line Process"';
            TableRelation = "PRPL - Job Line Process";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Start, "Start Time", "Schedule Channel", "Schedule Type", "Person No.")
        {
        }
        key(Key3; Start, "Person Group No.", "Person No.", "Schedule Channel", "Schedule Type", "Job No.", "Job Line Unique No.")
        {
            SumIndexFields = "Scheduled Minutes", "Scheduled Hours";
        }
        key(Key4; Start, "Job No.", "Job Line Unique No.", "Person Group No.", "Person No.", "Schedule Channel")
        {
            SumIndexFields = "Scheduled Minutes", "Scheduled Hours";
        }
        key(Key5; "Job Process No.", Start, "Start Time", "Schedule Type", "Planning Resource No.")
        {
            SumIndexFields = "Scheduled Minutes", "Scheduled Hours";
        }
        key(Key6; Start, "Job Process No.", "Person Group No.", "Person No.", "Schedule Channel", "Schedule Type")
        {
            SumIndexFields = "Scheduled Minutes", "Scheduled Hours";
        }
        key(Key7; "Job No.", "Job Line Unique No.", "Schedule Channel", "Person Group No.", "Person No.")
        {
        }
        key(Key8; "Planning Resource No.", "Job Process No.", Start, "Start Time", "Schedule Channel", "Schedule Type")
        {
        }
        key(Key9; "Planning Resource No.", Start, "Start Time", "Schedule Channel", "Schedule Type", "Job Process No.")
        {
        }
        key(Key10; "MSP Assignment UID", "Planning Resource No.", Start)
        {
        }
    }

    fieldgroups
    {
    }
}

