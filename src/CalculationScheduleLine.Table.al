table 5012652 "Calculation Schedule Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.00:504 DEMSR.KHS
    //   TestTableRelation set to "No" in field "Totaling"
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #CAW17.10.01:T101 01.08.14 DEMSR.IST
    //   Transfer Unit Cost to Sales Line
    //   Field "Value Transfer Option", option Standard Cost changed to Standard Cost/Unit Cost
    // 
    // #CAW17.10.01.01:T500 25.11.2014 DEMSR.KHS
    //   Fix TableRelation for "Totaling" to avoid error message OnValidate after Lookup of Calculation Group
    // 
    // #DMW17.10.00.01:T101 12.11.13 DEMSR.SSZ
    //   #New Totaling Type: "Arithm. Formula"
    //   #Renamed option "Formula" to "Sum"
    // 
    // PRCA01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|calculation for cc|project
    //                                     Field changed
    //                                     - Totaling Type
    //                                       - OptionString increased with ",,,,Job Calculation Group"
    //                                     - Totaling
    //                                       - Increased Tablerelation for Job Calculaiton Group
    // PRCA02 PRODUKT.01:AMP0013 12.06.15 DENUE.ALAN Revised

    Caption = 'Calculation Schedule Line';

    fields
    {
        field(1; "Calculation Schedule No."; Code[20])
        {
            Caption = 'Calculation Schedule No.';
            NotBlank = true;
            TableRelation = "Calculation Schedule Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Row No."; Code[10])
        {
            Caption = 'Row No.';
        }
        field(4; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(5; "Totaling Type"; Option)
        {
            Caption = 'Totaling Type';
            OptionCaption = ' ,Charge,Sum,Arithm. Formula,Item Calc. Group,Capacity Calc. Group,,,,Job Calculation Group';
            OptionMembers = " ",Charge,"Sum","Arithm. Formula","Item Calc. Group","Capacity Calc. Group",,,,"Job Calculation Group";
        }
        field(6; Totaling; Text[50])
        {
            Caption = 'Totaling';
            Description = '#CAW17.10.01.01:T500,PRCA8.00.04';
            TableRelation = IF ("Totaling Type" = CONST (Charge)) "Calculation Charge"
            ELSE
            IF ("Totaling Type" = CONST ("Item Calc. Group")) "Calculation Group".Code WHERE (Type = CONST (Item))
            ELSE
            IF ("Totaling Type" = CONST ("Capacity Calc. Group")) "Calculation Group".Code WHERE (Type = CONST (Capacity))
            ELSE
            IF ("Totaling Type" = CONST ("Job Calculation Group")) "PR - Job Calc. Group";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(7; "Reference to Row No."; Code[10])
        {
            Caption = 'Reference to Row No.';
        }
        field(10; "Charge Editable"; Boolean)
        {
            Caption = 'Charge Editable';
        }
        field(13; "Calculate Foreign Currency"; Boolean)
        {
            Caption = 'Calculate Foreign Currency';
        }
        field(14; "Calculation View Authorization"; Option)
        {
            Caption = 'Calculation View Authorization';
            OptionCaption = ' ,Level 1,Level 2,Level 3,Level 4,Level 5';
            OptionMembers = " ","Level 1","Level 2","Level 3","Level 4","Level 5";
        }
        field(20; "Value Transfer Option"; Option)
        {
            Caption = 'Value Transfer Option';
            OptionCaption = ' ,Standard Cost/Unit Cost,Unit Price,Sales Line Discount';
            OptionMembers = " ","Standard Cost/Unit Cost","Unit Price","Sales Line Discount";
        }
        field(30; "Calculation Sequence"; Integer)
        {
            Caption = 'Calculation Sequence';
        }
        field(100; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(101; Indentation; Integer)
        {
            Caption = 'Indentation';
        }
    }

    keys
    {
        key(Key1; "Calculation Schedule No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Calculation Schedule No.", "Totaling Type")
        {
        }
        key(Key3; "Calculation Schedule No.", "Calculation Sequence")
        {
        }
    }

    fieldgroups
    {
    }
}

