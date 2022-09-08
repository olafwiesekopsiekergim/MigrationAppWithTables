table 42014823 "Servotion General Setup"
{
    // 1.0.0.4 - Limit fields got minimum value: 0
    // 
    // 2017-05-15 SNAD1.0.0.58 SZT
    //   Added new field: "Allow to Stop Work" (for woktime management setup)
    // 
    // 2017-11-29 SNAD1.0.0.68 HZS
    //   - New fields added: "Question Nos."
    //                       "Answer Nos."


    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(21; "Minimum Slot Duration (Hours)"; Decimal)
        {
            Caption = 'Minimum Slot Duration (Hours)';
            Description = 'SNST1.0.0.0';
        }
        field(22; "Travel Time Margin (%)"; Decimal)
        {
            Caption = 'Travel Time Margin (%)';
            MaxValue = 100;
            MinValue = 0;
        }
        field(23; "Time Rounding (Hours)"; Decimal)
        {
            Caption = 'Time Rounding (Hours)';
            InitValue = 0.25;
            MaxValue = 1;
            MinValue = 0.1;
        }
        field(24; "Minimum Travel Time (Hours)"; Decimal)
        {
            Caption = 'Minimum Travel Time (Hours)';
        }
        field(25; "Default Service Dur. (Hours)"; Decimal)
        {
            Caption = 'Default Service Duration (Hours)';
            MinValue = 0;
            NotBlank = true;
        }
        field(26; "Last Known AddOn Version"; Text[30])
        {
            Caption = 'Last Known AddOn Version';
        }
        field(27; "Distance Unit of Measure"; Option)
        {
            Caption = 'Distance Unit of Measure';
            OptionCaption = 'kilometer,mile';
            OptionMembers = kilometer,mile;
        }
        field(28; "Distance km Multiplier"; Decimal)
        {
            Caption = 'Distance km Multiplier';
        }
        field(29; "Service Zone Check"; Boolean)
        {
            Caption = 'Service Zone Check';
        }
        field(30; "Time Rounding Enabled"; Boolean)
        {
            Caption = 'Time Rounding';
        }
        field(45; "Email Content"; Option)
        {
            Caption = 'Email Content';
            OptionCaption = 'error,error+new+modified,error+new+modified+unmodified';
            OptionMembers = error,"error+new+modified","error+new+modified+unmodified";
        }
        field(46; "Email Sender Address"; Text[50])
        {
            Caption = 'Sender E-Mail Address';
        }
        field(47; "Email Last Error Message"; Text[250])
        {
            Caption = 'Last Error During Sending Email';
            Editable = false;
        }
        field(48; "Email to Dispatcher"; Boolean)
        {
            Caption = 'Email Sending to Dispatcher';
        }
        field(49; "Email to Admin"; Boolean)
        {
            Caption = 'Email Sending to Admin';
        }
        field(50; "GPS Google Maps API Key"; Text[100])
        {
            Caption = 'Google Maps API Key';
        }
        field(51; "GPS Bing Maps API Key"; Text[100])
        {
            Caption = 'Bing Maps API Key';
        }
        field(52; "GPS Default Distance Calc."; Option)
        {
            Caption = 'Default Distance Calculation';
            OptionCaption = 'Bing,Google,Straight Line';
            OptionMembers = Bing,Google,"Straight Line";
        }
        field(53; "GPS Google Account User Info."; Text[50])
        {
            Caption = 'Google Account User Information';
        }
        field(55; "GPS Bing Account User Info."; Text[50])
        {
            Caption = 'Bing Account User Information';
        }
        field(57; "GPS Default Geocoding Service"; Option)
        {
            Caption = 'Default Geocoding Service';
            OptionCaption = ' ,Bing,Google';
            OptionMembers = " ",Bing,Google;
        }
        field(58; "GPS Default Speed 4 Duration"; Integer)
        {
            Caption = 'Default Speed for Calculate Duration (UoM/h)';
            MinValue = 0;
            NotBlank = true;
        }
        field(59; "GPS Default Starting Position"; Option)
        {
            Caption = 'Default Starting Position';
            OptionCaption = 'Location,Resource Address';
            OptionMembers = Location,"Resource Address";
        }
        field(60; "GPS Default Finishing Position"; Option)
        {
            Caption = 'Default Finishing Position';
            OptionCaption = 'Location,Resource Address';
            OptionMembers = Location,"Resource Address";
        }
        field(61; "GPS Straight Line Allowed"; Boolean)
        {
            Caption = 'Allow Straight Line calculation in case of Map Service error';
        }
        field(62; "GPS Retry Cnt MapService Error"; Integer)
        {
            Caption = 'Number of attempts in case of Map Service error';
        }
        field(63; "GPS Google Geocode Limit"; Integer)
        {
            Caption = 'Google Maps Geocoding API Limit';
            MinValue = 0;
        }
        field(64; "GPS Google Distance Limit"; Integer)
        {
            Caption = 'Google Maps Distance Matrix API Limit';
        }
        field(65; "GPS Bing Locations API Limit"; Integer)
        {
            Caption = 'Bing Locations API Limit';
            MinValue = 0;
        }
        field(66; "GPS Bing Routes API Limit"; Integer)
        {
            Caption = 'Bing Routes API Limit';
        }
        field(67; "Get GPS Coords Show Result"; Boolean)
        {
            Caption = 'Get GPS Coordinates Report show result page';
        }
        field(70; "Initial status for Portal SO"; Code[10])
        {
            Caption = 'Initial status for Portal created orders';
            TableRelation = "Repair Status";
        }
        field(81; "Activate DIME WS Comm. Delayed"; Boolean)
        {
            Caption = 'Webservice Communication (delayed)';
        }
        field(88; "DIME Scheduler Comm. WS"; Boolean)
        {
            Caption = 'Webservice Communication (immediate)';
        }
        field(90; "DIME Scheduler Synch Active"; Boolean)
        {
            Caption = 'NAV-DIME Synchronization';
        }
        field(91; "DIME Scheduler User"; Code[50])
        {
            Caption = 'DIME Scheduler User';
        }
        field(93; "Enable Worktime Management"; Boolean)
        {
            Caption = 'Enable Worktime Management';
        }
        field(94; "Service Time Rounding"; Option)
        {
            Caption = 'Service Time Rounding';
            OptionCaption = 'Disabled,One Minute,5 Minutes,10 Minutes,Quarter Hour,20 Minutes,Half an Hour,One Hour';
            OptionMembers = Disabled,"1 Minute","5 Minutes","10 Minutes","Quarter Hour","20 Minutes","Half an Hour","1 Hour";
        }
        field(95; "Sched. Period for Bg Sched."; DateFormula)
        {
            Caption = 'Scheduling Period';
        }
        field(96; "Sched. Result Execution Mode"; Option)
        {
            Caption = 'Execution Mode';
            OptionCaption = 'Calculate only,Calculate and Allocate';
            OptionMembers = "Calculate only","Calculate and Allocate";
        }
        field(97; "Allow to Stop Work"; Boolean)
        {
            Caption = 'Allow to Stop Work by Another Workshift Action';
        }
        field(98; "Activate JQE Bg. Scheduling"; Boolean)
        {
            Caption = 'Activate Background Scheduling';
        }
        field(99; "Activate JQE E-Bill Synch"; Boolean)
        {
            Caption = 'Activate E-Bill Synchronization';
        }
        field(100; "JQE GUID Bg. Scheduling"; Guid)
        {
            Caption = 'Bg. Scheduling Job Queue Entry ID';
            TableRelation = "Job Queue Entry".ID;
        }
        field(101; "JQE GUID E-Bill Synch"; Guid)
        {
            Caption = 'E-Bill Synch. Job Queue Entry ID';
            TableRelation = "Job Queue Entry".ID;
        }
        field(102; "JQE GUID DIME Task Synch"; Guid)
        {
            Caption = 'DIME Task Synch. Job Queue Entry ID';
            TableRelation = "Job Queue Entry".ID;
        }
        field(103; "JQE Status Bg. Scheduling"; Option)
        {
            CalcFormula = Lookup ("Job Queue Entry".Status WHERE (ID = FIELD ("JQE GUID Bg. Scheduling")));
            Caption = 'Bg. Scheduling Job Queue Entry Status';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Ready,In Process,Error,On Hold,Finished';
            OptionMembers = Ready,"In Process",Error,"On Hold",Finished;
        }
        field(104; "JQE Status E-Bill Synch"; Option)
        {
            CalcFormula = Lookup ("Job Queue Entry".Status WHERE (ID = FIELD ("JQE GUID E-Bill Synch")));
            Caption = 'E-Bill Synch. Job Queue Entry Status';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Ready,In Process,Error,On Hold,Finished';
            OptionMembers = Ready,"In Process",Error,"On Hold",Finished;
        }
        field(105; "JQE Status DIME Task Synch"; Option)
        {
            CalcFormula = Lookup ("Job Queue Entry".Status WHERE (ID = FIELD ("JQE GUID DIME Task Synch")));
            Caption = 'DIME Task Synch. Job Queue Entry Status';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = 'Ready,In Process,Error,On Hold,Finished';
            OptionMembers = Ready,"In Process",Error,"On Hold",Finished;
        }
        field(110; "Question Nos."; Code[20])
        {
            Caption = 'Question Nos.';
            TableRelation = "No. Series";
        }
        field(111; "Answer Group Nos."; Code[20])
        {
            Caption = 'Answer Group Nos.';
            TableRelation = "No. Series";
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

