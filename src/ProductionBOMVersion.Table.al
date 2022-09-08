table 99000779 "Production BOM Version"
{
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //           Create as separate module
    //    - Added field Last Modified by
    //    - Added Code
    // 
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #PMW17.10.00.02:T101 10.04.2014 DEMSR.IST
    //   Delete Ingredients
    //   Check Ingredients if status is changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RAW18.00.00.01:T500 11.06.15 DEMSR.BKR
    //   Local and Global Variable had the same name

    Caption = 'Production BOM Version';
    DataCaptionFields = "Production BOM No.", "Version Code", Description;

    fields
    {
        field(1; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            NotBlank = true;
            TableRelation = "Production BOM Header";
        }
        field(2; "Version Code"; Code[10])
        {
            Caption = 'Version Code';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(21; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(22; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(45; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(50; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5012400; "Max. Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation %';
            DecimalPlaces = 0 : 2;
            Description = ':PMW14.02:55:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5060465; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#RAW16.00:T100';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Production BOM No.", "Version Code")
        {
            Clustered = true;
        }
        key(Key2; "Production BOM No.", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

