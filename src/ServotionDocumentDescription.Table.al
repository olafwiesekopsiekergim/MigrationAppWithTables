table 42014839 "Servotion Document Description"
{
    Caption = 'Servotion Document Description';

    fields
    {
        field(1; ID; Code[50])
        {
            Caption = 'ID';
        }
        field(2; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'User ID,Workshift Entry No.';
            OptionMembers = "User ID","Workshift Entry No.";
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; Type, ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

