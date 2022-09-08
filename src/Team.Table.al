table 5083 Team
{
    Caption = 'Team';
    DataCaptionFields = "Code", Name;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Next To-do Date"; Date)
        {
            CalcFormula = Min ("To-do".Date WHERE ("Team Code" = FIELD (Code),
                                                  Closed = CONST (false)));
            Caption = 'Next To-do Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(5; "Contact Filter"; Code[20])
        {
            Caption = 'Contact Filter';
            FieldClass = FlowFilter;
            TableRelation = Contact;
        }
        field(6; "Contact Company Filter"; Code[20])
        {
            Caption = 'Contact Company Filter';
            FieldClass = FlowFilter;
            TableRelation = Contact WHERE (Type = CONST (Company));
        }
        field(7; "To-do Status Filter"; Option)
        {
            Caption = 'To-do Status Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Not Started,In Progress,Completed,Waiting,Postponed';
            OptionMembers = "Not Started","In Progress",Completed,Waiting,Postponed;
        }
        field(8; "To-do Closed Filter"; Boolean)
        {
            Caption = 'To-do Closed Filter';
            FieldClass = FlowFilter;
        }
        field(9; "Priority Filter"; Option)
        {
            Caption = 'Priority Filter';
            FieldClass = FlowFilter;
            OptionCaption = 'Low,Normal,High';
            OptionMembers = Low,Normal,High;
        }
        field(11; "Salesperson Filter"; Code[10])
        {
            Caption = 'Salesperson Filter';
            FieldClass = FlowFilter;
            TableRelation = "Salesperson/Purchaser";
        }
        field(12; "Campaign Filter"; Code[20])
        {
            Caption = 'Campaign Filter';
            FieldClass = FlowFilter;
            TableRelation = Campaign;
        }
        field(13; "To-do Entry Exists"; Boolean)
        {
            CalcFormula = Exist ("To-do" WHERE ("Team Code" = FIELD (Code),
                                               "Contact No." = FIELD ("Contact Filter"),
                                               "Contact Company No." = FIELD ("Contact Company Filter"),
                                               "Salesperson Code" = FIELD ("Salesperson Filter"),
                                               "Campaign No." = FIELD ("Campaign Filter"),
                                               Status = FIELD ("To-do Status Filter"),
                                               Closed = FIELD ("To-do Closed Filter"),
                                               Priority = FIELD ("Priority Filter"),
                                               Date = FIELD ("Date Filter")));
            Caption = 'To-do Entry Exists';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

