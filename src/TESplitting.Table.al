table 5050275 "TE-Splitting"
{
    Caption = 'TE-Splittting';

    fields
    {
        field(1; "Table No."; Integer)
        {
            Caption = 'Table No.';
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
        }
        field(3; "Part Account No."; Integer)
        {
            Caption = 'Part Account No.';
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; "Splitting Line No."; Integer)
        {
            Caption = 'Splitting Line No.';
        }
        field(6; "Table-Type"; Option)
        {
            Caption = 'Table-Type';
            OptionCaption = 'Splitting,Part-Travel,Employee';
            OptionMembers = Splitting,"Part-Travel",Employee;
        }
        field(10; "Job-No./Customer"; Code[20])
        {
            Caption = 'Job-No./Customer';
            TableRelation = IF ("Job Integration" = CONST (Job)) Job
            ELSE
            IF ("Job Integration" = CONST (Customer)) Customer;
        }
        field(11; Dimension1; Code[20])
        {
            Caption = 'Dimension1';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(12; Dimension2; Code[20])
        {
            Caption = 'Dimension2';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(13; Dimension3; Code[20])
        {
            Caption = 'Dimension3';
        }
        field(14; Dimension4; Code[20])
        {
            Caption = 'Dimension4';
        }
        field(15; Dimension5; Code[20])
        {
            Caption = 'Dimension5';
        }
        field(16; Dimension6; Code[20])
        {
            Caption = 'Dimension6';
        }
        field(17; Dimension7; Code[20])
        {
            Caption = 'Dimension7';
        }
        field(18; Dimension8; Code[20])
        {
            Caption = 'Dimension8';
        }
        field(20; "G/L Account"; Code[20])
        {
            Caption = 'G/L Account';
        }
        field(21; "Post Type"; Option)
        {
            Caption = 'Post Type';
            Description = ' ,Purchase';
            OptionCaption = ' ,Purchase';
            OptionMembers = " ",Purchase;
        }
        field(22; "Gen. Business Posting Group"; Code[10])
        {
            Caption = 'Gen. Business Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(23; "VAT Business Posting Group"; Code[10])
        {
            Caption = 'VAT Business Posting Group';
            TableRelation = "VAT Business Posting Group";
        }
        field(24; "Gen. Product Posting Group"; Code[10])
        {
            Caption = 'Gen. Product Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(25; "VAT Product Posting Group"; Code[10])
        {
            Caption = 'VAT Product Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
        field(30; Splitting; Decimal)
        {
            Caption = 'Splitting';
        }
        field(31; "Total Amount"; Decimal)
        {
            Caption = 'Total Amount';
            DecimalPlaces = 2 : 2;
        }
        field(32; "Total Amount Job"; Decimal)
        {
            Caption = 'Total Amount Job';
            DecimalPlaces = 2 : 2;
        }
        field(33; "Job Task"; Code[20])
        {
            Caption = 'Job Task';
            TableRelation = "Job Task"."Job Task No." WHERE ("Job No." = FIELD ("Job-No./Customer"));
        }
        field(51; "Date From"; Date)
        {
            Caption = 'Date From';
        }
        field(52; "Time From"; Time)
        {
            Caption = 'Time From';
        }
        field(53; "Date Until"; Date)
        {
            Caption = 'Date Until';
        }
        field(54; "Time Until"; Time)
        {
            Caption = 'Time Until';
        }
        field(55; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "TE-Country";
        }
        field(56; "Travel-Type"; Option)
        {
            Caption = 'Travel-Type';
            OptionCaption = 'Business,Private,Traveltime,Ship,Airplane';
            OptionMembers = Business,Private,Traveltime,Ship,Airplane;
        }
        field(57; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(58; "Job Integration"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Job Integration");
            Caption = 'Job Integration';
            FieldClass = FlowField;
            OptionCaption = 'Job,Customer,Work Order';
            OptionMembers = Job,Customer,"Work Order";
        }
        field(59; "Pay Type Payment"; Code[20])
        {
            Caption = 'Pay Type Payment';
        }
        field(60; "Payroll Version"; Option)
        {
            CalcFormula = Min ("TE-Setup"."Payroll Version");
            Caption = 'Payroll Version';
            FieldClass = FlowField;
            OptionCaption = 'Lessor,Napa';
            OptionMembers = Lessor,Napa;
        }
        field(61; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            TableRelation = "TE-Employee";
        }
        field(62; "Abweichendes Datum von"; Date)
        {
            Caption = 'Variance Date from';
        }
        field(63; "Abweichendes Datum bis"; Date)
        {
            Caption = 'Variance Date to';
        }
        field(64; "Pay Type Payment Reverse"; Code[20])
        {
            Caption = 'Pay Type Payment Reverse';
        }
        field(7000; Hotel; Boolean)
        {
            Caption = 'Hotel';
        }
        field(7001; "Rental Car"; Boolean)
        {
            Caption = 'Rental Car';
        }
        field(7002; Flight; Boolean)
        {
            Caption = 'Flight';
        }
        field(7003; Train; Boolean)
        {
            Caption = 'Train';
        }
        field(7004; "Airport/ Transfer"; Boolean)
        {
            Caption = 'Transfer Airport';
        }
        field(7005; Taxi; Boolean)
        {
            Caption = 'Taxi';
        }
        field(7006; "No. of Nights"; Integer)
        {
            Caption = 'Nights';
        }
        field(7007; "Place Of Accomodation"; Text[50])
        {
            Caption = 'Location';
        }
        field(7008; "Bevorzugte Lage"; Text[50])
        {
            Caption = 'Prefered Location';
        }
        field(7009; "Type of Room"; Option)
        {
            Caption = 'Room Type';
            OptionCaption = 'SR,DR,MR';
            OptionMembers = EZ,DZ,MZ;
        }
        field(7010; Transporter; Boolean)
        {
            Caption = 'Transporter';
        }
        field(7011; "Start Abholadresse"; Text[80])
        {
            Caption = 'Pickup Address';
        }
        field(7012; "Number Of Baggage"; Integer)
        {
            Caption = 'Number Baggage';
        }
        field(7013; "Loading Space"; Text[30])
        {
            Caption = 'Loading Space';
        }
        field(7014; "Departure/ Arrival"; Option)
        {
            Caption = 'Abfahrt/ Ankunft';
            OptionCaption = 'Departure,Arrival';
            OptionMembers = Abfahrt,Ankunft;
        }
        field(7015; Navi; Boolean)
        {
            Caption = 'Satnav';
            InitValue = true;
        }
        field(7016; "Destination Address"; Text[80])
        {
            Caption = 'Returning address';
        }
        field(7017; Cancellable; Boolean)
        {
            Caption = 'Reversable';
        }
        field(7018; "Possible to Change"; Boolean)
        {
            Caption = 'Changeable';
            InitValue = true;
        }
        field(7019; "Nonsmoker/ Smoker"; Option)
        {
            Caption = 'Nonsmoker/ Smoker';
            OptionCaption = 'Non-Smoker,Smoker';
            OptionMembers = Nichtraucher,Raucher;
        }
        field(7020; "Text Rental Car"; Boolean)
        {
            CalcFormula = Exist ("TE-Comment Line" WHERE ("Table ID" = FIELD ("Table No."),
                                                         "Account No." = FIELD ("Account No."),
                                                         "Part Account No." = FIELD ("Part Account No."),
                                                         "Line No." = FIELD ("Line No."),
                                                         "Comment Type" = CONST (Rentalcar)));
            Caption = 'Text Mietwagen';
            FieldClass = FlowField;
        }
        field(7021; "Airport Departure"; Text[30])
        {
            Caption = 'Airport Departure';
        }
        field(7022; "Airport Destination"; Text[30])
        {
            Caption = 'Airport Arrival';
        }
        field(7023; "Station Departure"; Text[30])
        {
            Caption = 'Trainstation Departure';
        }
        field(7024; "Station Destination"; Text[30])
        {
            Caption = 'Trainstation Arrival';
        }
        field(7025; "Arrival after 18 O'Clock"; Boolean)
        {
            Caption = 'Arrival after 6 PM.';
        }
        field(7026; "Place Rental Car Pickup"; Text[100])
        {
            Caption = 'Place Rental Car Pickup';
        }
        field(7027; "Place Rental Car Return"; Text[100])
        {
            Caption = 'Place Rental Car Return';
        }
        field(7028; "Date Rental Car Return"; Date)
        {
            Caption = 'Date Rental Car Return';
            Editable = false;
        }
        field(7029; "Rental Car Pickup Time"; Time)
        {
            Caption = 'Rental Car Pickup Time';
            Editable = false;
        }
        field(7030; "Rental Car Return Date"; Date)
        {
            Caption = 'Rental Car Return Date';
        }
        field(7031; "Rental Car Return Time"; Time)
        {
            Caption = 'Rental Car Return Time';
        }
        field(7032; "With Breakfast"; Boolean)
        {
            Caption = 'With Breakfast';
        }
        field(7033; "Station Waggon"; Boolean)
        {
            Caption = 'Station Waggon';
        }
        field(7034; Winterreifen; Boolean)
        {
        }
        field(7035; "1. Klasse"; Boolean)
        {
            Caption = '1. Class';
        }
        field(7036; "Place Reservation"; Boolean)
        {
            Caption = 'Place Reservation';
            InitValue = true;
        }
        field(7037; "Saloon Coach"; Boolean)
        {
            Caption = 'Saloon Coach';
        }
        field(7038; "Place With Window"; Boolean)
        {
            Caption = 'Place With Window';
        }
        field(7039; "Place With Table"; Boolean)
        {
            Caption = 'Place With Table';
        }
    }

    keys
    {
        key(Key1; "Table No.", "Table-Type", "Account No.", "Part Account No.", "Line No.", "Splitting Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Table No.", "Account No.", "Part Account No.", "Line No.", "Date From", "Time From")
        {
        }
    }

    fieldgroups
    {
    }
}

