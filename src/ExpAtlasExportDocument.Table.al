table 5138361 "Exp Atlas Export Document"
{
    Caption = 'Atlas Export Document';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Reference No."; Code[20])
        {
            Caption = 'Reference No.';
        }
        field(11; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,ABD,Ausfuhrnachweis,Fachliche Fehler,Statusreport,Logbuch,Techn. Fehler,Zusatzdokumente,Wiedervorlage,Kontrollmaßnahme';
            OptionMembers = " ",ABD,AM,"Fachliche Fehler",Statusreport,Logbuch,"Techn. Fehler",Zusatzdokumente,Wiedervorlage,Kontrollmassnahme;
        }
        field(12; "Document Link"; Text[250])
        {
            Caption = 'Document Link';
        }
        field(50; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            Editable = false;
        }
        field(51; "Last printed"; Date)
        {
            Caption = 'Last printed';
        }
        field(52; "Last printed at"; Time)
        {
            Caption = 'Last printed at';
        }
        field(53; "Last printed by"; Code[20])
        {
            Caption = 'Last printed by';
        }
        field(100; "Last modified"; Date)
        {
            Caption = 'Last modified';
        }
        field(101; "Last modified at"; Time)
        {
            Caption = 'Last modified at';
        }
        field(102; "Last modified by"; Code[20])
        {
            Caption = 'Last modified by';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Reference No.", "Document Type")
        {
        }
    }

    fieldgroups
    {
    }
}

