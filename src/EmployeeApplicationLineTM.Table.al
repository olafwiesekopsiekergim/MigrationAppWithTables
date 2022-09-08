table 5056405 "EmployeeApplicationLine/TM"
{
    Caption = 'Employee Application Line';
    Description = 'GrEmplApplLine';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Application Line No."; Integer)
        {
            Caption = 'Application Line No.';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Applicant; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Applicant';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5000; ProcessingType; Option)
        {
            Caption = 'ProcessingType';
            OptionCaption = ' ,Workflow-Attendant,Action';
            OptionMembers = " ","Workflow-Attendant","Action";
        }
        field(5010; ProcessingDate; Date)
        {
            Caption = 'ProcessingDate';
        }
        field(5020; ProcessingTime; Time)
        {
            Caption = 'ProcessingTime';
        }
        field(5030; StatusEngagement; Text[20])
        {
            Caption = 'StatusEngagement';
            Editable = false;
        }
        field(5040; StatusRejection; Text[20])
        {
            Caption = 'StatusRejection';
            Editable = false;
        }
        field(5050; StatusReminder; Text[20])
        {
            Caption = 'StatusReminder';
            Editable = false;
        }
        field(5100; EmployeeGroupNoSender; Code[20])
        {
            Caption = 'EmployeeGroupNoSender';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(5101; EmployeeGroupDescrSender; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (EmployeeGroupNoSender)));
            Caption = 'EmployeeGroupDescrSender';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5110; SenderEmplNo; Code[20])
        {
            Caption = 'SenderEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5111; SenderEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (SenderEmplNo)));
            Caption = 'SenderEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5200; EmployeeGroupNoRecipient; Code[20])
        {
            Caption = 'EmployeeGroupNoRecipient';
            TableRelation = "EmployeeGroup/TM".EmployeeGroupNo;
        }
        field(5201; EmployeeGroupDescrRecipient; Text[50])
        {
            CalcFormula = Lookup ("EmployeeGroup/TM".Description WHERE (EmployeeGroupNo = FIELD (EmployeeGroupNoRecipient)));
            Caption = 'EmployeeGroupDescrRecipient';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5210; RecipientEmplNo; Code[20])
        {
            Caption = 'RecipientEmplNo';
            TableRelation = "Employee/T"."No.";
        }
        field(5211; RecipientEmplName; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD (RecipientEmplNo)));
            Caption = 'RecipientEmplName';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6000; ActionNo; Code[20])
        {
            Caption = 'ActionNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(6001; ActionLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'ActionLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (ActionNo));
        }
        field(6003; ActionDescr; Text[250])
        {
            Caption = 'ActionDescr';
        }
        field(6010; FeedbackExpectedToDate; Date)
        {
            Caption = 'FeedbackExpectedToDate';
        }
        field(6100; TechnicalCommunicationNo; Code[20])
        {
            Caption = 'TechnicalCommunicationNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("General Info"));
        }
        field(6101; TechnicalCommunicationLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'TechnicalCommunicationLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (TechnicalCommunicationNo));
        }
        field(6103; TechnicalCommunicationDescr; Text[250])
        {
            Caption = 'TechnicalCommunicationDescr';
        }
        field(6500; AssessmentLevelNo; Code[20])
        {
            Caption = 'AssessmentLevelNo';
            TableRelation = "Property/TM"."No." WHERE (PropertyType = CONST ("Assessment Level"));
        }
        field(6510; AssessmentLevelLineNo; Integer)
        {
            BlankZero = true;
            Caption = 'AssessmentLevelLineNo';
            TableRelation = "Property/TM"."Line No." WHERE ("No." = FIELD (AssessmentLevelNo));
        }
        field(6520; AssessmentLevelDescr; Text[250])
        {
            CalcFormula = Lookup ("Property/TM".PropertyDescription WHERE ("No." = FIELD (AssessmentLevelNo),
                                                                          "Line No." = FIELD (AssessmentLevelLineNo)));
            Caption = 'AssessmentLevelDescr';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6600; AssessmentScale1; Boolean)
        {
            Caption = 'AssessmentScale1';
        }
        field(6610; AssessmentScale2; Boolean)
        {
            Caption = 'AssessmentScale2';
        }
        field(6620; AssessmentScale3; Boolean)
        {
            Caption = 'AssessmentScale3';
        }
        field(6630; AssessmentScale4; Boolean)
        {
            Caption = 'AssessmentScale4';
        }
        field(6640; AssessmentScale5; Boolean)
        {
            Caption = 'AssessmentScale5';
        }
        field(6650; AssessmentScale6; Boolean)
        {
            Caption = 'AssessmentScale6';
        }
        field(6660; AssessmentScale7; Boolean)
        {
            Caption = 'AssessmentScale7';
        }
        field(6670; AssessmentScale8; Boolean)
        {
            Caption = 'AssessmentScale8';
        }
        field(6680; AssessmentScale9; Boolean)
        {
            Caption = 'AssessmentScale9';
        }
        field(6690; AssessmentScale10; Boolean)
        {
            Caption = 'AssessmentScale10';
        }
        field(8000; Comment; Text[250])
        {
            Caption = 'Comment';
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
        key(Key1; "Employee No.", "Application Line No.", ProcessingType, "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

