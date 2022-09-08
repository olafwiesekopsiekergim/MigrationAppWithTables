table 42012825 "MobileNAV License Setup"
{
    // 2016-11-10 MNAD4.6.0.4 SZT
    //   Added new fields: "Last Used Language", "Other User Mod. Msg. RegEx", "Other User Del. Msg. RegEx".
    //   Added new key: Type, "Last Used Language".
    // 
    // 2016-12-12 MNAD4.6.0.7 SZT
    //   Added new helper fields for Warehouse Item Tracking and Adhoc Movement.
    // 
    // 2017-01-23 MNAD4.6.0.9 SZT
    //   - Changed to DB level table.
    //   - New type: AddonLicense.
    // 
    // 2017-03-28 MNAD4.6.0.12 SZT
    //   - #4932: License checking fields moved from Master Data to License Setup.
    //   - #4946: License Setup is extended with Company. It is used for User and Device lines.
    //   - #4945: Caused by using the new Company field the configuration refreshing problem is
    //   resolved.
    // 
    // 2017-11-23 MNAD4.6.0.26 SZT
    //   Added new field: "Last Login Finished".
    // 
    // 2018-08-30 MNAD4.8.0.25 MAJORT
    //   Added new field: "Customer No."

    Caption = 'Device Management';
    DataPerCompany = false;

    fields
    {
        field(1; "Device ID"; Text[190])
        {
            Caption = 'Device ID';
            Editable = false;
        }
        field(2; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Editable = false;
        }
        field(3; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Standby,Active,Rejected,Support';
            OptionMembers = Standby,Active,Rejected,Support;
        }
        field(4; "Creation Date"; DateTime)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(5; "Last Login Date"; DateTime)
        {
            Caption = 'Last Login Date';
            Editable = false;
        }
        field(6; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(7; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Device,User,AddonLicense';
            OptionMembers = Device,User,AddonLicense;
        }
        field(8; Company; Text[30])
        {
            Caption = 'Company';
            Editable = false;
        }
        field(9; "Last Logout Date"; DateTime)
        {
            Caption = 'Last Logout Date';
        }
        field(11; "Current Language Code"; Code[10])
        {
            Caption = 'Current Language Code';
            TableRelation = Language;
        }
        field(12; "User Code"; BLOB)
        {
            Caption = 'User Code';
        }
        field(13; "Web Service URL"; Text[100])
        {
            Caption = 'Web Service URL';
        }
        field(14; "Configuration Changed"; Boolean)
        {
            Caption = 'Configuration Changed';
        }
        field(15; "Profile Contact No."; Code[20])
        {
        }
        field(16; "Profile Contact Company No."; Code[20])
        {
        }
        field(17; "Profile Question Line Start"; Integer)
        {
        }
        field(18; "Profile Question Line End"; Integer)
        {
        }
        field(19; "Profile Questionnaire Code"; Code[20])
        {
        }
        field(20; "AdhocMov From Bin Code"; Code[20])
        {
            Caption = 'From Bin Code';
        }
        field(21; "AdhocMov To Bin Code"; Code[20])
        {
            Caption = 'To Bin Code';
        }
        field(22; "AdhocMov Location Code"; Code[20])
        {
            Caption = 'Location Code';
        }
        field(23; "AdhocMov Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(24; "AdhocMov Description"; Text[50])
        {
            Caption = 'Description';
        }
        field(25; "AdhocMov Quantity"; Decimal)
        {
            Caption = 'Quantity';
        }
        field(26; "AdhocMov Unit of Measure Code"; Code[20])
        {
            Caption = 'Unit of Measure Code';
        }
        field(27; "AdhocMov Serial No."; Code[20])
        {
            Caption = 'Serial No.';
        }
        field(28; "AdhocMov Lot No."; Code[20])
        {
            Caption = 'Lot No.';
        }
        field(29; "Last Used Language"; Integer)
        {
            Caption = 'Last Used Language';
        }
        field(30; "Other User Mod. Msg. RegEx"; Text[250])
        {
            Caption = 'Other User Mod. Msg. RegEx';
        }
        field(31; "Other User Del. Msg. RegEx"; Text[250])
        {
            Caption = 'Other User Del. Msg. RegEx';
        }
        field(32; "WhItTr Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(33; "WhItTr Source SubType"; Option)
        {
            Caption = 'Source SubType';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(34; "WhItTr Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(35; "WhItTr Source Batch Name"; Code[20])
        {
            Caption = 'Source Batch Name';
        }
        field(36; "WhItTr Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(37; "WhItTr Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(38; "WhItTr Location Code"; Code[20])
        {
            Caption = 'Location Code';
        }
        field(39; "WhItTr Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(40; "WhItTr Item No."; Code[20])
        {
            Caption = 'Item No.';
        }
        field(41; "WhItTr Variant Code"; Code[20])
        {
            Caption = 'Variant Code';
        }
        field(42; "WhItTr Qty. (Base)"; Decimal)
        {
            Caption = 'Qty. (Base)';
        }
        field(43; "WhItTr Qty. to Handle (Base)"; Decimal)
        {
            Caption = 'Qty. to Handle (Base)';
        }
        field(44; "WhItTr Reclass"; Boolean)
        {
            Caption = 'Reclass';
        }
        field(45; "WhItTr SN Required"; Boolean)
        {
            Caption = 'SN Required';
        }
        field(46; "WhItTr LN Required"; Boolean)
        {
            Caption = 'LN Required';
        }
        field(47; "WhItTr Handle"; Boolean)
        {
            Caption = 'Handle';
        }
        field(48; "WhItTr Description"; Text[50])
        {
            Caption = 'Description';
        }
        field(49; "WhItTr Qty. per Unit of Measur"; Decimal)
        {
            Caption = 'Qty. per Unit of Measur';
        }
        field(50; "AdhocMov Variant Code"; Code[20])
        {
            Caption = 'Variant Code';
        }
        field(51; "Lic. Last Successful Check"; DateTime)
        {
            Caption = 'License Last Successful Check';
        }
        field(52; "Lic. Succ. Req. License Count"; Integer)
        {
            Caption = 'License Last Successful Requested License Count';
        }
        field(53; "Lic. First Failed Check"; DateTime)
        {
            Caption = 'License First Failed Check';
        }
        field(54; "Last Login Finished"; DateTime)
        {
            Caption = 'Last Login Finished';
        }
        field(55; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
        }
    }

    keys
    {
        key(Key1; Company, Type, "Device ID")
        {
            Clustered = true;
        }
        key(Key2; Status)
        {
        }
        key(Key3; "Creation Date")
        {
        }
        key(Key4; "Last Login Date")
        {
        }
        key(Key5; Type, "Last Used Language")
        {
        }
    }

    fieldgroups
    {
    }
}

