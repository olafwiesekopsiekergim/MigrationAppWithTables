table 5012810 "GX Capacity Entries"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00:T100 02.01.13 DEMSR.IST
    //   Table relation of field 10 corrected
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX Capacity Entries';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(5; "Data Type"; Option)
        {
            Caption = 'Data Type';
            OptionMembers = "Row Item","Data Item";
        }
        field(10; "Item ID"; Integer)
        {
            Caption = 'Item ID';
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'set,add,sub';
            OptionMembers = set,add,sub;
        }
        field(30; "Starting DateTime"; DateTime)
        {
            Caption = 'Starting Date Time';
        }
        field(40; "Ending DateTime"; DateTime)
        {
            Caption = 'Ending Date Time';
        }
        field(50; "Normal Capacity"; Decimal)
        {
            Caption = 'Normal Capacity';
        }
        field(60; "Maximum Capacity"; Decimal)
        {
            Caption = 'Maximum Capacity';
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

