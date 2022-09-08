table 42012827 "MobileNAV Master Data"
{
    // 2015-11-06 MNAD4.5.0.9 SZT
    //   Added new field: "Offline Admin Enabled";
    // 
    // 2015-11-11 MNAD4.5.0.10 SZT
    //   Now if user tries to turn off offline admin checks whether the offline modification contains not processed entries.
    // 
    // 2016-01-05 MNAD4.5.0.17 SZT
    //   - Added settings for GPS tracking.
    //   - #3403: Offline Admin can be disabled if there are not any processable entries.
    // 
    // 2016-01-15 MNAD4.5.0.18 SZT
    //   - Set maximum value to checkout time.
    //   - Added new field: "Offline Admin Email Enabled".
    // 
    // 2016-03-02 MNAD4.5.0.24 SZT
    //   Introduced ConfigVersion field and GetConfigVersion() function to retrieve the real configuration version.
    // 
    // 2016-08-11 MNAD4.6.0.0 SZT
    //   Added new type "Icon" and added icon handling (export/import/delete).
    // 
    // 2016-09-21 MNAD4.6.0.1 SZT
    //   Refactored export/import standard icons.
    // 
    // 2016-10-06 MNAD4.6.0.3 SZT
    //   - New icon: SYN_CANCEL.
    //   - Moved "export finished" message to the right place (#4318).
    // 
    // 2016-11-26 MNAD4.6.0.4 SZT
    //   Updated GetWaitingForRefresh() function (added "Check Type" checking).
    // 
    // 2016-12-13 MNAD4.6.0.8 TSZ
    //   New license related fields: 100..102 "Lic. ..."
    // 
    // 2017-03-28 MNAD4.6.0.12 SZT
    //   - #4932: License checking fields moved from Master Data to License Setup.
    // 
    // 2017-08-11 MNAD4.7.0.3 SZT
    //   Refactored XML and file handling and variable scope.
    // 
    // 2017-09-07 MNAD4.7.0.5 SZT
    //   New app icon names: 'WF_BACK*' and 'WF_NEXT*'.
    // 
    // 2017-11-06 MNAD4.7.0.11 SZT
    //   Import/export custom app icons.
    // 
    // 2017-10-20 MNAD4.6.0.25 SZT
    //   Inline string constants replaced to global TextConsts.
    // 
    // 2017-11-24 MNAD4.6.0.26 SZT
    //   - Added new field: "Leave Session at Log Out".
    //   - Set MinValue and MaxValue of "Timeout Limit (Sec.)" field.
    //   - Refactoring: moved some functions from Service Functions to Object Functions.
    // 
    // 2018-01-25 MNAD4.8.0.3 SZT
    //   Implemented server side setup for Background Synchronization.
    // 
    // 2018-01-26 MNAD4.8.0.5 SZT
    //   Implemented "Chunk Size" for offline pages.
    // 
    // 2018-06-08 MNAD4.8.0.21 SZT
    //   When a profile is renamed renames the profile setup records too.
    // 
    // 2018-06-20 MNAD4.8.0.23 SZT
    //   - Added new field: Order.
    //   - Added new key: Type, Order.
    // 
    // 2018-07-05 MNAD4.8.0.24 SZT
    //   - Removed JS generation.
    //   - Minor refactoring caused by JS merge.
    // 
    // 2018-09-27 MNAD4.8.0.28 HZS
    //   - Add new field : Deleted Offline Data Pugre
    // 
    // 2018-10-08 MNAD4.8.0.30 SZT
    //   - Fixed a typo.
    //   - "Background Synch. Interval" is now integer.

    Caption = 'Master Data';
    Permissions = TableData "MobileNAV Category Transl." = rimd;

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
        field(3; Type; Option)
        {
            Editable = true;
            OptionMembers = Category,"Profile","Function",General,Color,Icon;
        }
        field(4; "Function Table No."; Integer)
        {
        }
        field(5; "Function Name"; Text[100])
        {
        }
        field(6; "Function Type"; Option)
        {
            OptionMembers = Normal,"Generated BLOB",BLOB;
        }
        field(9; "Auto. Device Activation"; Boolean)
        {
            Caption = 'Auto. Device Activation';
            InitValue = true;
        }
        field(10; "Timeout Limit (Sec.)"; Integer)
        {
            Caption = 'Timeout Limit (Sec.)';
            InitValue = 600;
            MaxValue = 600;
            MinValue = 1;
        }
        field(11; "Log Background Refresh"; Boolean)
        {
            Caption = 'Log Background Refresh';
        }
        field(12; "AddOn-Converted Option String"; Boolean)
        {
        }
        field(13; "Server Name"; Option)
        {
            Caption = 'Server Name';
            OptionCaption = 'FQDN,MachineName,Localhost,Custom';
            OptionMembers = FQDN,MachineName,Localhost,Custom;
        }
        field(14; "Web Service URL"; Text[100])
        {
        }
        field(15; "Testing Mode"; Boolean)
        {
            Caption = 'Testing Mode';
        }
        field(17; "Small Picture Ver."; Integer)
        {
        }
        field(19; "Large Picture Ver."; Integer)
        {
        }
        field(20; "Small Picture Ext."; Text[30])
        {
        }
        field(22; "Large Picture Ext."; Text[30])
        {
        }
        field(23; "Small Picture"; BLOB)
        {
            SubType = Bitmap;
        }
        field(25; "Large Picture"; BLOB)
        {
            SubType = Bitmap;
        }
        field(26; Color; Integer)
        {
            Caption = 'Color';
        }
        field(27; Red; Integer)
        {
            Caption = 'Red';
            MaxValue = 255;
            MinValue = 0;
        }
        field(28; Green; Integer)
        {
            Caption = 'Green';
            MaxValue = 255;
            MinValue = 0;
        }
        field(29; Blue; Integer)
        {
            Caption = 'Blue';
            MaxValue = 255;
            MinValue = 0;
        }
        field(30; "Area"; Option)
        {
            Caption = 'Area';
            OptionCaption = 'Normal,Dark,Border,Background,FirstLine,Title';
            OptionMembers = Normal,Dark,Border,Background,FirstLine,Title;
        }
        field(31; ColorPicture; BLOB)
        {
            Caption = 'Color';
            SubType = Bitmap;
        }
        field(32; "Offline Admin Enabled"; Boolean)
        {
            Caption = 'Offline Admin Enabled';
        }
        field(33; "Offline Admin Checkout Time"; Decimal)
        {
            Caption = 'Offline Admin Checkout Time Interval (minutes)';
            MaxValue = 35.000;
            MinValue = 0.01;
        }
        field(34; "Gps Minimum Distance Meter"; Integer)
        {
            Caption = 'GPS Tracking: Minimum Distance (in meters)';
            MinValue = 0;
        }
        field(35; "Gps Time Interval Sec"; Integer)
        {
            Caption = 'GPS Tracking: Time Interval (in seconds) (approximately)';
            MinValue = 10;
        }
        field(36; "Gps Upload Interval Sec"; Integer)
        {
            Caption = 'GPS Tracking: Upload Interval (in seconds)';
            MinValue = 10;
        }
        field(37; "Offline Admin Email Enabled"; Boolean)
        {
            Caption = 'Offline Admin Email Sending Enabled';
        }
        field(38; ConfigVersion; Text[30])
        {
        }
        field(39; "Last Known AddOn Version"; Text[30])
        {
        }
        field(40; "Leave Session at Log Out"; Boolean)
        {
            Caption = 'Leave Session at Log Out';
        }
        field(41; "Background Synch. Interval"; Integer)
        {
            Caption = 'Background Synchronization Interval (min.)';
            MinValue = 1;
        }
        field(42; "Chunk Size for Offline Data"; Integer)
        {
            Caption = 'Chunk Size for Offline Data';
        }
        field(43; "Order"; Integer)
        {
            Caption = 'Order';
        }
        field(44; "Deleted Offline Data Purge"; Integer)
        {
            Caption = 'Deleted Offline Data Purge Interval (Days)';
        }
    }

    keys
    {
        key(Key1; Type, "Code", "Function Table No.", "Function Name", "Area")
        {
            Clustered = true;
        }
        key(Key2; Type, "Order")
        {
        }
    }

    fieldgroups
    {
    }
}

