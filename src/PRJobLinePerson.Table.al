table 5292343 "PR - Job Line Person"
{
    Caption = 'Job Line Person';

    fields
    {
        field(1; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR';
            NotBlank = true;
            TableRelation = Job;
        }
        field(2; "Job Line Unique No."; Integer)
        {
            Caption = 'Job Line Unique No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; WBS; Code[50])
        {
            CalcFormula = Lookup ("PR - Job Line Budget".WBS WHERE ("Job No." = FIELD ("Job No.")));
            Caption = 'WBS';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; Description; Text[50])
        {
            CalcFormula = Lookup ("PR - Job Line Budget".Description WHERE ("Job No." = FIELD ("Job No.")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; Comment; Text[50])
        {
            Caption = 'Comment';
        }
        field(20; "Person No."; Code[20])
        {
            Caption = 'Person No.';
            Description = 'TR Resource';
            TableRelation = Resource;
        }
        field(21; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(22; "Contact No."; Code[20])
        {
            Caption = 'Contact No.';
            Description = 'TR Contact';
            TableRelation = Contact;
        }
        field(23; "Contact Name"; Text[50])
        {
            CalcFormula = Lookup (Contact.Name WHERE ("No." = FIELD ("Contact No.")));
            Caption = 'Contact Name';
            Description = 'LU Contact';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Contact Short Code"; Code[20])
        {
            Caption = 'Contact Short Code';
        }
        field(25; Responsible; Boolean)
        {
            Caption = 'Responsible';
        }
        field(30; "Planning Resource No."; Code[20])
        {
            Caption = 'Planning Resource No.';
            Description = 'TR "Planning Resource"';
            TableRelation = "PR - Planning Resource";
        }
        field(40; "Copy to Sub-Structure"; Boolean)
        {
            Caption = 'Copy to Sub-Structure';
        }
        field(3021; "Person Group No."; Code[20])
        {
            Caption = 'Person Group No.';
            Description = 'ne';
            Editable = false;
            TableRelation = "Resource Group";
        }
        field(4030; "Max. Units %"; Decimal)
        {
            Caption = 'Max. Units %';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
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
        field(4841; "MSP Base Calendar UID"; Code[10])
        {
            Caption = 'MSP Base Calendar UID';
            Description = 'ne';
            Editable = false;
        }
        field(4860; "MSP Resource UID"; Code[10])
        {
            Caption = 'MSP Resource UID';
            Description = 'ne';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Job No.", "Job Line Unique No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Job No.", "Job Line Unique No.", Responsible, "Planning Resource No.")
        {
        }
        key(Key3; "Person No.", Responsible)
        {
        }
        key(Key4; "Job No.", "Job Line Unique No.", "Person No.")
        {
        }
        key(Key5; "Job No.", "Job Line Unique No.", "Planning Resource No.")
        {
        }
        key(Key6; "Job No.", "MSP Resource UID")
        {
        }
    }

    fieldgroups
    {
    }
}

