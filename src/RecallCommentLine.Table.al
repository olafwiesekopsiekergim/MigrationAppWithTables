table 5034616 "Recall Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R287 27.10.10 DEMSR.KHS
    //   Recall List - Object created
    // 
    // #QMW16.00.02.06:T515 06.05.11 DEMSR.KHS
    //   "SetupNewLine" fixed in Recall Comment Line
    // 
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   replace FIND('-')
    // 
    // #QMW17.10.00.02:T105 24.02.14 DEMSR.KHS
    //   Rename "Callback" to "Recall"
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Recall Comment Line';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Recall,Issued Recall';
            OptionMembers = Recall,"Issued Recall";
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = IF (Type = CONST (Recall)) "Recall Header"
            ELSE
            IF (Type = CONST ("Issued Recall")) "Issued Recall Header";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
        }
        field(5; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(6; Comment; Text[80])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; Type, "No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

