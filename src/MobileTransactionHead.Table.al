table 50055 "Mobile Transaction Head"
{
    // L-MOBILE LM2.00
    //   object defined
    // 
    // L-MOBILE LM2.00.05
    //   trigger
    //     OnDelete
    //   modified

    Caption = 'Mobile Transaction Head';

    fields
    {
        field(10; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(20; Status; Integer)
        {
            Caption = 'Status';
        }
        field(30; Priority; Integer)
        {
            Caption = 'Priority';
        }
        field(40; "Vendor Shipment No."; Code[20])
        {
            Caption = 'Vendor Shipment No.';
        }
        field(50; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
        }
        field(60; "Posting Date"; DateTime)
        {
            Caption = 'Posting Date';
        }
        field(70; "Posting User Id"; Code[20])
        {
            Caption = 'Posting User Id';
        }
        field(80; "Executed Date"; DateTime)
        {
            Caption = 'Executed Date';
        }
        field(90; "Retrying Date"; DateTime)
        {
            Caption = 'Retrying Date';
        }
        field(100; "Retry Counter"; Integer)
        {
            Caption = 'Retry Counter';
        }
        field(110; "Error Entry No."; Integer)
        {
            Caption = 'Error Entry No.';
        }
        field(120; "Message Type"; Option)
        {
            Caption = 'Message Type';
            OptionCaption = 'Info,Warning,Error';
            OptionMembers = Info,Warning,Error;
        }
        field(130; "Message Text"; Text[250])
        {
            Caption = 'Message Text';
        }
        field(1000; "Create Date"; DateTime)
        {
            Caption = 'Create Date';
        }
        field(1010; "Create User Id"; Code[20])
        {
            Caption = 'Create User Id';
        }
        field(1020; "Modify Date"; DateTime)
        {
            Caption = 'Modify Date';
        }
        field(1030; "Modify User Id"; Code[20])
        {
            Caption = 'Modify User Id';
        }
        field(1040; "Source Type"; Text[64])
        {
            Caption = 'Source Type';
        }
        field(1050; "Source Document No."; Code[20])
        {
            Caption = 'Source Document No.';
        }
        field(1060; "Document Date"; DateTime)
        {
            Caption = 'Document Date';
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

