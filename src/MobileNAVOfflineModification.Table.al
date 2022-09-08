table 42012842 "MobileNAV Offline Modification"
{
    // 2015-10-22 MNAD4.5.0.6 SZT
    //   OnModify functionality moved to CheckOut() method + implemented CheckIn().
    // 
    // 2015-11-05 MNAD4.5.0.7 SZT
    //   - Added field: "Original BLOB Value".
    //   - Copy the beginning of the "* Blob Value" to the "* Value" field.
    //   - Set the native value if the data type is decimal, date, datetime or time.
    //   - Now checks the chack out state if someone tries to delete a record.
    // 
    // 2015-11-11 MNAD4.5.0.10 SZT
    //   - Added function: Revert().
    //   - Now checks whether the offline admin is enabled.
    //   - If status changed the clild elements' status follow it.
    // 
    // 2015-12-01 MNAD4.5.0.12 SZT
    //   - Refactored fill initial data (OnInsert + OnModify).
    //   - Added new field: CreatedDateTimeIso8601.
    //   - Extended error handling (special errors: "other user modified" and "does not exist").
    //   - Now Invoke() returns the error message instead of showing it.
    // 
    // 2016-01-15 MNAD4.5.0.18 SZT
    //   #3435: Fixed getting truncated values.
    //   #3429: Fixed locking mechanism.
    //   #3405: Implemented email notification.
    // 
    // 2016-02-01 MNAD4.5.0.20 SZT
    //   #3590: Fixed a bug at synchronizing new lines for new sales header in Invoke() method.
    //   #3595: Fixed a bug at processing temporary offline keys.
    // 
    // 2016-02-05 MNAD4.5.0.21 SZT
    //   #3609: At refreshing related WS keys during synchronization skips the OnModify trigger.
    //   #3623: Fixed a typo in TEXT_MAIL_BODY_TEMPLATE text constant.
    // 
    // 2016-03-08 MNAD4.5.0.24 SZT
    //   #3730, #3731: Fixed a bug at bulding recipients list (replaced ";" to ".").
    // 
    // 2017-03-09 MNAD4.6.0.11 SZT
    //   Field Name has to be specified in a line record at blob deletion.
    // 
    // 2017-07-25 MNAD4.6.0.20 SZT
    //   Implemented some missing client fixes and features at creation (eg.: skip empty relations).
    // 
    // 2017-07-26 MNAD4.6.0.21 SZT
    //   Throws an error if the parent does not exist when the relation filters are collecting.
    // 
    // 2017-08-11 MNAD4.7.0.3 SZT
    //   Refactored XML and file handling and variable scope.
    // 
    // 2017-08-31 MNAD4.7.0.4 SZT
    //   The status of the "Deleted" error type is now "SynchErrorServer" instead of "SynchWarningServer".
    // 
    // 2017-09-14 MNAD4.6.0.23 SZT
    //   Implemented synchronization customization.
    // 
    // 2017-09-15 MNAD4.6.0.24 SZT
    //   - Fixed a CheckOut issue in Invoke() function.
    //   - Added a new limitation: a MobileNAV user cannot synchronize their own offline modifications
    //   using Offline Cockpit.
    // 
    // 2017-10-04 MNAD4.7.0.9 SZT
    //   - Before build the SOAP command now the record is initialized because previously the "WS Key" field
    //   caused some web service error (after the XML and SOAP refactoring in version 4.7.0.3).
    //   - Soap refactoring.
    // 
    // 2017-11-06 MNAD4.7.0.11 SZT
    //   #6336: fixed typo.
    // 
    // 2017-10-20 MNAD4.7.0.13 SZT
    //   Replaced inline string constants to global TextConsts.
    // 
    // 2017-11-23 MNAD4.6.0.26 SZT
    //   - Minor refactoring caused by InvokeSoap() change.
    //   - Logout moved to the caller side.
    // 
    // 2018-02-02 MNAD4.8.0.6 SZT
    //   - Optimized WS Key handling for speed.
    //   - Extended WS Key handling with "Table No.": refresh WS Key on log entries with same "Table No.".
    // 
    // 2018-02-12 MNAD4.8.0.11 SZT
    //   Fixed saving "Page No.".
    // 
    // 2019-02-12 MNAD4.8.0.42 SZT
    //   Refactoring caused by Soap helper changes.

    Caption = 'Offline Modification Log';
    DataCaptionFields = "User ID", "Created DateTime";

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Description = '2013 -> 50';
        }
        field(2; "Device ID"; Text[180])
        {
        }
        field(3; "Created DateTime"; Text[30])
        {
        }
        field(4; "Entry ID"; Integer)
        {
        }
        field(5; "Line No."; Integer)
        {
        }
        field(6; "Uploaded DateTime"; DateTime)
        {
        }
        field(7; "Last Modified DateTime"; DateTime)
        {
        }
        field(8; "Last Modified User ID"; Code[50])
        {
            Description = '2013 -> 50';
        }
        field(9; "Service Name"; Text[100])
        {
        }
        field(10; "WS Key"; Text[250])
        {
        }
        field(11; "Offline ID"; Integer)
        {
        }
        field(12; "Parent Service Name"; Text[100])
        {
        }
        field(13; "Parent WS Key"; Text[250])
        {
        }
        field(14; "Parent Offline ID"; Integer)
        {
        }
        field(15; "Parent Field Name"; Text[75])
        {
        }
        field(16; "Parent Relation No."; Integer)
        {
        }
        field(17; "Query ID"; Integer)
        {
        }
        field(18; "Field Name"; Text[75])
        {
        }
        field(19; "Original Value"; Text[250])
        {
        }
        field(20; "New Value"; Text[250])
        {
        }
        field(21; "Original Visible Value"; Text[250])
        {
        }
        field(22; "New Visible Value"; Text[250])
        {
        }
        field(23; "New BLOB Value"; BLOB)
        {
        }
        field(25; "New Decimal Value"; Decimal)
        {
        }
        field(26; "New DateTime Value"; DateTime)
        {
        }
        field(30; "Client First Line"; Text[250])
        {
        }
        field(31; "Client Second Line"; Text[250])
        {
        }
        field(32; "Error Message"; Text[250])
        {
        }
        field(33; "Error Type"; Option)
        {
            OptionMembers = " ",NoError,NotSpecified,OtherUserHasModified,Deleted;
        }
        field(34; "Original BLOB Value"; BLOB)
        {
        }
        field(35; "Table No."; Integer)
        {
        }
        field(36; "Parent Table No."; Integer)
        {
        }
        field(37; "Page No."; Integer)
        {
        }
        field(38; "Parent Page No."; Integer)
        {
        }
        field(100; FieldType; Option)
        {
            Caption = 'Field Type';
            OptionMembers = Text,"Code","Integer",Decimal,Date,Boolean,Blob,Option,Time,DateTime;
        }
        field(101; DataLength; Integer)
        {
        }
        field(102; Operation; Option)
        {
            OptionCaption = 'New,Modify,Delete,Function Call,Upload Blob,Delete Blob';
            OptionMembers = Creation,Update,Deletion,FunctionCall,BlobUpload,BlobDeletion;
        }
        field(103; Status; Option)
        {
            OptionCaption = 'Not Synchronized,Synchronized,Dismissed,Error,Warning';
            OptionMembers = NotSynchronizedServer,SynchronizedServer,SynchDismissedServer,SynchErrorServer,SynchWarningServer;
        }
        field(104; "TempOfflineKey New Value"; Text[250])
        {
        }
        field(105; "Created DateTime2"; DateTime)
        {
            Caption = 'Created DateTime';
        }
        field(106; TempOfflineKey; Text[75])
        {
        }
        field(107; "TempOfflineKey Value"; Text[250])
        {
        }
        field(108; "Handled by Custom Development"; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "User ID", "Device ID", "Created DateTime", "Entry ID", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Created DateTime", "Line No.")
        {
        }
        key(Key3; "User ID", "Device ID", Status, "Entry ID", "Line No.", "Page No.", "Offline ID")
        {
        }
        key(Key4; "User ID", "Device ID", Status, "Entry ID", "Line No.", "Parent Page No.", "Parent Offline ID")
        {
        }
        key(Key5; "User ID", "Device ID", Status, "Entry ID", "Line No.", "Table No.", "Page No.")
        {
        }
        key(Key6; "User ID", "Device ID", Status, "Entry ID", "Line No.", "Parent Table No.", "Parent Page No.")
        {
        }
    }

    fieldgroups
    {
    }
}

