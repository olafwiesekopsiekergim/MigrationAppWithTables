table 42014844 "Servotion Answer Group"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-12-14 SNAD1.0.0.69 HZS
    //   - Filter out caption typed answers for answers and filled answers
    // 2019-05-08 SNAD1.0.0.74 HZS
    //   - New field Archived added
    // 
    // 2019-10-16 MNDU5.0 MAJORT
    //   - Resource No. added
    // 
    // 2022-03-21 MNDU7.0 MAJORT
    //   - Resource No. 2 filled
    // 
    // 2022-08-24 MNDU8.0
    //   - Resource No. and Resource No. 2 is cleared when there is no allocation

    Caption = 'Servotion Answer Group';

    fields
    {
        field(1; "Answer Group No."; Code[20])
        {
            Caption = 'Answer Group No.';
        }
        field(2; "Question Group Code"; Code[20])
        {
            Caption = 'Question Group Code';
        }
        field(3; "Auto-Close on Document Finish"; Boolean)
        {
            Caption = 'Auto-Close on Document Finish';
        }
        field(4; "Creation DateTime"; DateTime)
        {
            Caption = 'Creation DateTime';
        }
        field(5; Answers; Integer)
        {
            CalcFormula = Count ("Servotion Answer" WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                          "Data Type" = FILTER (<> Caption)));
            Caption = 'Answers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Answers (Filled)"; Integer)
        {
            CalcFormula = Count ("Servotion Answer" WHERE ("Answer Group No." = FIELD ("Answer Group No."),
                                                          Answer = FILTER (<> ''),
                                                          "Data Type" = FILTER (<> Caption)));
            Caption = 'Answers (Filled)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Target Platform"; Option)
        {
            Caption = 'Target Platform';
            OptionCaption = 'All,MobileNAV,Customer Portal';
            OptionMembers = All,MobileNAV,CustomerPortal;
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(15; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(20; Archived; Boolean)
        {
            Caption = 'Archived';
        }
        field(50000; "Resource No."; Code[20])
        {
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

