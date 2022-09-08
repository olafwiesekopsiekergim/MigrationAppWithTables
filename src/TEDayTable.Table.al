table 5050278 "TE-Day Table"
{
    Caption = 'TE-Day Table';

    fields
    {
        field(1; Number; Integer)
        {
            Caption = 'Number';
        }
        field(2; "Account No"; Code[20])
        {
            Caption = 'Account No';
        }
        field(3; "Part Account No"; Integer)
        {
            Caption = 'Part Account No';
        }
        field(4; "Cost Hotel"; Decimal)
        {
            Caption = 'Cost Hotel';
        }
        field(5; "Cost Breakfast"; Decimal)
        {
            Caption = 'Cost Breakfast';
        }
        field(6; "Type Breakfast"; Option)
        {
            Caption = 'Type Breakfast';
            OptionCaption = ' ,PIK,Flat Rate,Complete';
            OptionMembers = " ",PIK,"Flat Rate",Complete;
        }
        field(7; Breakfast; Boolean)
        {
            Caption = 'Breakfast';
        }
        field(8; "Type Dinner"; Option)
        {
            Caption = 'Type Dinner';
            OptionCaption = ' ,PIK,Flat';
            OptionMembers = " ",PIK,Flat;
        }
        field(9; Dinner; Boolean)
        {
            Caption = 'Dinner';
        }
        field(10; "Type Lunch"; Option)
        {
            Caption = 'Type Lunch';
            OptionCaption = ' ,PIK,Flat';
            OptionMembers = " ",PIK,Flat;
        }
        field(11; Lunch; Boolean)
        {
            Caption = 'Lunch';
        }
        field(12; "Flat Rate Accomodation"; Boolean)
        {
            Caption = 'Flat Rate Accomodation';
        }
        field(13; "Hotel Description"; Text[50])
        {
            Caption = 'Hotel Description';
        }
        field(14; Currency; Code[10])
        {
            Caption = 'Currency';
            TableRelation = Currency;
        }
        field(15; "Currency Rate"; Decimal)
        {
            Caption = 'Currency Rate';
        }
        field(16; Day; Date)
        {
            Caption = 'Day';
        }
        field(17; "Daily Kilometer"; Decimal)
        {
            Caption = 'Daily Kilometer';
        }
        field(18; "Full Accomodation"; Boolean)
        {
            Caption = 'Full Accomodation';
        }
        field(19; "Paid By"; Option)
        {
            Caption = 'Paid By';
            OptionCaption = 'Private,Company,Credit Card 1,Credit Card 2';
            OptionMembers = Privat,Arbeitgeber,"Kreditkarte 1","Kreditkarte 2";
        }
        field(20; "Daily Kilometer Flat"; Boolean)
        {
            Caption = 'Daily Kilometer Flat';
        }
        field(21; "Line No. Hotel"; Integer)
        {
            Caption = 'Line No. Hotel';
        }
        field(22; "Line No. Hotel 2"; Integer)
        {
            Caption = 'Line No. Hotel 2';
        }
        field(23; "Line No. Breakfast Deduction"; Integer)
        {
            Caption = 'Line No. Breakfast Deduction';
        }
        field(24; "Line No. Lunch"; Integer)
        {
            Caption = 'Line No. Lunch';
        }
        field(25; "Line No. Dinner"; Integer)
        {
            Caption = 'Line No. Dinner';
        }
        field(26; "Line No. Accomodation"; Integer)
        {
            Caption = 'Line No. Accomodation';
        }
        field(27; "Global Dimension 1"; Code[20])
        {
            Caption = 'Global Dimension 1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(28; "Global Dimension 2"; Code[20])
        {
            Caption = 'Global Dimension 2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(29; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
            DecimalPlaces = 2 : 2;
        }
        field(30; Accomodation; Boolean)
        {
            Caption = 'Accomodation';
        }
    }

    keys
    {
        key(Key1; Number, "Account No", "Part Account No")
        {
            Clustered = true;
        }
        key(Key2; "Account No", "Part Account No")
        {
        }
    }

    fieldgroups
    {
    }
}

