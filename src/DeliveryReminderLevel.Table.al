table 5005277 "Delivery Reminder Level"
{
    Caption = 'Delivery Reminder Level';

    fields
    {
        field(1; "Reminder Terms Code"; Code[10])
        {
            Caption = 'Reminder Terms Code';
            NotBlank = true;
            TableRelation = "Delivery Reminder Term";
        }
        field(2; "No."; Integer)
        {
            Caption = 'No.';
            MinValue = 1;
            NotBlank = true;
        }
        field(3; "Due Date Calculation"; DateFormula)
        {
            Caption = 'Due Date Calculation';
        }
    }

    keys
    {
        key(Key1; "Reminder Terms Code", "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

