table 5012412 "Personnel Available Entry"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Personnel Available Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
            Caption = 'Entry No.';
        }
        field(2; Date; Date)
        {
            Caption = 'Date';
        }
        field(3; "Shop Calendar Code"; Code[10])
        {
            Caption = 'Shop Calendar Code';
            TableRelation = "Shop Calendar";
        }
        field(4; "Work Shift Code"; Code[10])
        {
            Caption = 'Work Shift Code';
            TableRelation = "Work Shift";
        }
        field(5; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Setup,Run';
            OptionMembers = Setup,Run;
        }
        field(6; "Number of Personnel"; Decimal)
        {
            BlankZero = true;
            Caption = 'Number of Personnel';
            DecimalPlaces = 0 : 2;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; Date, "Shop Calendar Code", "Work Shift Code", Type)
        {
            SumIndexFields = "Number of Personnel";
        }
    }

    fieldgroups
    {
    }
}

