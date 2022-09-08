table 11102051 "OM - C/AL History Import"
{
    Caption = 'C/AL History Import';
    DataPerCompany = false;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; "Import Date"; Date)
        {
            Caption = 'Import Date';
        }
        field(3; "Import Time"; Time)
        {
            Caption = 'Import Time';
        }
        field(4; "Imported By"; Code[20])
        {
            Caption = 'Imported By';
        }
        field(5; Path; Text[250])
        {
            Caption = 'Path';
        }
        field(6; "File Name"; Text[250])
        {
            Caption = 'File Name';
        }
        field(7; "No. of Objects"; Integer)
        {
            CalcFormula = Count ("OM - C/AL History Object" WHERE ("Import Entry No." = FIELD ("Entry No.")));
            Caption = 'No. of Objects';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

