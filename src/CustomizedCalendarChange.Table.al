table 7602 "Customized Calendar Change"
{
    // #RENW16.00.01:R086 19.10.09 DEMSR.KHS
    //   Calendar Code for Rental Invoicing (Option, Field, New Key)

    Caption = 'Customized Calendar Change';

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            Description = '#RENW16.00.01:R086';
            Editable = false;
            OptionCaption = 'Company,Customer,Vendor,Location,Shipping Agent,Service,,,,,,,,,,Rental';
            OptionMembers = Company,Customer,Vendor,Location,"Shipping Agent",Service,,,,,,,,,,Rental;
        }
        field(2; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
            Editable = false;
        }
        field(3; "Additional Source Code"; Code[20])
        {
            Caption = 'Additional Source Code';
        }
        field(4; "Base Calendar Code"; Code[10])
        {
            Caption = 'Base Calendar Code';
            Editable = false;
            TableRelation = "Base Calendar";
        }
        field(5; "Recurring System"; Option)
        {
            Caption = 'Recurring System';
            OptionCaption = ' ,Annual Recurring,Weekly Recurring';
            OptionMembers = " ","Annual Recurring","Weekly Recurring";
        }
        field(6; Date; Date)
        {
            Caption = 'Date';
        }
        field(7; Day; Option)
        {
            Caption = 'Day';
            OptionCaption = ' ,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday';
            OptionMembers = " ",Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday;
        }
        field(8; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(9; Nonworking; Boolean)
        {
            Caption = 'Nonworking';
            InitValue = true;
        }
        field(10; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(5072650; "Day of Year"; Integer)
        {
            BlankZero = true;
            Caption = 'Day of Year';
            Description = '#RENW16.00.01:R086';
            Editable = false;
            MaxValue = 391;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Source Type", "Source Code", "Additional Source Code", "Base Calendar Code", "Recurring System", Date, Day, "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Entry No.")
        {
        }
        key(Key3; "Recurring System", Nonworking, Day, Date)
        {
        }
        key(Key4; "Recurring System", "Day of Year")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Source Type", "Source Code", "Additional Source Code")
        {
        }
    }
}

