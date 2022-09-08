table 5292756 "PRPL - Assigned Resource"
{
    Caption = 'Assigned Resource';

    fields
    {
        field(1; "Process No."; Code[20])
        {
            Caption = 'Process No.';
            Description = 'ne';
            Editable = false;
            NotBlank = true;
        }
        field(2; "Planning Resource No."; Code[20])
        {
            Caption = 'Planning Resource No.';
            Description = 'TR "Planning Resource"';
            NotBlank = true;
            TableRelation = "PR - Planning Resource";
        }
        field(50; Name; Text[50])
        {
            CalcFormula = Lookup ("PR - Planning Resource".Name WHERE ("No." = FIELD ("Planning Resource No.")));
            Caption = 'Name';
            Description = 'LU Planning Resource';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; Description; Text[50])
        {
            CalcFormula = Lookup ("PRPL - Job Line Process".Description WHERE ("Process No." = FIELD ("Process No.")));
            Caption = 'Description';
            Description = 'LU Job Line Process';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Planned Capacity %"; Decimal)
        {
            Caption = 'Planned Capacity %';
            DecimalPlaces = 0 : 5;
            Description = '0:5, init = 100';
            InitValue = 100;
            MinValue = 0;
        }
        field(210; "Copy Substructures"; Boolean)
        {
            Caption = 'Copy Substructures';
        }
        field(3020; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            Description = 'ne';
            Editable = false;
            TableRelation = Resource;
        }
        field(3021; "Person Group No."; Code[20])
        {
            Caption = 'Person Group No.';
            Description = 'ne';
            Editable = false;
            TableRelation = "Resource Group";
        }
        field(3030; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = 'ne';
            Editable = false;
            TableRelation = Contact;
        }
        field(4000; "-- Planning"; Integer)
        {
            Caption = '-- Planning';
            Enabled = false;
        }
        field(4330; "Planned Work Minutes"; Decimal)
        {
            Caption = 'Planned Work Minutes';
            DecimalPlaces = 0 : 5;
        }
        field(4331; "Planned Work Hours"; Decimal)
        {
            Caption = 'Planned Work Hours';
            DecimalPlaces = 0 : 5;
        }
        field(4360; "Assigned Units"; Decimal)
        {
            Caption = 'Assigned Units';
            DecimalPlaces = 0 : 5;
            Description = 'ne 0:5';
            Editable = false;
            MinValue = 0;
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
        field(4870; "MSP Assignment UID"; Code[10])
        {
            Caption = 'MSP Assignment UID';
            Description = 'ne';
            Editable = false;
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'ne TR Job';
            Editable = false;
            TableRelation = Job;
        }
        field(5292333; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
            Description = 'ne TR "Job Line Budget"';
            Editable = false;
            TableRelation = "PR - Job Line Budget"."Unique No." WHERE ("Job No." = FIELD ("Job No."),
                                                                       "Unique No." = FIELD ("Job Line Unique No."));
        }
    }

    keys
    {
        key(Key1; "Process No.", "Planning Resource No.")
        {
            Clustered = true;
            SumIndexFields = "Planned Work Minutes", "Planned Work Hours";
        }
        key(Key2; "Process No.", "Person Group No.", "Person No.")
        {
        }
        key(Key3; "Job No.", "Job Line Unique No.")
        {
            SumIndexFields = "Planned Work Hours";
        }
        key(Key4; "Process No.", "Assigned Units")
        {
            SumIndexFields = "Assigned Units";
        }
        key(Key5; "Job No.", "Planning Resource No.")
        {
        }
    }

    fieldgroups
    {
    }
}

