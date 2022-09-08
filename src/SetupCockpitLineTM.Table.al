table 5056411 "SetupCockpitLine/TM"
{
    Caption = 'Setup Cockpit Line';
    Description = 'GrSetupCockLine';

    fields
    {
        field(1; "Setup No."; Code[20])
        {
            Caption = 'Setup No.';
            NotBlank = true;
            TableRelation = "TempVisionSetup/TM"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(9000; CockpitControlNo; Code[20])
        {
            Caption = 'CockpitControlNo';
            TableRelation = "CockpitControl/TM"."No.";
        }
        field(9002; CockpitControlDescr; Text[250])
        {
            CalcFormula = Lookup ("CockpitControl/TM".Description WHERE ("No." = FIELD (CockpitControlNo)));
            Caption = 'CockpitControlDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9990; RecordDateModify; Date)
        {
            Caption = 'RecordDateModify';
            Editable = false;
        }
        field(9991; RecordTimeModify; Time)
        {
            Caption = 'RecordTimeModify';
            Editable = false;
        }
        field(9992; RecordUserNoModify; Code[50])
        {
            Caption = 'RecordUserNoModify';
            Editable = false;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Setup No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

