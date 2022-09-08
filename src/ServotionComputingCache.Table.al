table 42014853 "Servotion Computing Cache"
{
    Caption = 'Computing Cache';

    fields
    {
        field(101; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(102; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
        }
        field(103; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
        }
        field(104; "Slot Starting Time"; DateTime)
        {
            Caption = 'Slot Starting Time';
        }
        field(121; "Slot Ending Time"; DateTime)
        {
            Caption = 'Slot Ending Time';
        }
        field(122; "Slot Starting GPS Latitude"; Decimal)
        {
            Caption = 'Slot Starting GPS Latitude';
            DecimalPlaces = 0 : 8;
        }
        field(123; "Slot Starting GPS Longitude"; Decimal)
        {
            Caption = 'Slot Starting GPS Longitude';
            DecimalPlaces = 0 : 8;
        }
        field(124; "Slot Ending GPS Latitude"; Decimal)
        {
            Caption = 'Slot Ending GPS Latitude';
            DecimalPlaces = 0 : 8;
        }
        field(125; "Slot Ending GPS Longitude"; Decimal)
        {
            Caption = 'Slot Ending GPS Longitude';
            DecimalPlaces = 0 : 8;
        }
        field(126; "Slot Duration"; Duration)
        {
            Caption = 'Slot Duration';
        }
        field(127; "Resource Zone Match"; Boolean)
        {
            Caption = 'Resource Zone Match';
        }
        field(146; "Slot Distance From Previous"; Decimal)
        {
            Caption = 'Slot Distance From Previous';
        }
        field(147; "Slot Travel Time From Previous"; Duration)
        {
            Caption = 'Slot Travel Time From Previous';
        }
        field(148; "Slot Distance To Next"; Decimal)
        {
            Caption = 'Slot Distance To Next';
        }
        field(149; "Slot Travel Time To Next"; Duration)
        {
            Caption = 'Slot Travel Time To Next';
        }
        field(150; "Slot Earliest Starting Time"; DateTime)
        {
            Caption = 'Slot Earliest Starting Time';
        }
        field(151; "Slot Latest Finishing Time"; DateTime)
        {
            Caption = 'Slot Latest Finishing Time';
        }
        field(152; "Slot Effective Starting Time"; DateTime)
        {
            Caption = 'Slot Effective Starting Time';
        }
        field(172; "Total Value"; Decimal)
        {
            Caption = 'Total Value';
        }
        field(174; "Match Status"; Option)
        {
            Caption = 'Match Status';
            OptionCaption = ' ,No Match,Match,Out of Promised Time,Out of Response Time';
            OptionMembers = " ","No Match",Match,"Out of Promised Time","Out of Response Time";
        }
        field(200; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(205; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(206; "Previously Active"; Boolean)
        {
            Caption = 'Previously Active';
        }
        field(510; F_GeographicalDistance; Decimal)
        {
        }
        field(511; F_EarliestStartingDate; Decimal)
        {
        }
        field(512; F_PreferredResource; Decimal)
        {
        }
        field(513; F_SlotUsefulness; Decimal)
        {
        }
        field(528; F_ResourceZonePreference; Decimal)
        {
        }
    }

    keys
    {
        key(Key1; "Document No.", "Document Line No.", "Resource No.", "Slot Starting Time", "Slot Ending Time")
        {
            Clustered = true;
        }
        key(Key2; "Match Status", Active)
        {
        }
        key(Key3; "Total Value", Active)
        {
        }
        key(Key4; "Previously Active")
        {
        }
        key(Key5; Active, "Document No.", "Document Line No.", "Slot Effective Starting Time")
        {
        }
        key(Key6; "Resource No.", "Slot Starting Time", "Slot Ending Time")
        {
        }
        key(Key7; Active)
        {
        }
    }

    fieldgroups
    {
    }
}

