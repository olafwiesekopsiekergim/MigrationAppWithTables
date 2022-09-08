table 5012664 "Calculation Line Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW17.00:302 13.08.12 DEMSR.KHS
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #CAW17.10.01:T101 01.08.14 DEMSR.IST
    //   Transfer Unit Cost to Sales Line
    //   Field "Value Transfer Option", option Standard Cost changed to Standard Cost/Unit Cost
    // 
    // #DMW17.10.00.01:T101 12.11.13 DEMSR.SSZ
    //   #New Totaling Type: "Arithm. Formula"
    //   #Renamed option "Formula" to "Sum"

    Caption = 'Calculation Line Archive';

    fields
    {
        field(1; "Calculation No."; Code[20])
        {
            Caption = 'Calculation No.';
            NotBlank = true;
            TableRelation = "Calculation Header"."No.";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Row No."; Code[10])
        {
            Caption = 'Row No.';
            Editable = false;
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(5; "Totaling Type"; Option)
        {
            Caption = 'Totaling Type';
            Editable = false;
            OptionCaption = ' ,Charge,Sum,Arithm. Formula,Item Calc. Group,Capacity Calc. Group';
            OptionMembers = " ",Charge,"Sum","Arithm. Formula","Item Calc. Group","Capacity Calc. Group";
        }
        field(6; Totaling; Text[50])
        {
            Caption = 'Totaling';
            Editable = false;
            TableRelation = IF ("Totaling Type" = CONST (Charge)) "Calculation Charge"
            ELSE
            IF ("Totaling Type" = CONST ("Item Calc. Group")) "Calculation Group".Code WHERE (Type = CONST (Item))
            ELSE
            IF ("Totaling Type" = CONST ("Capacity Calc. Group")) "Calculation Group".Code WHERE (Type = CONST (Capacity));
        }
        field(7; "Reference to Row No."; Code[10])
        {
            Caption = 'Reference to Row No.';
            Editable = false;
        }
        field(10; "Charge editable"; Boolean)
        {
            Caption = 'Charge editable';
            Editable = false;
        }
        field(11; "Charge Type"; Option)
        {
            Caption = 'Charge Type';
            OptionCaption = ' ,Absolute,Percent';
            OptionMembers = " ",Absolute,Percent;
        }
        field(12; "Charge Rate"; Decimal)
        {
            BlankZero = true;
            Caption = 'Charge Rate';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Calculate Foreign Currency"; Boolean)
        {
            Caption = 'Calculate Foreign Currency';
            Editable = false;
        }
        field(14; "Calculation View Authorization"; Option)
        {
            Caption = 'Calculation View Authorization';
            OptionCaption = ' ,Level 1,Level 2,Level 3,Level 4,Level 5';
            OptionMembers = " ","Level 1","Level 2","Level 3","Level 4","Level 5";
        }
        field(15; "Type of Charge Reference Value"; Option)
        {
            Caption = 'Type of Charge Reference Value';
            OptionCaption = ' ,Basic Value,Reduced Basic Value';
            OptionMembers = " ","Basic Value","Reduced Basic Value";
        }
        field(20; "Value Transfer Option"; Option)
        {
            Caption = 'Value Transfer Option';
            Editable = false;
            OptionCaption = ' ,Standard Cost/Unit Cost,Unit Price,Sales Line Discount';
            OptionMembers = " ","Standard Cost/Unit Cost","Unit Price","Sales Line Discount";
        }
        field(21; "Value (LCY)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Value (LCY)';
            Editable = false;
        }
        field(22; Value; Decimal)
        {
            BlankZero = true;
            Caption = 'Value';
            Editable = false;
        }
        field(23; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Editable = false;
            TableRelation = Currency;
        }
        field(30; "Calculation Sequence"; Integer)
        {
            Caption = 'Calculation Sequence';
        }
        field(100; Bold; Boolean)
        {
            Caption = 'Bold';
            Editable = false;
        }
        field(101; Indentation; Integer)
        {
            Caption = 'Indentation';
            Editable = false;
        }
        field(5047; "Reference Version No."; Integer)
        {
            Caption = 'Reference Version No.';
        }
        field(5048; "Ref. Doc. No. Occurrence"; Integer)
        {
            Caption = 'Ref. Doc. No. Occurrence';
        }
    }

    keys
    {
        key(Key1; "Calculation No.", "Ref. Doc. No. Occurrence", "Reference Version No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Calculation No.", "Totaling Type")
        {
        }
        key(Key3; "Calculation No.", "Calculation Sequence")
        {
        }
    }

    fieldgroups
    {
    }
}

