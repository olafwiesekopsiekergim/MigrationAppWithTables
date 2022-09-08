table 5171701 "CMNM Batch Header"
{
    Caption = 'Batch Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Nr.';
        }
        field(2; "Template No."; Code[20])
        {
            Caption = 'Template';
            TableRelation = "CMNM E-Mail Template"."No." WHERE ("Email Processing Enabled" = FILTER (true),
                                                                "Processing Object ID" = FILTER (> 0));
        }
        field(10; "Custom Subject"; Text[100])
        {
            Caption = 'Subject';
            Description = 'angepasstes Subject des Kunden';
        }
        field(15; "Override sender address"; Boolean)
        {
            Caption = 'Override sender address';
        }
        field(20; "Custom sender address"; Text[50])
        {
            Caption = 'Custom sender address';
        }
        field(30; "Custom sender name"; Text[50])
        {
            Caption = 'Custom sender name';
        }
        field(50; "Filter Info"; Text[100])
        {
            Caption = 'Filter Info';
        }
        field(80; "Combine Attachments"; Boolean)
        {
            Caption = 'Combine attachments';
        }
        field(100; "Processing User"; Code[50])
        {
            Caption = 'Benutzer';
        }
        field(101; "Processing Date/Time"; DateTime)
        {
            Caption = 'Zeitstempel';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

