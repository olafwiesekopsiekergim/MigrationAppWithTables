table 5171702 "CMNM Batch Line"
{
    Caption = 'Batch Line';

    fields
    {
        field(1; "Batch No."; Code[20])
        {
            Caption = 'Batch No.';
            NotBlank = true;
            TableRelation = "CMNM Batch Header";
        }
        field(2; "Line No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Line No.';
        }
        field(5; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            TableRelation = "CMNM Entry";
        }
        field(6; "Entry Status"; Option)
        {
            CalcFormula = Lookup ("CMNM Entry".Status WHERE ("Entry No." = FIELD ("Entry No.")));
            Caption = 'Status';
            FieldClass = FlowField;
            OptionCaption = 'Offen,Zurückgehalten,In Bearbeitung,Verschickt,Fehler';
            OptionMembers = Open,OnHold,Processing,Finished,Error;
        }
        field(7; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(10; "Recipient Type"; Option)
        {
            Caption = 'Recipient Type';
            OptionCaption = 'Contact,Customer,Vendor,Employee,Resource';
            OptionMembers = contact,customer,vendor,employee,resource;
        }
        field(11; "Recipient No."; Code[20])
        {
            Caption = 'Recipient No.';
            TableRelation = IF ("Recipient Type" = CONST (contact)) Contact."No."
            ELSE
            IF ("Recipient Type" = CONST (customer)) Customer."No."
            ELSE
            IF ("Recipient Type" = CONST (vendor)) Vendor."No."
            ELSE
            IF ("Recipient Type" = CONST (resource)) Resource."No.";
        }
        field(12; "Recipient e-Mail Address"; Text[80])
        {
            Caption = 'Recipient e-Mail Address';
        }
        field(15; "Source RecordID"; RecordID)
        {
            Caption = 'Source Record ID';
        }
        field(100; Attachments; Integer)
        {
            CalcFormula = Count ("CMNM Batch Attachment" WHERE ("Batch No." = FIELD ("Batch No."),
                                                               "Batch Line No." = FIELD ("Line No.")));
            Caption = 'Attachments';
            FieldClass = FlowField;
        }
        field(200; "Cust Int 1"; Integer)
        {
            Caption = 'Benutzerdef. Int 1';
        }
        field(201; "Cust Int 2"; Integer)
        {
            Caption = 'Benutzerdef. Int 2';
        }
        field(202; "Cust Int 3"; Integer)
        {
            Caption = 'Benutzerdef. Int 3';
        }
        field(210; "Cust Text 1"; Text[250])
        {
            Caption = 'Benutzerdef. Text 1';
        }
        field(211; "Cust Text 2"; Text[250])
        {
            Caption = 'Benutzerdef. Text 2';
        }
        field(212; "Cust Text 3"; Text[250])
        {
            Caption = 'Benutzerdef. Text 3';
        }
        field(220; "Cust Bool 1"; Boolean)
        {
            Caption = 'Benutzerdef. Bool 1';
        }
        field(221; "Cust Bool 2"; Boolean)
        {
            Caption = 'Benutzerdef. Bool 2';
        }
        field(222; "Cust Bool 3"; Boolean)
        {
            Caption = 'Benutzerdef. Bool 3';
        }
        field(230; "Cust Date 1"; Date)
        {
            Caption = 'Benutzerdef. Date 1';
        }
        field(231; "Cust Date 2"; Date)
        {
            Caption = 'Benutzerdef. Date 2';
        }
        field(232; "Cust Date 3"; Date)
        {
            Caption = 'Benutzerdef. Date 3';
        }
    }

    keys
    {
        key(Key1; "Batch No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

