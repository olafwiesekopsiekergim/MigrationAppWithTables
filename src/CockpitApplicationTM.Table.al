table 5056437 "CockpitApplication/TM"
{
    Caption = 'Cockpit Application';
    Description = 'GrCockAppl';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5000; ProcessingType; Option)
        {
            Caption = 'ProcessingType';
            OptionCaption = ' ,Reminder,Feedback Expected To Date,ToDo''s';
            OptionMembers = " ",Reminder,"Feedback Expected To Date","ToDo's";
        }
        field(5020; ApplicationEmployeeNo; Code[20])
        {
            Caption = 'ApplicationEmployeeNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5021; ApplicationLineNo; Integer)
        {
            Caption = 'ApplicationLineNo';
        }
        field(5022; ApplicationEmployeeName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (ApplicationEmployeeNo)));
            Caption = 'ApplicationEmployeeName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5050; ApplicationProcessNo; Code[20])
        {
            Caption = 'ApplicationProcessNo';
        }
        field(5060; ApplicationProcessDescription; Text[250])
        {
            Caption = 'ApplicationProcessDescription';
        }
        field(5070; ApplicationDateCheck; Date)
        {
            Caption = 'ApplicationDateCheck';
        }
        field(5100; DimensionCode; Code[20])
        {
            Caption = 'DimensionCode';
            TableRelation = "DimensionCode/TM"."No.";
        }
        field(5101; DimensionValue; Code[20])
        {
            Caption = 'DimensionValue';
            TableRelation = "DimensionValue/TM".DimensionValue WHERE (DimensionCode = FIELD (DimensionCode),
                                                                      DimensionValue = FIELD (DimensionValue));
        }
        field(5103; DimensionValueDescription; Text[250])
        {
            CalcFormula = Lookup ("DimensionValue/TM".DimensionDescription WHERE (DimensionCode = FIELD (DimensionCode),
                                                                                 DimensionValue = FIELD (DimensionValue)));
            Caption = 'DimensionValueDescription';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5130; Comment; Text[250])
        {
            Caption = 'Comment';
        }
        field(6000; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,On Job Advertisement,Speculative Application';
            OptionMembers = " ","On Job Advertisement","Speculative Application";
        }
        field(6020; EntryDate; Date)
        {
            Caption = 'EntryDate';
        }
        field(6150; JobAdvertNo; Code[20])
        {
            Caption = 'JobAdvertNo';
            TableRelation = "JobAdvertisement/TM"."No.";
        }
        field(6151; JobAdvertLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'JobAdvertLineNo';
            TableRelation = "JobAdvertisement/TM"."Line No." WHERE ("No." = FIELD (JobAdvertNo));
        }
        field(6153; JobAdvertDescr; Text[250])
        {
            CalcFormula = Lookup ("JobAdvertisement/TM".Description WHERE ("No." = FIELD (JobAdvertNo),
                                                                          "Line No." = FIELD (JobAdvertLineNo)));
            Caption = 'JobAdvertDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6160; SpeculativeJobDescrNo; Code[20])
        {
            Caption = 'SpeculativeJobDescrNo';
            TableRelation = "JobDescription/TM"."No.";
        }
        field(6161; SpeculativeJobDescrLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'SpeculativeJobDescrLineNo';
            TableRelation = "JobDescription/TM"."Line No." WHERE ("No." = FIELD (SpeculativeJobDescrNo));
        }
        field(6163; SpeculativeJobDescrDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (SpeculativeJobDescrNo),
                                                                          "Line No." = FIELD (SpeculativeJobDescrLineNo)));
            Caption = 'SpeculativeJobDescrDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6250; AptitudeDegreeAssLevelNo; Code[20])
        {
            Caption = 'AptitudeDegreeAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6251; AptitudeDegreeAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AptitudeDegreeAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AptitudeDegreeAssLevelNo));
        }
        field(6253; AptitudeDegreeAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AptitudeDegreeAssLevelNo),
                                                                          "Line No." = FIELD (AptitudeDegreeAssLevelLineNo)));
            Caption = 'AptitudeDegreeAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6300; OurInterestEngAssLevelNo; Code[20])
        {
            Caption = 'OurInterestEngAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6301; OurInterestEngAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'OurInterestEngAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (OurInterestEngAssLevelNo));
        }
        field(6303; OurInterestEngAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (OurInterestEngAssLevelNo),
                                                                          "Line No." = FIELD (OurInterestEngAssLevelLineNo)));
            Caption = 'OurInterestEngAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9000; CurrentProcessingStatus; Option)
        {
            Caption = 'CurrentProcessingStatus';
            OptionCaption = ' ,Received,In Processing,In Processing/Tendency Engagement,In Processing/Tendency Rejection,Reminder,Engagement,Rejection';
            OptionMembers = " ",Received,"In Processing","In Processing/Tendency Engagement","In Processing/Tendency Rejection",Reminder,Engagement,Rejection;
        }
        field(9010; CurrentProcessingStatusPerDate; Date)
        {
            Caption = 'CurrentProcessingStatusPerDate';
        }
        field(9020; WhereIsTheProcessEmplGrpNo; Code[20])
        {
            Caption = 'EmployeeGroupNo';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(9021; WhereIsTheProcessEmplGrpDescr; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (WhereIsTheProcessEmplGrpNo)));
            Caption = 'EmployeeGroupDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9030; WhereIsTheProcessFromWhen; Date)
        {
            Caption = 'WhereIsTheProcessFromWhen';
        }
        field(9050; CurrentTendencyAssLevelNo; Code[20])
        {
            Caption = 'CurrentTendencyAssLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(9051; CurrentTendencyAssLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'CurrentTendencyAssLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (CurrentTendencyAssLevelNo));
        }
        field(9053; CurrentTendencyAssLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (CurrentTendencyAssLevelNo),
                                                                          "Line No." = FIELD (CurrentTendencyAssLevelLineNo)));
            Caption = 'CurrentTendencyAssLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9100; DateReminder; Date)
        {
            Caption = 'DateReminder';
            Editable = false;
        }
        field(9110; FeedbackExpectedToDate; Date)
        {
            Caption = 'FeedbackExpectedToDate';
        }
        field(9500; ShowToday; Text[20])
        {
            Caption = 'ShowToday';
            Editable = false;
        }
        field(9510; ShowPastInterval3; Text[20])
        {
            Caption = 'ShowPastInterval3';
            Editable = false;
        }
        field(9520; ShowPastInterval2; Text[20])
        {
            Caption = 'ShowPastInterval2';
            Editable = false;
        }
        field(9530; ShowPastInterval1; Text[20])
        {
            Caption = 'ShowPastInterval1';
            Editable = false;
        }
        field(9540; ShowFutureInterval1; Text[20])
        {
            Caption = 'ShowFutureInterval1';
            Editable = false;
        }
        field(9550; ShowFutureInterval2; Text[20])
        {
            Caption = 'ShowFutureInterval2';
            Editable = false;
        }
        field(9560; ShowFutureInterval3; Text[20])
        {
            Caption = 'ShowFutureInterval3';
            Editable = false;
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
        key(Key1; "Employee No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Employee No.", ProcessingType, "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

