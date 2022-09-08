table 42014826 "Servotion Factor Setup Log"
{
    Caption = 'Factor Setup Log';

    fields
    {
        field(1; Factor; Option)
        {
            Caption = 'Factor';
            OptionCaption = 'Response Date+,Response Date-,Latest Starting Date+,Latest Starting Date-,Task Length,Timeframe Length,Customer Priority,Task Priority,Geographical Distance,Earliest Starting Date,Preferred Resource,Slot Usefulness,Longest Waiting Task,Resource Zone Preference';
            OptionMembers = "Response Date+","Response Date-","Latest Starting Date+","Latest Starting Date-","Task Length","Timeframe Length","Customer Priority","Task Priority","Geographical Distance","Earliest Starting Date","Preferred Resource","Slot Usefulness","Longest Waiting Task","Resource Zone Preference";
        }
        field(2; Value; Decimal)
        {
            Caption = 'Value';
            DecimalPlaces = 0 : 3;
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Normal,Reciprocal (1 / Reference * Value),Exponential (Reference ^ 2 * Value)';
            OptionMembers = Normal,Reciprocal,Exponential;
        }
        field(7; "Free Slot Dependent"; Boolean)
        {
            Caption = 'Free Slot Dependent';
        }
        field(8; "Base Data Type"; Option)
        {
            Caption = 'Base Data Type';
            OptionCaption = 'Time,Distance,Enum,Bool,Int';
            OptionMembers = Time,Distance,Enum,Bool,Int;
        }
        field(9; Correction; Decimal)
        {
            Caption = 'Correction';
            DecimalPlaces = 0 : 10;
        }
        field(10; Disabled; Boolean)
        {
            Caption = 'Disabled';
        }
        field(20; "Factor Set ID"; Integer)
        {
            Caption = 'Factor Set ID';
        }
    }

    keys
    {
        key(Key1; "Factor Set ID", Factor)
        {
            Clustered = true;
        }
        key(Key2; Disabled)
        {
        }
    }

    fieldgroups
    {
    }
}

