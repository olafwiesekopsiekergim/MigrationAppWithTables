table 11102066 "OM - Transport Project History"
{
    Caption = 'Transport Project History';
    DataPerCompany = false;

    fields
    {
        field(1; "Transport No."; Code[20])
        {
            Caption = 'Transport No.';
            TableRelation = "OM - Transport";
        }
        field(2; "Project No."; Code[20])
        {
            Caption = 'Project No.';
            TableRelation = "OM - Project";
        }
        field(3; "First Transport Date"; Date)
        {
            Caption = 'First Transport Date';
        }
        field(4; "First Transport Time"; Time)
        {
            Caption = 'First Transport Time';
        }
        field(5; "Transport Description"; Text[100])
        {
            CalcFormula = Lookup ("OM - Transport".Description WHERE ("No." = FIELD ("Transport No.")));
            Caption = 'Transport Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Project Description"; Text[100])
        {
            CalcFormula = Lookup ("OM - Project".Description WHERE ("No." = FIELD ("Project No.")));
            Caption = 'Project Description';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Transport No.", "Project No.")
        {
            Clustered = true;
        }
        key(Key2; "Project No.")
        {
        }
    }

    fieldgroups
    {
    }
}

