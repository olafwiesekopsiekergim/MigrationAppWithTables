table 42014837 "Servotion Question Group"
{
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - Created for general quetionaire handling.
    // 
    // 2017-12-14 SNAD1.0.0.69 HZS
    //   - Delete question group translations onDelete

    Caption = 'Servotion Question Group';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Target Platform"; Option)
        {
            Caption = 'Target Platform';
            OptionCaption = 'All,MobileNAV,Customer Portal';
            OptionMembers = All,MobileNAV,CustomerPortal;
        }
        field(4; "Auto-Close on Document Finish"; Boolean)
        {
            Caption = 'Auto-Close on Document Finish';
        }
        field(5; "No. of Questions"; Integer)
        {
            CalcFormula = Count ("Servotion Question" WHERE ("Question Group Code" = FIELD (Code)));
            Caption = 'No. of Questions';
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

