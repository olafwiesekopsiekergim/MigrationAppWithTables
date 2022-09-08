table 42012832 "MobileNAV Login Log"
{
    // 2017-01-20 MNAD4.6.0.9 SZT
    //   - Refactored log process.
    //   - Extended with "Process ID" and "Entry No."


    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Entry DateTime"; DateTime)
        {
            Caption = 'Entry DateTime';
        }
        field(3; "Log Message"; Text[175])
        {
            Caption = 'Log Message';
        }
        field(4; "Elapsed Time (sec.)"; Decimal)
        {
            Caption = 'Elapsed Time (sec.)';
        }
        field(5; "Log Message 2"; Text[75])
        {
            Caption = 'Log Message 2';
        }
        field(6; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(7; "Process ID"; Guid)
        {
            Caption = 'Process ID';
        }
        field(8; NAS; Boolean)
        {
            Caption = 'NAS';
        }
    }

    keys
    {
        key(Key1; "User ID", "Entry DateTime", "Process ID", "Entry No.", "Log Message")
        {
            Clustered = true;
        }
        key(Key2; "User ID", "Elapsed Time (sec.)")
        {
        }
    }

    fieldgroups
    {
    }
}

