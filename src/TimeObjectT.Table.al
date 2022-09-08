table 5056300 "Time Object/T"
{
    Caption = 'Time Object';
    DataCaptionFields = "No.", Description;
    Description = 'GrTimeObj';

    fields
    {
        field(1; "No."; Code[10])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(4; "Main-Time Object"; Code[10])
        {
            Caption = 'Main-Time Object';
            TableRelation = "Time Object/T"."No.";
        }
        field(5; "Output Export Presence"; Boolean)
        {
            Caption = 'Output Export Presence';
        }
        field(10; "Day Cycle"; Integer)
        {
            Caption = 'Day Cycle';
            InitValue = 7;
        }
        field(11; "Target Time per Week"; Decimal)
        {
            Caption = 'Target Time per Week';
            Editable = false;
        }
        field(12; "Key Reference No."; Code[10])
        {
            Caption = 'Key Reference No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Key Reference"));
        }
        field(20; Remark; Boolean)
        {
            CalcFormula = Exist ("TempVision Remark Line/T" WHERE ("Table Name" = CONST ("Time Object/T"),
                                                                  "No." = FIELD ("No.")));
            Caption = 'Remark';
            Editable = false;
            FieldClass = FlowField;
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

