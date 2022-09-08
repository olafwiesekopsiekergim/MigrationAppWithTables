table 5056292 "Time Account Group Line/T"
{
    Caption = 'Time Account Group Line';
    Description = 'GrTAGrLine';

    fields
    {
        field(1; "Time Account Group No."; Code[10])
        {
            Caption = 'Time Account Group No.';
            NotBlank = true;
            TableRelation = "Time Account Group/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; "Time Account No."; Code[10])
        {
            Caption = 'Time Account No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(11; "Time Account Descr."; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Time Account Descr. 2"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr. 2';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Time Account Group No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

