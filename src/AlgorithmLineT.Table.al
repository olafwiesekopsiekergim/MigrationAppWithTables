table 5056295 "Algorithm Line/T"
{
    Caption = 'Algorithm Line';
    Description = 'GrAlgoLine';

    fields
    {
        field(1; "Algorithm No."; Code[20])
        {
            Caption = 'Algorithm No.';
            NotBlank = true;
            TableRelation = "Algorithm/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; Link; Option)
        {
            Caption = 'Link';
            OptionCaption = ' ,plus,minus,divide,multiply';
            OptionMembers = " ",plus,minus,divide,multiply;
        }
        field(11; "Time Account No."; Code[10])
        {
            Caption = 'Time Account No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(12; "Time Account Descr."; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Time Account Descr. 2"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("Time Account No.")));
            Caption = 'Time Account Descr. 2';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Algorithm No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

