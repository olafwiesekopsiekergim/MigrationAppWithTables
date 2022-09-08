table 5013803 "Variable Option"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:27:01 #Created new table
    // :DMW15.01.00.01:6:01 #Corrected Caption
    // #DMW17.00.00.01:A0015 16.04.13 DEMSR.SSZ
    //   #New function to get "main" variable code for an "array" variable code
    // #DMW17.10.00.01:T500 07.11.13 DEMSR.SSZ
    //   #function GetMainVarCode: New parameter to give back the cut index
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    // #DMW17.10.01:T113 13.10.14 DEMSR.SSZ
    //   #new field "Formula Show Line"
    // #DMW18.00.01:T106 02.06.15 DEMSR.SSZ
    //   #New field "Translation Code"; new function "ShowTranslation"

    Caption = 'Variable Option';
    DataCaptionFields = "Variable Code";

    fields
    {
        field(10; "Variable Code"; Code[30])
        {
            Caption = 'Variable Code';
            NotBlank = true;
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(20; Input; Code[50])
        {
            Caption = 'Input';
        }
        field(30; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; "Option Order"; Integer)
        {
            BlankZero = true;
            Caption = 'Option Order';
        }
        field(112; "Translation Code"; Code[20])
        {
            Caption = 'Translation Code';
            Description = '#DMW18.00.01:T106';
            TableRelation = "Translation Header";
        }
        field(430; "Formula Show Line"; Code[250])
        {
            Caption = 'Formula Show Line';
            Description = '#DMW17.10.01:T113';
        }
    }

    keys
    {
        key(Key1; "Variable Code", Input, Selected)
        {
            Clustered = true;
        }
        key(Key2; "Variable Code", "Option Order")
        {
        }
    }

    fieldgroups
    {
    }
}

