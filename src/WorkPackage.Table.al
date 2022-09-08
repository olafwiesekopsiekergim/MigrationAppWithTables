table 5013792 "Work Package"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Corrected code structure
    // :DMW15.02:6:01 #New function for AssistEdit in field "No."
    // :DMW16.00:99:01 #Filled in LookUpPageID and DrillDownPageID
    // #DMW16.00.03:02:A023 21.03.12 DEMSR.SSZ
    //   #Correct grammatical issues
    // #DMW17.10.00.02:T503 17.02.14 DEMSR.SSZ
    //   #Rename "Saw List" to "Work Package"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Work Package';

    fields
    {
        field(10; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released,Finished';
            OptionMembers = Open,Released,Finished;
        }
        field(120; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(130; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(140; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(150; "Output Quantity"; Decimal)
        {
            Caption = 'Output Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(160; "Scrap Quantity"; Decimal)
        {
            Caption = 'Scrap Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(170; Distribution; Option)
        {
            Caption = 'Distribution';
            OptionCaption = 'Top-Down,Uniform Distribution,Weighted Distribution';
            OptionMembers = "Top-Down","Uniform Distribution","Weighted Distribution";
        }
        field(180; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(190; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(200; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(210; "Qty. Unit of Measure Code"; Code[10])
        {
            Caption = 'Qty. Unit of Measure Code';
        }
        field(220; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Work Center,Machine Center';
            OptionMembers = " ","Work Center","Machine Center";
        }
        field(230; "Center No."; Code[20])
        {
            Caption = 'Center No.';
            TableRelation = IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(240; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(250; "Base Material"; Code[10])
        {
            Caption = 'Base Material';
            TableRelation = "Base Material";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

