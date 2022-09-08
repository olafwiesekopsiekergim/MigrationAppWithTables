table 5012658 "Calculation Protocol Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Calculation Protocol';
    DataCaptionFields = Type, "No.";

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Calculation Schedule,Calculation';
            OptionMembers = " ","Calculation Schedule",Calculation;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = IF (Type = CONST ("Calculation Schedule")) "Calculation Schedule Header"."No."
            ELSE
            IF (Type = CONST (Calculation)) "Calculation Header"."No.";
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Note,Warning,Exception';
            OptionMembers = " ",Note,Warning,Exception;
        }
        field(5; Reference; Text[30])
        {
            Caption = 'Reference';
        }
        field(6; Text; Text[250])
        {
            Caption = 'Text';
        }
        field(7; "Text 2"; Text[250])
        {
            Caption = 'Text 2';
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

