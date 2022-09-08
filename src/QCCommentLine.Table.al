table 5012610 "QC Comment Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW16.00.01:104 04.11.09 DEMSR.IST
    //   Object created
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   "Modified by" changed to Code50
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Comment Line';

    fields
    {
        field(1; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionCaption = ' ,QC Template Header,QC Template Line,QC Test Header,QC Test Line';
            OptionMembers = " ","QC Template Header","QC Template Line","QC Test Header","QC Test Line";
        }
        field(2; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
            NotBlank = true;
            TableRelation = IF ("Table Name" = CONST ("QC Template Header")) "QC Template Header".Code
            ELSE
            IF ("Table Name" = CONST ("QC Template Line")) "QC Template Line".Code
            ELSE
            IF ("Table Name" = CONST ("QC Test Header")) "QC Test Header"."No."
            ELSE
            IF ("Table Name" = CONST ("QC Test Line")) "QC Test Line"."Document No.";
        }
        field(3; "Source Line No."; Integer)
        {
            Caption = 'Source Line No.';
            TableRelation = IF ("Table Name" = CONST ("QC Template Line")) "QC Template Line"."Line No." WHERE (Code = FIELD ("Source ID"))
            ELSE
            IF ("Table Name" = CONST ("QC Test Line")) "QC Test Line"."Line No." WHERE ("Document No." = FIELD ("Source ID"));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
        }
        field(6; "Code"; Code[10])
        {
            Caption = 'Code';
        }
        field(7; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(8; "Modified by"; Code[50])
        {
            Caption = 'Modified by';
        }
        field(9; "Modified Date"; Date)
        {
            Caption = 'Modified Date';
        }
    }

    keys
    {
        key(Key1; "Table Name", "Source ID", "Source Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

