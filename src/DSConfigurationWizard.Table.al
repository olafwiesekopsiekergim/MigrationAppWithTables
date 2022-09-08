table 2087641 "DS Configuration Wizard"
{
    Caption = 'DS Configuration Wizard';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(20; "Check Appointment on Delete"; Boolean)
        {
            Caption = 'Check Appointment on Delete';
        }
        field(21; "Default Duration Service Line"; Time)
        {
            Caption = 'Default Duration Service Line';
        }
        field(22; "Default Duration Job Task"; Time)
        {
            Caption = 'Default Duration Job Task';
        }
        field(23; "Send Lines with Service Header"; Boolean)
        {
            Caption = 'Send Lines with Service Header';
        }
        field(24; "Send Tasks with Job"; Boolean)
        {
            Caption = 'Send Tasks with Job';
        }
        field(25; "Default Duration Sales Task"; Time)
        {
        }
        field(26; "Default Duration Prod. Task"; Time)
        {
        }
        field(27; "Send Lines with Sales Header"; Boolean)
        {
        }
        field(28; "Send Lines with Prod. Header"; Boolean)
        {
        }
        field(29; "Send Service Header as Task"; Boolean)
        {
        }
        field(30; "Send Job as Task"; Boolean)
        {
        }
        field(31; "Send Sales Header as Task"; Boolean)
        {
        }
        field(32; "Send Prod. Header as Task"; Boolean)
        {
        }
        field(33; "Update Time Sheet Service"; Boolean)
        {
            Caption = 'Update Time Sheet from Plan Board';
        }
        field(34; "Upd. Plan Brd. from TS Service"; Boolean)
        {
            Caption = 'Update Plan Board from Time Sheet';
        }
        field(35; "Update Time Sheet Job"; Boolean)
        {
            Caption = 'Update Time Sheet from Plan Board';
        }
        field(36; "Upd. Plan Brd. from TS Job"; Boolean)
        {
            Caption = 'Update Plan Board from Time Sheet';
        }
        field(37; "Update Time Sheet Ass.Ord"; Boolean)
        {
            Caption = 'Update Time Sheet from Plan Board';
        }
        field(38; "Upd. Plan Brd. from TS Ass.Ord"; Boolean)
        {
            Caption = 'Update Plan Board from Time Sheet';
        }
        field(39; "Default Duration Assembly Ord."; Decimal)
        {
        }
        field(40; "Update Dates Assembly Ord."; Boolean)
        {
            Caption = 'Update Dates';
        }
        field(41; "Resource - Resource Type"; Option)
        {
            Caption = 'Resource Type from';
            OptionMembers = Default,"Resource Group","Field",Dimension;
        }
        field(42; "Resource - Department"; Option)
        {
            Caption = 'Department from';
            OptionMembers = " ","Resource Group","Field",Dimension;
        }
        field(43; "Resource - Team"; Option)
        {
            Caption = 'Team from';
            OptionMembers = " ","Resource Group","Field",Dimension;
        }
        field(44; "Resource - Resource Type Field"; Integer)
        {
            Caption = 'Resource Type Field';
            TableRelation = Field."No." WHERE (TableNo = CONST (156),
                                               Enabled = CONST (true),
                                               Class = FILTER (<> FlowFilter));
        }
        field(45; "Resource - Resource Type Dim."; Code[20])
        {
            Caption = 'Resource Type Dimension';
            TableRelation = Dimension.Code;
        }
        field(46; "Resource - Department Field"; Integer)
        {
            Caption = 'Department Field';
            TableRelation = Field."No." WHERE (TableNo = CONST (156),
                                               Enabled = CONST (true),
                                               Class = FILTER (<> FlowFilter));
        }
        field(47; "Resource - Department Dim."; Code[20])
        {
            Caption = 'Department Dimension';
            TableRelation = Dimension.Code;
        }
        field(48; "Resource - Team Field"; Integer)
        {
            Caption = 'Team Field';
            TableRelation = Field."No." WHERE (TableNo = CONST (156),
                                               Enabled = CONST (true),
                                               Class = FILTER (<> FlowFilter));
        }
        field(49; "Resource - Team Dim."; Code[20])
        {
            Caption = 'Team Dimension';
            TableRelation = Dimension.Code;
        }
        field(50; "Sales - Create Resource Lines"; Boolean)
        {
            Caption = 'Create Resource Lines';
        }
        field(51; "Resource - Create Skill Filter"; Boolean)
        {
            Caption = 'Create Skill Filter';
        }
        field(52; "Resource - Skill Filter Name"; Text[50])
        {
            Caption = 'Skill Filter Name';
        }
        field(53; "Resource - Cr. Svc Zone Filt."; Boolean)
        {
            Caption = 'Create Service Zone Filter';
        }
        field(54; "Resource - Svc. Zone Filt.Name"; Text[50])
        {
            Caption = 'Service Zone Filter Name';
        }
        field(55; "Sales - Update Date"; Option)
        {
            Caption = 'Update Date';
            OptionMembers = " ","Shipment Date (H)","Promised Delivery Date (H)","Shipment Date (L)","Planned Shipment Date (L)","Planned Delivery Date (L)";
        }
        field(57; "Sales - Send Res. with Ord."; Boolean)
        {
            Caption = 'Send Resources with Order';
        }
        field(58; "Assembly - Send Res. with Ord."; Boolean)
        {
            Caption = 'Send Resources with Order';
        }
        field(59; "Prod - Use Work Centers"; Boolean)
        {
            Caption = 'Use Work Centers';
        }
        field(60; "Prod - Use Machine Centers"; Boolean)
        {
            Caption = 'Use Machine Centers';
        }
        field(61; "Prod - Order Status"; Option)
        {
            Caption = 'Show Order Status as';
            OptionMembers = " ",Category,TimeMarker;
        }
        field(62; "HR - Job No."; Code[20])
        {
            Caption = 'Job No. for Absences';
        }
        field(63; "HR - Cr.Task from Cause of Abs"; Boolean)
        {
            Caption = 'Create Tasks from Cause of Absence';
        }
        field(64; "Service - Default Category"; Option)
        {
            Caption = 'Default Category';
            OptionMembers = " ","Service Order Type","Repair Status","Service Zone";
        }
        field(65; "Service - Default Timemarker"; Option)
        {
            Caption = 'Default Timemarker';
            OptionMembers = " ","Service Order Type","Repair Status","Service Zone";
        }
        field(66; "Service - Repair Status"; Option)
        {
            Caption = 'Show Repair Status as';
            OptionMembers = " ","Update Category","Update Timemarker";
        }
        field(67; "Resource - Secondary Plan brd."; Option)
        {
            Caption = 'Secondary Plan board';
            OptionMembers = " ","if Person","if Machine";
        }
        field(68; "HR - Cause of Absence"; Option)
        {
            Caption = 'Show Cause of Absence as';
            OptionMembers = " ",Category,Timemarker;
        }
        field(69; "Job - Default Category"; Option)
        {
            Caption = 'Default Category';
            OptionMembers = " ","Job Posting Group";
        }
        field(70; "HR - Create App. As"; Option)
        {
            Caption = 'Create Appointment as';
            OptionMembers = "Working Time","Full Day";
        }
        field(71; "HR - Starting Time"; Time)
        {
            Caption = 'Starting Time';
        }
        field(72; "HR - Ending Time"; Time)
        {
            Caption = 'Ending Time';
        }
        field(73; "Job - Cr. Pers. Resp. Filter"; Boolean)
        {
            Caption = 'Create Person Responsible Filter';
        }
        field(74; "Job - Pers. Resp. Filter Name"; Text[50])
        {
            Caption = 'Person Responsible Filter Name';
        }
        field(75; "HR - Create New Absence Action"; Boolean)
        {
            Caption = 'Create New Absence Action';
        }
        field(76; "HR - New Absence Caption"; Text[100])
        {
            Caption = 'New Absence Caption';
        }
        field(1000; "Wizard - SourceApp"; Text[30])
        {
            Caption = 'SourceApp';
        }
        field(1001; "Wizard - Scheduler Url"; Text[250])
        {
            Caption = 'Scheduler Url';
        }
        field(1002; "Wizard - Connection Tested"; Boolean)
        {
            Caption = 'Connection Tested';
        }
        field(1003; "Wizard - API Type"; Option)
        {
            Caption = 'API Type';
            OptionCaption = 'REST Service,Web Service';
            OptionMembers = "REST Service","Web Service";
        }
        field(1004; "Wizard - Scheduler User"; Text[250])
        {
            Caption = 'Scheduler User';
        }
        field(1005; "Wizard - Scheduler Password"; Text[100])
        {
            Caption = 'Scheduler Password';
            ExtendedDatatype = Masked;
        }
        field(1010; "Wizard - Use Std. Resources"; Boolean)
        {
            Caption = 'Use Standard Resource table';
        }
        field(1020; "Wizard - Enable Service"; Boolean)
        {
            Caption = 'Enable Service Management';
        }
        field(1030; "Wizard - Enable Jobs"; Boolean)
        {
            Caption = 'Enable Jobs';
        }
        field(1040; "Wizard - Enable Assembly"; Boolean)
        {
            Caption = 'Enable Assembly Order planning';
        }
        field(1050; "Wizard - Enable Production"; Boolean)
        {
            Caption = 'Enable Production Routing planning';
        }
        field(1060; "Wizard - Enable Sales"; Boolean)
        {
            Caption = 'Enable Sales planning';
        }
        field(1070; "Wizard - Enable HR"; Boolean)
        {
            Caption = 'Enable Absences planning';
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

