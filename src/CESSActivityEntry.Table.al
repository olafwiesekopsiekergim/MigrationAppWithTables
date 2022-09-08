table 5138404 "CESS - Activity Entry"
{
    Caption = 'SanScreen Activity Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(10; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = 'Table,Form,Report,Dataport,Codeunit';
            OptionMembers = "Table",Form,"Report",Dataport,"Codeunit";
        }
        field(11; "Source ID"; Integer)
        {
            Caption = 'Source ID';
        }
        field(12; "Process Description"; Text[250])
        {
            Caption = 'Process Description';
        }
        field(13; "Process Result Description"; Text[250])
        {
            Caption = 'Process Result Description';
        }
        field(14; "Records processed"; Integer)
        {
            Caption = 'Records processed';
        }
        field(100; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
        }
        field(101; "Creation Time"; Time)
        {
            Caption = 'Creation Time';
        }
        field(102; "Created by"; Code[50])
        {
            Caption = 'Created by';
        }
        field(103; "Date Last Modified"; Date)
        {
            Caption = 'Date Last Modified';
        }
        field(104; "Time Last Modified"; Time)
        {
            Caption = 'Time Last Modified';
        }
        field(105; ProcessDuration; Duration)
        {
            Caption = 'Duration';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source ID")
        {
        }
    }

    fieldgroups
    {
    }
}

