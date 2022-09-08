table 5050265 "TE-Posted Part Account"
{
    Caption = 'TE-Posted Part Account';

    fields
    {
        field(1; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            NotBlank = true;
            TableRelation = "TE-Posted Account"."No.";
        }
        field(2; "Part Account No."; Integer)
        {
            Caption = 'Part Account No.';
            NotBlank = false;
        }
        field(3; "Travel No."; Code[20])
        {
            Caption = 'Travel No.';
        }
        field(4; Type; Option)
        {
            Caption = 'Type';
            Editable = false;
            OptionCaption = 'Account,Journey';
            OptionMembers = Account,Journey;
        }
        field(5; "Travel-Type"; Code[20])
        {
            Caption = 'Travel-Type';
            TableRelation = "TE-Travel-Type";
        }
        field(10; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "TE-Employee";
        }
        field(14; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(15; "Vouch Type Lodging"; Code[20])
        {
            Caption = 'Vouch Type Lodging';
            TableRelation = "TE-Voucher Type";
        }
        field(16; "Vouch Type Boarding"; Code[20])
        {
            Caption = 'Vouch Type Boarding';
            TableRelation = "TE-Voucher Type";
        }
        field(17; "Vouch Type Driving"; Code[20])
        {
            Caption = 'Vouch Type Driving';
            TableRelation = "TE-Voucher Type";
        }
        field(29; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(30; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcutdimensioncode 1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(31; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(32; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(33; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(34; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(35; "Account State"; Option)
        {
            Caption = 'Account State';
            Editable = false;
            OptionCaption = 'Entry,Entry Terminated,Checked,Posted,Reversed';
            OptionMembers = Entry,"Entry Terminated",Checked,Posted,Reversed;
        }
        field(38; "Payed by Default"; Option)
        {
            Caption = 'Payed by Default';
            InitValue = undefined;
            OptionCaption = 'Private,Employer,undefined';
            OptionMembers = Private,Employer,undefined;
        }
        field(47; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code".Code;
        }
        field(48; Comment; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = CONST (5050255),
                                                         "Account No." = FIELD ("Account No."),
                                                         "Part Account No." = FIELD ("Part Account No."),
                                                         "Part Account Line No." = CONST (0)));
            Caption = 'Comment';
            FieldClass = FlowField;
        }
        field(49; "Departure-Place"; Text[50])
        {
            Caption = 'Departure-Place';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(50; "Travel-Purpose"; Text[50])
        {
            Caption = 'Travel-Purpose';
            NotBlank = true;
            TableRelation = "TE-Travel-Purpose";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(51; "Departure Date"; Date)
        {
            Caption = 'Departure Date';
        }
        field(52; "Departure Time"; Time)
        {
            Caption = 'Departure Time';
        }
        field(53; "Arrival Date"; Date)
        {
            Caption = 'Arrival Date';
        }
        field(54; "Arrival Time"; Time)
        {
            Caption = 'Arrival Time';
        }
        field(55; Duration; Decimal)
        {
            Caption = 'Duration';
            Editable = false;
        }
        field(56; "Lodging Exception"; Boolean)
        {
            Caption = 'Lodging Exception';
        }
        field(57; "Account Type"; Option)
        {
            Caption = 'Account Type';
            OptionCaption = ' ,Three Month Regulation';
            OptionMembers = " ","Three Month Regulation";
        }
        field(58; Destination; Text[50])
        {
            Caption = 'Destination';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(59; Routing; Text[50])
        {
            Caption = 'Routing';
        }
        field(60; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(61; "Modified By"; Code[50])
        {
            Caption = 'Modified By';
            Editable = false;
        }
        field(62; Departure; Option)
        {
            Caption = 'Depature';
            OptionCaption = 'Workplace,Home,Vouch-Entry,Others';
            OptionMembers = Workplace,Home,"Vouch-Entry",Others;
        }
        field(63; "Routing/Distance"; Code[20])
        {
            Caption = 'Routing/Distance';
            TableRelation = "TE-Travel Way";
        }
        field(64; "Departure-Place Code"; Code[20])
        {
            Caption = 'Departure-Place Code';
            TableRelation = "TE-Destination" WHERE (State = FILTER (Both | "Place of Departure"));
        }
        field(65; "Destination Code"; Code[20])
        {
            Caption = 'Destination Code';
            TableRelation = "TE-Destination" WHERE (State = FILTER (Both | Destination));
        }
        field(66; "Purpose Code"; Code[20])
        {
            Caption = 'Purpose Code';
            TableRelation = "TE-Travel-Purpose";
        }
        field(70; "Total Amount (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Posted Part Account Line"."Total Amount (LCY)" WHERE ("Account No." = FIELD ("Account No."),
                                                                                        "Part Account No." = FIELD ("Part Account No.")));
            Caption = 'Total Amount (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(71; "Total Payed (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Posted Part Account Line"."Total Payed Amount (LCY)" WHERE ("Account No." = FIELD ("Account No."),
                                                                                              "Part Account No." = FIELD ("Part Account No.")));
            Caption = 'Total Payed (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(72; "Total Charged Job (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Posted Part Account Line"."Total Charged Job Amount (LCY)" WHERE ("Account No." = FIELD ("Account No."),
                                                                                                    "Part Account No." = FIELD ("Part Account No.")));
            Caption = 'Total Charged Job (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(73; "Total Tax Liable (LCY)"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("TE-Posted Part Account Line"."Total Liable Tax (LCY)" WHERE ("Account No." = FIELD ("Account No."),
                                                                                            "Part Account No." = FIELD ("Part Account No.")));
            Caption = 'Total Tax Liable (LCY)';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(74; "Official Journey Rationale 1"; Text[80])
        {
            Caption = 'Official Journey Rationale 1';
        }
        field(75; "Official Journey Rationale 2"; Text[80])
        {
            Caption = 'Official Journey Rationale 2';
        }
        field(76; "Official Journey Rationale 3"; Text[80])
        {
            Caption = 'Official Journey Rationale 3';
        }
        field(77; "Official Journey Rational Car"; Text[80])
        {
            Caption = 'Official Journey Rational Car';
        }
        field(78; "Official Journey Car Use"; Option)
        {
            Caption = 'Official Journey Car Use';
            OptionCaption = ' ,Cost Saving,Passengers,Luggage,Time Saving,Multiple Duties,No Public Transport,Urgent Personal Reasons';
            OptionMembers = " ","Cost Saving",Passengers,Luggage,"Time Saving","Multiple Duties","No Public Transport","Urgent Personal Reasons";
        }
        field(79; "Start Duty Date"; Date)
        {
            Caption = 'Start Duty Date';
        }
        field(80; "End Duty Date"; Date)
        {
            Caption = 'End Duty Date';
        }
        field(81; "Start Duty Time"; Time)
        {
            Caption = 'Start Duty Time';
        }
        field(82; "End Duty Time"; Time)
        {
            Caption = 'End Duty Time';
        }
        field(83; "Official Journey Request"; Boolean)
        {
            Caption = 'Official Journey Request';
            InitValue = true;
        }
        field(84; "Sponsor Expenses"; Boolean)
        {
            Caption = 'Sponsor Expenses';
        }
        field(85; Assumetext; Text[80])
        {
            Caption = 'Assumetext';
        }
        field(86; "Duration (Driving Time)"; Decimal)
        {
            Caption = 'Duration (Driving Time)';
        }
        field(87; "Staff Car"; Code[20])
        {
            Caption = 'Staff Car';
        }
        field(88; "Staff Car KM"; Boolean)
        {
            Caption = 'Staff Car KM';
        }
        field(89; "Drive Type"; Option)
        {
            Caption = 'Drive Type';
            OptionCaption = 'Business,Private,Commuting';
            OptionMembers = Business,Private,Commuting;
        }
        field(90; "Journey Authorized"; Boolean)
        {
            Caption = 'Journey Authorized';
        }
        field(91; "Journey Authorized By"; Code[50])
        {
            Caption = 'Journey Authorized By';
        }
        field(92; "Journey Authorized Date"; Date)
        {
            Caption = 'Journey Authorized Date';
            Editable = false;
        }
        field(93; "Account Group Filter"; Code[20])
        {
            Caption = 'Account Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Account Group";
        }
        field(94; "Authorization Group Filter"; Code[20])
        {
            Caption = 'Authorization Group Filter';
            FieldClass = FlowFilter;
            TableRelation = "TE-Permission Group";
        }
        field(95; "Number of Passengers"; Integer)
        {
            Caption = 'Number of Passengers';
        }
        field(96; "State of Proof"; Option)
        {
            Caption = 'State of Proof';
            OptionCaption = ',Granted,Not Granted';
            OptionMembers = ,Granted,"Not Granted";
        }
        field(100; "Total Kilometers"; Decimal)
        {
            Caption = 'Total Kilometers';
        }
        field(101; Kilometer; Decimal)
        {
            Caption = 'Kilometer';
        }
        field(102; "Kilometer Balanced"; Option)
        {
            Caption = 'Kilometer Balanced';
            InitValue = Bidirectional;
            OptionCaption = 'Single,Bidirectional,Daily';
            OptionMembers = Single,Bidirectional,Daily;
        }
        field(103; Lodging; Boolean)
        {
            Caption = 'Lodging';
            InitValue = true;
        }
        field(104; Boarding; Boolean)
        {
            Caption = 'Boarding';
        }
        field(105; "Tachometer Departure"; Decimal)
        {
            Caption = 'Tachometer Departure';
        }
        field(106; "Tachometer Arrival"; Decimal)
        {
            Caption = 'Tachometer Arrival';
        }
        field(107; Sorting; Option)
        {
            Caption = 'Sorting';
            OptionCaption = 'Order Entry,Vouch-No,Vouch-Type,Date';
            OptionMembers = "Order Entry","Vouch-No","Vouch-Type",Date;
        }
        field(108; "Employee Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Employee" WHERE ("No." = FIELD ("Employee No."),
                                                     "Account Group" = FIELD ("Account Group Filter")));
            Caption = 'Employee Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(109; "Group Authorization"; Boolean)
        {
            CalcFormula = Exist ("TE-Account Group Member" WHERE ("TE-Employee" = FIELD ("Employee No."),
                                                                 Code = FIELD ("Account Group Filter")));
            Caption = 'Group Authorization';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Authorization Right"; Boolean)
        {
            CalcFormula = Exist ("TE-Permission Group Member" WHERE ("TE-Employee" = FIELD ("Employee No."),
                                                                    Code = FIELD ("Authorization Group Filter")));
            Caption = 'Authorization Right';
            Description = 'FlowField';
            Editable = false;
            FieldClass = FlowField;
        }
        field(111; "Authorization Duty"; Boolean)
        {
            Caption = 'Authorization Duty';
            Editable = false;
        }
        field(112; "Registration No."; Code[20])
        {
            Caption = 'Registration No.';
        }
        field(113; "Distance Entry"; Option)
        {
            Caption = 'Distance Entry';
            OptionCaption = 'Kilometer,Tachometer';
            OptionMembers = Kilometer,Tachometer;
        }
        field(114; "Passenger 1"; Text[30])
        {
            Caption = 'Passenger 1';
        }
        field(115; "Passenger 2"; Text[30])
        {
            Caption = 'Passenger2';
        }
        field(116; "Passenger 3"; Text[30])
        {
            Caption = 'Passenger 3';
        }
        field(117; "Passenger 4"; Text[30])
        {
            Caption = 'Passenger 4';
        }
        field(118; "Passenger 5"; Text[30])
        {
            Caption = 'Passenger 5';
        }
        field(119; "Main Travel Instrument"; Code[20])
        {
            Caption = 'Main Travel Instrument';
            TableRelation = "TE-Voucher Type" WHERE (Category = FILTER ("Driving Expenses"));
        }
        field(120; "Payment In Kind Entry Finished"; Boolean)
        {
            Caption = 'Payment In Kind Entry Finished';
        }
        field(121; "Take Over"; Boolean)
        {
            Caption = 'Take Over';
        }
        field(122; "Delegation Y/N"; Boolean)
        {
            Caption = 'Delegation Y/N';
            InitValue = false;
        }
        field(123; Userportal; Boolean)
        {
            Caption = 'Userportal';
        }
        field(124; Back; Boolean)
        {
            Caption = 'Back';
        }
        field(125; "Staff-Car-Text"; Text[30])
        {
            Caption = 'Staff-Car-Text';
        }
        field(126; ChangeIndicator; Boolean)
        {
            Caption = 'ChangeIndicator';
        }
        field(127; "Total Kilometer"; Decimal)
        {
            CalcFormula = Sum ("TE-Posted Part Account Line".Quantity WHERE ("Account No." = FIELD ("Account No."),
                                                                            "Part Account No." = FIELD ("Part Account No.")));
            Caption = 'Total Kilometer';
            FieldClass = FlowField;
        }
        field(128; "Submitted Amount (LCY)"; Decimal)
        {
            CalcFormula = Sum ("TE-Part Account Line"."Submitted Amount (LCY)" WHERE ("Account No." = FIELD ("Account No."),
                                                                                     "Part Account No." = FIELD ("Part Account No.")));
            Caption = 'Submitted Amount (LCY)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(129; "Part Travels Exist"; Boolean)
        {
            Caption = 'Part Travels Exist';
        }
        field(130; "EMail to Grant"; Boolean)
        {
            Caption = 'EMail to Grant';
        }
        field(131; "Journey Authorized Vice"; Boolean)
        {
            Caption = 'Journey Authorized Vice';
        }
        field(132; "Journey Authorized Vice By"; Code[50])
        {
            Caption = 'Journey Authorized Vice By';
        }
        field(133; "Journey Authorized Vice Date"; Date)
        {
            Caption = 'Journey Authorized Vice Date';
        }
        field(134; "Journey Authorized Personal"; Boolean)
        {
            Caption = 'Journey Authorized Personal';
        }
        field(135; "Journey Authorized Personal By"; Code[50])
        {
            Caption = 'Journey Authorized Personal By';
        }
        field(136; "Journey Authorized Pers. Date"; Date)
        {
            Caption = 'Journey Authorized Pers. Date';
        }
        field(137; "Journey Authorized BR"; Boolean)
        {
            Caption = 'Journey Authorized BR';
        }
        field(138; "Journey Authorized BR By"; Code[50])
        {
            Caption = 'Journey Authorized BR By';
        }
        field(139; "Journey Authorized BR Date"; Date)
        {
            Caption = 'Journey Authorized BR Date';
        }
        field(140; "State of Proof Vice"; Option)
        {
            Caption = 'State of Proof Vice';
            OptionCaption = ',approved,not approved';
            OptionMembers = " ",Genehmigt,"Nicht genehmigt";
        }
        field(141; "State of Proof Personal"; Option)
        {
            Caption = 'State of Proof Personal';
            OptionCaption = ',approved,not approved';
            OptionMembers = " ",Genehmigt,"Nicht genehmigt";
        }
        field(142; "State of Proof BR"; Option)
        {
            Caption = 'State of Proof BR';
            OptionCaption = ',approved,not approved';
            OptionMembers = " ",Genehmigt,"Nicht genehmigt";
        }
        field(143; Subunit; Code[20])
        {
            Caption = 'Subunit';
        }
        field(144; "Job-Integration"; Option)
        {
            Caption = 'Job-Integration';
            OptionCaption = 'Job,Customer,Work Order';
            OptionMembers = Job,Customer,"Work Order";
        }
        field(145; "Work Order"; Code[20])
        {
            Caption = 'Work Order';
        }
        field(146; "Phase Code"; Code[10])
        {
            Caption = 'Phase Code';
        }
        field(147; "Task Code"; Code[10])
        {
            Caption = 'Task Code';
        }
        field(148; "Step Code"; Code[10])
        {
            Caption = 'Step Code';
        }
        field(149; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job No."));
        }
        field(152; "Job Line Type"; Option)
        {
            Caption = 'Job Line Type';
            OptionCaption = ' ,Schedule,Contract,Both Schedule and Contract';
            OptionMembers = " ",Schedule,Contract,"Both Schedule and Contract";
        }
        field(153; "Day Filter"; Integer)
        {
            Caption = 'Day Filter';
            FieldClass = FlowFilter;
        }
        field(207; "Create Breakfast"; Option)
        {
            Caption = 'Create Breakfast';
            OptionCaption = 'No,all,domestic,abroad';
            OptionMembers = No,all,domestic,abroad;
        }
        field(208; "Automatic Flat Rates"; Option)
        {
            Caption = 'Automatic Flatrates';
            OptionCaption = 'Alldays,Only on Workdays';
            OptionMembers = Alldays,"Only on Workdays";
        }
        field(500; "Destination Extension"; Boolean)
        {
            Caption = 'Destination Extension';
        }
        field(501; "Tax Reverse Entry"; Boolean)
        {
            Caption = 'Tax Reverse Entry';
        }
        field(502; "Tax Reverse Entry Type"; Option)
        {
            Caption = 'Tax Reverse Entry Type';
            OptionCaption = ' ,only taxable,complete';
            OptionMembers = " ","only taxable",complete;
        }
        field(503; "Permission Complete"; Boolean)
        {
            Caption = 'Permission Complete';
        }
        field(504; "Voucher Type Filter"; Code[20])
        {
            Caption = 'Voucher Type Filter';
            FieldClass = FlowFilter;
        }
        field(505; Airport; Text[50])
        {
            Caption = 'Airport';
        }
        field(506; "Travel with Train"; Boolean)
        {
            Caption = 'Travel with Train';
        }
        field(507; "Accomodation with Breakfast"; Boolean)
        {
            Caption = 'Accomodation with Breakfast';
        }
        field(508; "Accomodation without Breakfast"; Boolean)
        {
            Caption = 'Accomodation without Breakfast';
        }
        field(509; "Rentalcar short"; Boolean)
        {
            Caption = 'Rentalcar short';
        }
        field(510; "Rentacar long"; Boolean)
        {
            Caption = 'Rentacar long';
        }
        field(511; Flight; Boolean)
        {
            Caption = 'Flight';
        }
        field(512; "Date Request"; Date)
        {
            Caption = 'Date Request';
        }
        field(513; "Date Last Reminder"; Date)
        {
            Caption = 'Date Last Reminder';
        }
        field(514; "Tickbox Travel"; Option)
        {
            Caption = 'Tickbox Travel';
            OptionCaption = 'No Car,Private Car,Company Car,Rental Car';
            OptionMembers = "Kein Fahrzeug","Privat PKW",Dienstwagen,Mietwagen;
        }
        field(515; "Flight-Type"; Option)
        {
            Caption = 'Flight-Type';
            OptionCaption = 'Economy-Class,Business-Class';
            OptionMembers = "Economy-Class","Business-Class";
        }
        field(1000; "Gruppe Person"; Code[50])
        {
            Caption = 'Group Person';
            TableRelation = "TE-Employee";
        }
        field(1001; "Gruppe Person 2"; Code[50])
        {
            Caption = 'Group Person 2';
            TableRelation = "TE-Employee";
        }
        field(1002; "Gruppe Person 3"; Code[50])
        {
            Caption = 'Group Person 3';
            TableRelation = "TE-Employee";
        }
        field(1003; "Gruppe Person 4"; Code[50])
        {
            Caption = 'Group Person 4';
            TableRelation = "TE-Employee";
        }
        field(1004; "Gruppe Person 5"; Code[50])
        {
            Caption = 'Group Person 5';
            TableRelation = "TE-Employee";
        }
        field(1005; "Gruppe Person Datum von"; Date)
        {
            Caption = 'Group Person Date Begin';
        }
        field(1006; "Gruppe Person Datum bis"; Date)
        {
            Caption = 'Group Person Date End';
        }
        field(1008; "Gruppe Person 2 Datum von"; Date)
        {
            Caption = 'Group Person 2 Date Begin';
        }
        field(1009; "Gruppe Person 2 Datum bis"; Date)
        {
            Caption = 'Group Person 2 Date End';
        }
        field(1010; "Gruppe Person 3 Datum von"; Date)
        {
            Caption = 'Group Person 3 Date Begin';
        }
        field(1011; "Gruppe Person 3 Datum bis"; Date)
        {
            Caption = 'Group Person 3 Date End';
        }
        field(1012; "Gruppe Person 4 Datum von"; Date)
        {
            Caption = 'Group Person 4 Date Begin';
        }
        field(1013; "Gruppe Person 4 Datum bis"; Date)
        {
            Caption = 'Group Person 4 Date End';
        }
        field(1014; "Gruppe Person 5 Datum von"; Date)
        {
            Caption = 'Group Person 5 Date Begin';
        }
        field(1015; "Gruppe Person 5 Datum bis"; Date)
        {
            Caption = 'Group Person 5 Date End';
        }
        field(1016; Referenz; Code[30])
        {
            Caption = 'Reference';
        }
        field(1017; Reisemittelauswahl; Option)
        {
            Caption = 'Travel Type Selection';
            OptionCaption = ' ,Flight,Train,Private Car,Company Car,Rental Car,Ship';
            OptionMembers = " ",Flug,Bahn,"Privat-PKW","Dienst-PKW",Mietwagen,Schiff;
        }
        field(1018; Verlassen; Boolean)
        {
            Caption = 'Quit';
        }
        field(1019; Bahncard; Boolean)
        {
            Caption = 'Discount Card Train';
        }
        field(1020; "Sparticket Zuggebunden"; Boolean)
        {
            Caption = 'Reduced bound Ticket';
        }
        field(1021; "Bahncard vorhanden"; Option)
        {
            Caption = 'Bahncard exist';
            OptionCaption = ',yes,no';
            OptionMembers = " ",ja,nein;
        }
        field(1022; "Breakfast Created"; Boolean)
        {
            Caption = 'Breakfast Created';
        }
        field(1023; Driver; Text[50])
        {
            Caption = 'Driver';
        }
        field(1024; "Destination Filter"; Text[50])
        {
            Caption = 'Destination Filter';
            FieldClass = FlowFilter;
        }
        field(1025; "Train Selection Ticket Type"; Option)
        {
            Caption = 'Train Selection Ticket Type';
            OptionCaption = ' ,Reduced Ticket Price,Company Rate,Bahncard';
            OptionMembers = " ","Sparticket zuggebunden",Firmenabonnement,Bahncard;
        }
        field(1026; Representation; Code[20])
        {
            Caption = 'Representation';
            TableRelation = "TE-Employee";
        }
        field(1027; "EMail Send"; Boolean)
        {
            Caption = 'EMail Send';
        }
        field(1028; "Train Selection Class"; Option)
        {
            Caption = 'Train Selection Class';
            OptionCaption = ' ,1. Class, 2.Class, Sleeping Room 1.Class, Sleeping Room 2.Class';
            OptionMembers = " ","1. Klasse"," 2.Klasse"," Schlafwagen 1.Klasse"," Schlafwagen 2. Klasse";
        }
        field(1030; "Car-Type"; Option)
        {
            Caption = 'Car-Type';
            OptionCaption = ' ,private Car,Pool Car,Company Car';
            OptionMembers = " ","Eigener PKW",Poolwagen,Firmenwagen;
        }
    }

    keys
    {
        key(Key1; "Account No.", "Part Account No.")
        {
            Clustered = true;
        }
        key(Key2; "Employee No.", "Staff Car", "Account State")
        {
            SumIndexFields = "Total Kilometers";
        }
        key(Key3; "Staff Car", "Tachometer Arrival")
        {
        }
        key(Key4; "Employee No.", "Departure Date", "Arrival Date")
        {
        }
        key(Key5; "Destination Code", "Employee No.", "Departure Date")
        {
            SumIndexFields = Duration;
        }
    }

    fieldgroups
    {
    }
}

