table 42012831 "MobileNAV Offline Admin."
{
    // SZT - 2014-11-07:
    //   Added new parameter ErrorMsg to method RetrieveCredentials() + minor refactoring.
    // 
    // 2016-10-28 MNAD4.6.0.4 SZT
    //   - Moved here the functionality from "MobileNAV Offline Buffer Adm.".
    //   - Added key: "Page No.", "Entry No.", "Check Type", "Earliest Check for Changes"
    //   - Added key: Deleted.
    //   - Added key: "Last DateTime Modified".
    //   - Added Flowfield: "Service Name" (lookup to MobileNAV Settings Buffer).
    //   - Added key: "Entry No.", "Check Type", "Earliest Check for Changes"
    // 
    // 2017-03-28 MNAD4.6.0.12 SZT
    //   #4946: License Setup is extended with Company.
    // 
    // 2017-05-26 MNAD4.6.0.17 SZT
    //   #5625: replaced UTFEncode() to URLEncode().
    // 
    // 2017-09-15 MNAD4.6.0.24 SZT
    //   New key: "Page No.", "Entry No.", "Check for Changes Period".
    // 
    // 2017-10-24 MNAD4.6.0.25 SZT
    //   Refactoring caused by new components DLL.
    // 
    // 2017-12-13 MNAD4.7.0.16 SZT
    //   Refactored generating "Last DateTime Modified Ticks".
    // 
    // 2018-09-27 MNAD4.8.0.28 HZS
    //   - Add new field: Last Purged DateTime
    // 
    // 2019-02-12 MNAD4.8.0.42 SZT
    //   RetrieveCredentials moved to license helper.


    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
        }
        field(2; "Page No."; Integer)
        {
        }
        field(3; "Entry No."; Integer)
        {
        }
        field(4; Deleted; Boolean)
        {
            Caption = 'Deleted';
        }
        field(5; "Old FlowField Hash"; Text[250])
        {
            Caption = 'Old FlowField Hash';
        }
        field(6; "Last DateTime Modified"; DateTime)
        {
            Caption = 'Last DateTime Modified';
        }
        field(8; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(9; "Check for Synchronization"; Text[75])
        {
            CalcFormula = Lookup ("MobileNAV Service Setup"."Check for Synchronization" WHERE ("Object ID" = FIELD ("Page No."),
                                                                                              "Line Type" = CONST (Main)));
            Caption = 'Check for Synchronization';
            FieldClass = FlowField;
        }
        field(10; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
        }
        field(11; "WS Key"; Text[250])
        {
        }
        field(12; FlowFieldValues; Text[250])
        {
        }
        field(13; "WS Record ID"; Text[250])
        {
        }
        field(14; "WS Record ID 2"; Text[250])
        {
        }
        field(15; "Record GUID"; Guid)
        {
            Editable = false;
        }
        field(16; "Last DateTime Modified Ticks"; Decimal)
        {
        }
        field(17; "Check for Changes Period"; Decimal)
        {
            Caption = 'Check for Changes Period (Hours)';
            DecimalPlaces = 1 : 1;
        }
        field(18; "Check Type"; Option)
        {
            Caption = 'Type of Check for Changes';
            OptionCaption = 'By NAS,By Client';
            OptionMembers = "By NAS","By Client";
        }
        field(20; "Earliest Check for Changes"; DateTime)
        {
        }
        field(21; "Last Attempt DateTime"; DateTime)
        {
        }
        field(22; "Service Name"; Text[100])
        {
            CalcFormula = Lookup ("MobileNAV Settings Buffer"."Service Name" WHERE ("User ID" = FIELD ("User ID"),
                                                                                   "Object ID" = FIELD ("Page No."),
                                                                                   "Line Type" = CONST (Main)));
            Caption = 'Service Name';
            FieldClass = FlowField;
        }
        field(23; "Last Purged DateTime"; DateTime)
        {
            Caption = 'Last Purged DateTime';
        }
    }

    keys
    {
        key(Key1; "User ID", "Page No.", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Record GUID")
        {
            SumIndexFields = "Last DateTime Modified Ticks";
        }
        key(Key3; "Page No.", "Entry No.", "Check Type", "Earliest Check for Changes")
        {
        }
        key(Key4; Deleted)
        {
        }
        key(Key5; "Last DateTime Modified")
        {
        }
        key(Key6; "Entry No.", "Check Type", "Earliest Check for Changes")
        {
        }
        key(Key7; Deleted, "Record GUID")
        {
        }
        key(Key8; "Page No.", "Entry No.", "Check for Changes Period")
        {
        }
    }

    fieldgroups
    {
    }
}

