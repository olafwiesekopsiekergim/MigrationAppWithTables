table 42012829 "MobileNAV User Setup"
{
    // 2017-03-28 MNAD4.6.0.12 SZT
    //   - #4946: Licese Setup is extended with Company.
    //   - Minor refactoring in GetBase64ResultFromFile().
    // 
    // 2017-11-24 MNAD4.6.0.26 SZT
    //   Changed the condition of last and first login dates.
    // 
    // 2018-01-25 MNAD4.8.0.3 SZT
    //   Implemented server side setup for Background Synchronization.
    // 
    // 2018-01-26 MNAD4.8.0.4 SZT
    //   Implemented server side setup for Login Mode.
    // 
    // 2018-02-01 MNAD4.8.0.6 SZT
    //   Implemented settings for connection status monitoring.
    // 
    // 2018-08-30 MNAD4.8.0.25 MAJORT
    //   New fields: "Job Journal Template" and "Job Journal Batch".
    // 
    // 2019-01-11 MNAD4.8.0.37 SZT
    //   Fixed first and last login datetime flowfields.
    // 
    // 2019-02-12 MNAD4.8.0.42 SZT
    //   Implemented "Web Services Access Key";

    Caption = 'User Setup';
    DataCaptionFields = "User ID";

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
        }
        field(2; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser";
        }
        field(3; "Salesperson Name"; Text[50])
        {
            CalcFormula = Lookup ("Salesperson/Purchaser".Name WHERE (Code = FIELD ("Salesperson Code")));
            Caption = 'Salesperson Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Service Resource Filter"; Code[20])
        {
            Caption = 'Service Resource Filter';
            TableRelation = Resource;
        }
        field(6; "GPS Tracking Enabled"; Boolean)
        {
            Caption = 'GPS Tracking Enabled';
        }
        field(9; Units; Option)
        {
            OptionCaption = 'Kilometers,Miles';
            OptionMembers = Kilometers,Miles;
        }
        field(10; "First Login Date"; DateTime)
        {
            CalcFormula = Lookup ("MobileNAV License Setup"."Creation Date" WHERE (Type = CONST (User),
                                                                                  "Device ID" = FIELD ("User ID"),
                                                                                  Company = FIELD ("Company Filter")));
            Caption = 'First Login Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Last Login Date"; DateTime)
        {
            CalcFormula = Lookup ("MobileNAV License Setup"."Last Login Date" WHERE (Type = CONST (User),
                                                                                    "Device ID" = FIELD ("User ID"),
                                                                                    Company = FIELD ("Company Filter")));
            Caption = 'Last Login Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Log Login Process"; Boolean)
        {
        }
        field(14; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }
        field(15; Profiles; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("MobileNAV Profile Setup" WHERE ("Profile Type" = CONST (User),
                                                                 ID = FIELD ("User ID")));
            Caption = 'Profiles';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; NoSeries; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("MobileNAV NoSeries Setup" WHERE ("User ID" = FIELD ("User ID")));
            Caption = 'No. Series';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Default Language Code"; Code[10])
        {
            Caption = 'Default Language Code';
            TableRelation = Language;
        }
        field(18; "Movement Worksheet Name"; Code[20])
        {
            TableRelation = "Whse. Worksheet Name".Name WHERE ("Template Type" = CONST (Movement));
        }
        field(19; "Movement Journal Name"; Code[20])
        {
            TableRelation = "Item Journal Batch".Name WHERE ("Template Type" = CONST (Transfer));
        }
        field(20; "Background Synchronization"; Option)
        {
            Caption = 'Background Synchronization';
            OptionCaption = 'By Client,On,Off';
            OptionMembers = "By Client",On,Off;
        }
        field(21; "Login Mode"; Option)
        {
            Caption = 'Login Mode';
            OptionCaption = 'By Client,Online,Offline,Online/Offline,Auto Online/Offline,Strict Auto Online/Offline';
            OptionMembers = "By Client",Online,Offline,"Online/Offline","Auto Online/Offline","Strict Auto Online/Offline";
        }
        field(22; "Connection Status Monitoring"; Option)
        {
            Caption = 'Connection Status Monitoring Interval';
            OptionCaption = 'By Client,5 sec,10 sec,30 sec,60 sec';
            OptionMembers = "By Client","5 sec","10 sec","30 sec","60 sec";
        }
        field(23; "Job Journal Template"; Code[20])
        {
            TableRelation = "Job Journal Template".Name WHERE (Recurring = CONST (false));
        }
        field(24; "Job Journal Batch"; Code[20])
        {
            TableRelation = "Job Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Job Journal Template"));
        }
        field(25; "Web Services Access Key"; Text[50])
        {
            Caption = 'Web Services Access Key';
        }
        field(26; "Company Filter"; Text[30])
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

