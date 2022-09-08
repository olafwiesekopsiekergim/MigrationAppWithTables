table 1512 "Notification Setup"
{
    Caption = 'Notification Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = "User Setup";
        }
        field(2; "Notification Type"; Option)
        {
            Caption = 'Notification Type';
            OptionCaption = 'New Record,Approval,Overdue';
            OptionMembers = "New Record",Approval,Overdue;
        }
        field(3; "Notification Template Code"; Code[20])
        {
            Caption = 'Notification Template Code';
            TableRelation = "Notification Template" WHERE (Type = FIELD ("Notification Type"));
        }
        field(4; "Non-Aggregated Notifications"; Boolean)
        {
            Caption = 'Non-Aggregated Notifications';
        }
        field(5; Schedule; Option)
        {
            CalcFormula = Lookup ("Notification Schedule".Recurrence WHERE ("User ID" = FIELD ("User ID"),
                                                                           "Notification Type" = FIELD ("Notification Type")));
            Caption = 'Schedule';
            FieldClass = FlowField;
            OptionCaption = 'Instantly,Daily,Weekly,Monthly';
            OptionMembers = Instantly,Daily,Weekly,Monthly;
        }
    }

    keys
    {
        key(Key1; "User ID", "Notification Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

