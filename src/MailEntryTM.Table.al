table 5056419 "Mail Entry/TM"
{
    Caption = 'Mail Entry';
    Description = 'GrMailEntry';

    fields
    {
        field(1; "Mail No."; Integer)
        {
            Caption = 'Mail No.';
            NotBlank = true;
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Workflow,TalentManagement';
            OptionMembers = " ",Workflow,TalentManagement;
        }
        field(10; "Sender Employee No."; Code[20])
        {
            Caption = 'Sender Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(11; "Sender Name"; Text[80])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Sender Employee No.")));
            Caption = 'Sender Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Sender Mail"; Text[80])
        {
            Caption = 'Sender Mail';
        }
        field(20; "Recipient Employee No."; Code[20])
        {
            Caption = 'Recipient Employee No.';
            TableRelation = "Employee/T"."No.";
        }
        field(21; "Recipient Name"; Text[80])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Recipient Employee No.")));
            Caption = 'Recipient Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Recipient Mail"; Text[80])
        {
            Caption = 'Recipient Mail';
        }
        field(30; Subject; Text[250])
        {
            Caption = 'Subject';
        }
        field(40; Reference; Text[80])
        {
            Caption = 'Reference';
        }
        field(50; Processed; Boolean)
        {
            Caption = 'Processed';
        }
        field(51; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'not sent,sent,error';
            OptionMembers = "not sent",sent,error;
        }
        field(52; "Last Error"; Text[250])
        {
            Caption = 'Last Error';
        }
        field(9980; "Delivery Date"; Date)
        {
            Caption = 'Delivery Date';
        }
        field(9981; "Delivery Time"; Time)
        {
            Caption = 'Delivery Time';
        }
        field(9982; "Delivery User No"; Code[50])
        {
            Caption = 'Delivery User No';
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
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
        key(Key1; "Mail No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

