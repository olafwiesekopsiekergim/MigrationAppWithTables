table 5012814 "GX Data Item Dependencies"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // :1-H-1-GX:117:2, GX6.00.00.03
    //   # HF3: removed invalid Table Relations on Table 50005
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.01:T501 07.11.13 DEMSR.BKR
    //   Refresh View
    //   Added new Parameter to ExportToBigText
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX Data Item Dependencies';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "From Data Item ID"; Integer)
        {
            Caption = 'From Data Item ID';
        }
        field(20; "From Connector"; Option)
        {
            Caption = 'From Connector';
            OptionMembers = start,"end";
        }
        field(30; "From Duration Offset"; Duration)
        {
            Caption = 'From Duration Offset';
        }
        field(40; "To Data Item ID"; Integer)
        {
            Caption = 'To Data Item ID';
        }
        field(50; "To Connector"; Option)
        {
            Caption = 'To Connector';
            OptionMembers = start,"end";
        }
        field(60; "To Duration Offset"; Duration)
        {
            Caption = 'To Duration Offset';
        }
        field(70; "Hard Link"; Boolean)
        {
            Caption = 'Hard Link';
        }
        field(80; "Min. Duration Distance"; Duration)
        {
            Caption = 'Min. Duration Distance';
        }
        field(90; "Max. Duration Distance"; Duration)
        {
            Caption = 'Max. Duration Distance';
        }
        field(100; "Pen Color"; Integer)
        {
            Caption = 'Pen Color';
            InitValue = 12582912;
        }
        field(110; "Pen Alpha"; Integer)
        {
            Caption = 'Pen Alpha';
            InitValue = 255;
        }
        field(120; "Pen Width"; Decimal)
        {
            Caption = 'Pen Width';
            InitValue = 2;
        }
        field(130; "Pen Style"; Option)
        {
            Caption = 'Pen Style';
            InitValue = Dot;
            OptionMembers = Solid,Dot,Dash,DashDot,DashDotDot;
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

