table 2087639 "DS Order Line Link"
{
    Caption = 'DS Order Line Link';

    fields
    {
        field(1; "Appointment Id"; Integer)
        {
            Caption = 'Appointment Id';
        }
        field(2; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource."No.";
        }
        field(3; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(4; "Document Type"; Integer)
        {
            Caption = 'Document Type';
        }
        field(5; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(6; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(7; "Starting Datetime"; DateTime)
        {
        }
        field(8; "Ending Datetime"; DateTime)
        {
        }
        field(9; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
        }
        field(10; "Prod. Order Status"; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
    }

    keys
    {
        key(Key1; "Appointment Id", "Resource No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "Document Type", "Document No.", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

