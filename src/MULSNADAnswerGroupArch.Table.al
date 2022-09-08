table 42014864 "MUL SNAD Answer Group Arch."
{
    // 2022-02-18 SNAD2.0.0.18 HZS
    //   - Created

    Caption = 'Archived Servotion Answer Group';

    fields
    {
        field(1; "Answer Group No."; Code[20])
        {
            Caption = 'Answer Group No.';
            DataClassification = CustomerContent;
        }
        field(2; "Question Group Code"; Code[20])
        {
            Caption = 'Question Group Code';
            DataClassification = CustomerContent;
        }
        field(3; "Auto-Close on Document Finish"; Boolean)
        {
            Caption = 'Auto-Close on Document Finish';
            DataClassification = CustomerContent;
        }
        field(4; "Creation DateTime"; DateTime)
        {
            Caption = 'Creation DateTime';
            DataClassification = CustomerContent;
        }
        field(5; Answers; Integer)
        {
            CalcFormula = Count ("MUL SNAD Answer Arch." WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                               "Data Type" = FILTER (<> Caption)));
            Caption = 'Answers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Answers (Filled)"; Integer)
        {
            CalcFormula = Count ("MUL SNAD Answer Arch." WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                               Answer = FILTER (<> ''),
                                                               "Data Type" = FILTER (<> Caption)));
            Caption = 'Answers (Filled)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Target Platform"; Option)
        {
            Caption = 'Target Platform';
            DataClassification = CustomerContent;
            OptionCaption = 'All,MobileNAV,Customer Portal';
            OptionMembers = All,MobileNAV,CustomerPortal;
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
            DataClassification = CustomerContent;
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            DataClassification = CustomerContent;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
            DataClassification = CustomerContent;
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
            DataClassification = CustomerContent;
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
            DataClassification = CustomerContent;
        }
        field(15; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
            DataClassification = CustomerContent;
        }
        field(50000; "Resource No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50001; ZertifikatS; Text[250])
        {
            CalcFormula = Lookup ("Servotion Answer".Answer WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                                  "Question No." = FILTER ('Q0578')));
            FieldClass = FlowField;
        }
        field(50002; Abluft; Text[250])
        {
            CalcFormula = Lookup ("Servotion Answer".Answer WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                                  "Question No." = FILTER ('Q0576')));
            FieldClass = FlowField;
        }
        field(50003; ZertifikatF; Text[250])
        {
            CalcFormula = Lookup ("Servotion Answer".Answer WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                                  "Question No." = FILTER ('Q0521')));
            FieldClass = FlowField;
        }
        field(50004; ZertifikatL; Text[250])
        {
            CalcFormula = Lookup ("Servotion Answer".Answer WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                                  "Question No." = FILTER ('Q0543')));
            FieldClass = FlowField;
        }
        field(50005; ServiceItem; Code[20])
        {
            CalcFormula = Lookup ("Service Item Line"."Service Item No." WHERE ("Document No." = FIELD ("Source ID"),
                                                                               "Line No." = FIELD ("Source Ref. No.")));
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Answer Group No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

