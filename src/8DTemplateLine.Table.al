table 5034655 "8D Template Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T101 30.03.15 DEMSR.KHS
    //   Create Object

    Caption = '8D Template Line';

    fields
    {
        field(1; "8D Template Code"; Code[20])
        {
            Caption = '8D Template Code';
        }
        field(10; Step; Option)
        {
            Caption = 'Step';
            OptionCaption = 'D1 - Establish Team,D2 - Describe Problem,D3 - Define Interim Containment Plan,D4 - Identify Root Causes and Escape Points,D5 - Choose and Verify Permanent Corrections,D6 - Implement Corrective Actions,D7 - Prevent Recurrence,D8 - Acknowledge the Team';
            OptionMembers = D1,D2,D3,D4,D5,D6,D7,D8;
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(30; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "8D Template Code", Step, "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

