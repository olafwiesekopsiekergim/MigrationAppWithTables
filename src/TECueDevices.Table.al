table 5050282 "TE-Cue Devices"
{
    // //C/CFO/111114 -- FELD 50000 Hinzugefügt für Rollencenter CRK

    Caption = 'TE-Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "TE-Accounts - open"; Integer)
        {
            CalcFormula = Count ("TE-Account" WHERE ("Document Type" = FILTER (Account),
                                                    "Account State" = FILTER (Entry),
                                                    "User Insert" = FIELD ("CurrentUserID Filter")));
            Caption = 'TE open Accounts';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(4; "Responsibility Center Filter"; Code[10])
        {
            Caption = 'Responsibility Center Filter';
            Editable = false;
            FieldClass = FlowFilter;
        }
        field(5; "CurrentUserID Filter"; Code[50])
        {
            FieldClass = FlowFilter;
        }
        field(6; "TE-Approval - open"; Integer)
        {
            CalcFormula = Count ("TE-Part Account" WHERE ("Account State" = FILTER (Entry),
                                                         "State of Proof" = FILTER (" ")));
            Caption = 'TE open Approval';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "TE-Accounts - finished"; Integer)
        {
            CalcFormula = Count ("TE-Account" WHERE ("Document Type" = FILTER (Account),
                                                    "Account State" = FILTER ("Finish Entry"),
                                                    "Examination  State" = FILTER ("Factual Correct")));
            Caption = 'TE finished Entry';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "TE-Factual Proof - open"; Integer)
        {
            CalcFormula = Count ("TE-Account" WHERE ("Document Type" = FILTER (Account),
                                                    "Account State" = FILTER ("Finish Entry"),
                                                    "Examination  State" = FILTER (" ")));
            Caption = 'TE Grant';
            FieldClass = FlowField;
        }
        field(9; "TE-Accounts - posted"; Integer)
        {
            CalcFormula = Count ("TE-Posted Account" WHERE ("Document-Type" = CONST (Account),
                                                           "Account State" = CONST (Posted),
                                                           "Examination State" = CONST ("factual correct")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

