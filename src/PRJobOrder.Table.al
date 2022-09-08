table 5292365 "PR - Job Order"
{
    Caption = 'Job Order';
    DataCaptionFields = "No.";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(200; "Sell-to Customer No."; Code[20])
        {
            Caption = 'Sell-to Customer No.';
            TableRelation = Customer;
        }
        field(201; "Sell-to Customer Name"; Text[50])
        {
            CalcFormula = Lookup (Customer.Name WHERE ("No." = FIELD ("Sell-to Customer No.")));
            Caption = 'Sell-to Customer Name';
            Description = 'LU Customer';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5090; "Procurement Status"; Option)
        {
            Caption = 'Procurement Status';
            Description = ' ,Planning,Release,Finished';
            OptionCaption = ' ,Planning,Release,Finished';
            OptionMembers = " ",Planning,Release,Finished;
        }
        field(5292332; "Modified on Date"; Date)
        {
            Caption = 'Modified on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292333; "Modified at Time"; Time)
        {
            Caption = 'Modified at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292334; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
            Description = 'ne TR User';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5292335; "Created on Date"; Date)
        {
            Caption = 'Created on Date';
            Description = 'ne';
            Editable = false;
        }
        field(5292336; "Created at Time"; Time)
        {
            Caption = 'Created at Time';
            Description = 'ne';
            Editable = false;
        }
        field(5292337; "Created by"; Code[50])
        {
            Caption = 'Created by';
            Description = 'ne TR User';
            Editable = false;
            TableRelation = User."User Name";
        }
        field(5292338; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
        }
        field(5292339; "Responsibility Center"; Code[10])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(5292340; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Job';
            TableRelation = Job;
        }
        field(5292341; "Job Comment"; Boolean)
        {
            CalcFormula = Exist ("PR - Job Comment Line" WHERE ("Table ID" = CONST (5292365),
                                                               Code1 = FIELD ("No.")));
            Caption = 'Job Comment';
            Description = 'CF CommentLine';
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
        key(Key2; "Job No.")
        {
        }
    }

    fieldgroups
    {
    }
}

