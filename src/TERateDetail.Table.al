table 5050277 "TE-Rate Detail"
{
    Caption = 'TE-Rate Detail';

    fields
    {
        field(1; "TE Voucher Type"; Code[10])
        {
            Caption = 'TE Voucher Type';
            NotBlank = true;
            TableRelation = "TE-Voucher Type";
        }
        field(2; "Expenses Group"; Code[20])
        {
            Caption = 'Expenses Group';
            TableRelation = "TE-Expenses Group";
        }
        field(3; "TE Country"; Code[10])
        {
            Caption = 'TE Country';
            TableRelation = "TE-Country";
        }
        field(4; "Valid From"; Date)
        {
            Caption = 'Valid From';
        }
        field(5; Duration; Integer)
        {
            Caption = 'Duration';
        }
        field(6; Distance; Decimal)
        {
            Caption = 'Distance';
        }
        field(7; "Voucher Type Driving"; Code[10])
        {
            Caption = 'Voucher Type Driving';
            TableRelation = "TE-Voucher Type";
        }
        field(8; "Regular Worktime"; Option)
        {
            Caption = 'Regular Worktime';
            OptionCaption = 'Undefined,Regular,Before/After,Free Day,Before/After+Free Day';
            OptionMembers = Undefined,Regular,"Before/After","Free Day","Before/After+Free Day";
        }
        field(9; "Day Of Journey"; Option)
        {
            Caption = 'Day Of Journey';
            OptionCaption = 'Undefined,First Day,Last Day,Middle Day';
            OptionMembers = Undefined,"First Day","Last Day","Middle Day";
        }
        field(10; "Time of Departure"; Time)
        {
            Caption = 'Time of Departure';
        }
        field(11; Step; Integer)
        {
            Caption = 'Step';
        }
        field(12; "Travel Days"; Option)
        {
            Caption = 'Travel Days';
            OptionCaption = 'Undefined,Single Day,Several Days';
            OptionMembers = Undefined,"Single Day","Several Days";
        }
        field(13; "Maximum Days"; Integer)
        {
            Caption = 'Maximum Days';
        }
        field(20; "Taxfree Amount"; Decimal)
        {
            Caption = 'Taxfree Amount';
        }
        field(21; Surcharge; Decimal)
        {
            Caption = 'Surcharge';
        }
        field(22; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(23; "Currency Surcharge"; Code[10])
        {
            Caption = 'Currency Surcharge';
            TableRelation = Currency;
        }
        field(24; "Alternate Amount"; Decimal)
        {
            Caption = 'Alternate Amount';
        }
        field(25; "Currency Alternate Amount"; Code[10])
        {
            Caption = 'Currency Alternate Amount';
            TableRelation = Currency;
        }
        field(26; "Kilometer Private Car Total"; Decimal)
        {
            Caption = 'Kilometer Private Car Total';
        }
        field(27; "Kilometer Staff Car Total"; Decimal)
        {
            Caption = 'Kilometer Staff Car Total';
        }
        field(28; Difference; Boolean)
        {
            Caption = 'Difference';
        }
        field(61; "Projekt Artikel"; Code[20])
        {
            Caption = 'Job Item';
            TableRelation = Item;
        }
        field(62; "Projektartikel Varianten Code"; Code[10])
        {
            Caption = 'Job Item Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Projekt Artikel"));
        }
        field(63; "Check Accomodation"; Boolean)
        {
            Caption = 'Check Accomodation';
        }
    }

    keys
    {
        key(Key1; "TE Voucher Type", "Expenses Group", "TE Country", "Valid From", Duration, Distance, "Voucher Type Driving", "Regular Worktime", "Day Of Journey", "Time of Departure", "Kilometer Private Car Total", "Kilometer Staff Car Total", Step, "Travel Days", Difference)
        {
            Clustered = true;
        }
        key(Key2; Step)
        {
        }
    }

    fieldgroups
    {
    }
}

