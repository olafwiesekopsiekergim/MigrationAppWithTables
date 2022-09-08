table 99000780 "Capacity Unit of Measure"
{
    // #RENW16.00:10-001  04.05.09 DEMSR.KHS
    //   Option "Type" extended from Month to Year
    // 
    // #RENW16.00.02:T501 27.08.10 DEMSR.KHS
    //   Error Message for illegal Rate Codes

    Caption = 'Capacity Unit of Measure';

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,100/Hour,Minutes,Hours,Days,,,,,Weeks,Months,Quarters,Years';
            OptionMembers = " ","100/Hour",Minutes,Hours,Days,,,,,Weeks,Months,Quarters,Years;
        }
        field(5000200; "Reference Unit Code (Run)"; Code[10])
        {
            Caption = 'Reference Unit Code (Run)';
            TableRelation = "Reference Unit";
        }
        field(5000201; "Reference Unit Code (Setup)"; Code[10])
        {
            Caption = 'Reference Unit Code (Setup)';
            TableRelation = "Reference Unit";
        }
        field(5072650; "Rental Rate Code"; Boolean)
        {
            Caption = 'Rental Rate Code';
            Description = '#RENW16.00:10-001';
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

