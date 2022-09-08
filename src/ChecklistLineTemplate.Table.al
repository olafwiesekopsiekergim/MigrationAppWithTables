table 5013671 "Checklist Line Template"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:16:01 #Changes for certification
    // :DMW15.01:27:01 #use Variable Options
    // :DMW15.01.00.01:6:01 #Deleted unused and double Variables, replaced Confirm Messages, PrimaryKey Field -> NotBlank
    // :DMW15.02:6:01 #use Variable Options also in field Selected and copy Description into "Input Description"
    // :DMW15.02:64:01 #new field: 171 "Input (numerical)"
    // :DMW16.00:6:01 #Test Input if "Select Options" were used
    // :DMW16.00:99:01 #Changes because of Role Tailored Client, Parameter was deleted
    // :DMW16.00.00.01:6:01 #Changed field/option captions and names
    // :DMW16.00.01:21:01 #New field: 445 "Value of Function (alphanum.)"
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // #DMW16.00.03:T008 14.09.11 DEMSR.LV Picture available in Checklist Line Templates and Checklist Lines
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Grammar issue
    //   #Test Status also to "Closed"
    //   #Check combination of description color and bold.
    // #DMW17.00:T003 19.09.12 DEMSR.SSZ
    //   #New field 112 "Translation Code"
    // #DMW17.00.00.01:A0001 DEMSR.SSZ 15.05.13
    //   #Grammar issue
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 12 -> 32
    // #DMW17.10.01:T109 06.10.14 DEMSR.SSZ
    //   #New field 205 "Formula Mandatory Input"
    // #DMW17.10.01:T112 09.10.14 DEMSR.SSZ
    //   #New fields (650, 660, 670, 680) to get information from document fields
    // #DMW17.10.01:T113 13.10.14 DEMSR.SSZ
    //   #Test for valide Options in LookUp
    // #DMW18.00.01:T106 02.06.15 DEMSR.SSZ
    //   #Show translations for Variable Options
    // #DMW18.00.01:T108 09.06.15 DEMSR.SSZ
    //   #Transfer new BLOB-field Picture
    // #DMW18.00.01:T109 10.06.15 DEMSR.SSZ
    //   #Improved field "Component Type" with Work and Machine Center and check if the input is plausible
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code

    Caption = 'Checklist Line Template';
    DataCaptionFields = "Code", "Version Code", "Line No.";

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Checklist Header Template";
        }
        field(20; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
        }
        field(30; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Question,Answer,Headline,Selection Option';
            OptionMembers = Question,Answer,Headerline,"Selection Option";
        }
        field(105; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Question)) "Checklist Question"
            ELSE
            IF (Type = CONST (Answer)) "Checklist Answer" WHERE (Type = CONST (Answer))
            ELSE
            IF (Type = CONST ("Selection Option")) "Checklist Answer" WHERE (Type = CONST ("Selection Option"));
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(112; "Translation Code"; Code[20])
        {
            Caption = 'Translation Code';
            Description = '#DMW17.00:T003';
            TableRelation = "Translation Header";
        }
        field(115; "Value for Input"; Text[50])
        {
            Caption = 'Value for Input';
        }
        field(120; Level; Integer)
        {
            Caption = 'Level';
            MaxValue = 50;
            MinValue = 0;
        }
        field(130; "More Answers Possible"; Boolean)
        {
            Caption = 'More Answers Possible';
        }
        field(150; "Input Type"; Option)
        {
            Caption = 'Input Type';
            OptionCaption = 'Text,Decimal,Date,Time,Boolean,Integer';
            OptionMembers = Text,Dezimal,Datum,Zeit,Boolean,Ganzzahl;
        }
        field(160; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(170; Input; Text[50])
        {
            Caption = 'Input';
        }
        field(171; "Input (numerical)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Input (numerical)';
            Description = ':DMW15.02:64:01';
            Editable = false;
        }
        field(175; "Input Description"; Text[50])
        {
            Caption = 'Input Description';
            Editable = false;
        }
        field(180; Inactiv; Boolean)
        {
            Caption = 'Inactiv';
        }
        field(190; "Description Color"; Option)
        {
            Caption = 'Description Color';
            OptionCaption = ' ,black,blue,red,green,yellow';
            OptionMembers = " ",black,blue,red,green,yellow;
        }
        field(200; "Description Bold"; Boolean)
        {
            Caption = 'Description Bold';
        }
        field(205; "Formula Mandatory Input"; Code[250])
        {
            Caption = 'Formula Mandatory Input';
            Description = '#DMW17.10.01:T109';
        }
        field(210; "Mandatory Input"; Boolean)
        {
            Caption = 'Mandatory Input';
        }
        field(220; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(230; "Variable for Dynamic BOM"; Code[32])
        {
            Caption = 'Variable for Dynamic BOM';
            TableRelation = "Variable/Attribute Type".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(300; "Component Type"; Option)
        {
            Caption = 'Component Type';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center";
        }
        field(310; "Component Variant Code"; Code[20])
        {
            Caption = 'Component Variant Code';
            TableRelation = IF ("Component Type" = CONST (Item)) "Item Variant".Code WHERE ("Item No." = FIELD (Input));
        }
        field(380; "Rounding Precision"; Decimal)
        {
            Caption = 'Rounding Precision';
            DecimalPlaces = 0 : 5;
            InitValue = 0.01;
            MinValue = 0;
        }
        field(381; "Rounding Method"; Option)
        {
            Caption = 'Rounding Method';
            OptionCaption = 'Commercial,Round off,Round out';
            OptionMembers = Commercial,"Round off","Round out";
        }
        field(390; "Not used anymore"; Boolean)
        {
            Caption = 'Not used anymore';
        }
        field(400; "Low Limit"; Decimal)
        {
            Caption = 'Low Limit';
        }
        field(401; "Upper Limit"; Decimal)
        {
            Caption = 'Upper Limit';
        }
        field(410; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category";
        }
        field(420; "Formula Function"; Code[250])
        {
            Caption = 'Formula Function';
        }
        field(430; "Formula Show Line"; Code[250])
        {
            Caption = 'Formula Show Line';
        }
        field(440; "Value of Function"; Decimal)
        {
            Caption = 'Value of Function';
            Editable = false;
        }
        field(445; "Value of Function (alphanum.)"; Text[50])
        {
            Caption = 'Value of Function (alphanum.)';
            Description = ':DMW16.00.01:21:01';
            Editable = false;
        }
        field(450; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
            InitValue = true;
        }
        field(460; "Value of Function is Default"; Boolean)
        {
            Caption = 'Value of Function is Default';
        }
        field(470; "Always Overwrite"; Boolean)
        {
            Caption = 'Always Overwrite';
        }
        field(480; "Formula Message"; Code[250])
        {
            Caption = 'Formula Message';
        }
        field(490; "Message Exists"; Boolean)
        {
            CalcFormula = Exist ("Checklist Temp. Message Line" WHERE ("Checklist Template Code" = FIELD (Code),
                                                                      "Version Code" = FIELD ("Version Code"),
                                                                      "Checkliste Template Line No." = FIELD ("Line No.")));
            Caption = 'Message Exists';
            Editable = false;
            FieldClass = FlowField;
        }
        field(500; "Automatic Recalculation"; Boolean)
        {
            Caption = 'Automatic Recalculation';
        }
        field(510; "Sub-Checklist Template Code"; Code[20])
        {
            Caption = 'Sub-Checklist Template Code';
            Description = 'DMW13.71-01';
            TableRelation = "Checklist Header Template";
        }
        field(550; "Free Text"; Boolean)
        {
            Caption = 'Free Text';
            Description = 'DMW13.71-02';
        }
        field(600; "Add. Charge/Price Reduction"; Decimal)
        {
            BlankZero = true;
            Caption = 'Add. Charge/Price Reduction';
            Description = 'DMW14.03-03';
        }
        field(610; "Discount Possible"; Boolean)
        {
            Caption = 'Discount Possible';
            Description = 'DMW14.03-03';
        }
        field(620; "Line Discount"; Decimal)
        {
            BlankZero = true;
            Caption = 'Line Discount';
            Description = 'DMW14.03-03';
        }
        field(630; "Add. Weight/Weight Reduction"; Decimal)
        {
            BlankZero = true;
            Caption = 'Add. Weight/Weight Reduction';
            Description = 'DMW14.03-03';
        }
        field(640; Picture; BLOB)
        {
            Caption = 'Picture';
            Description = '#DMW16.00.03:T008';
            SubType = Bitmap;
        }
        field(650; "Get Value from Table"; Option)
        {
            Caption = 'Get Value from Table';
            Description = '#DMW17.10.01:T112';
            OptionCaption = ' ,Sales Header,Sales Line,Construction Header,Purchase Header,Purchase Line,Service Item,Service Header';
            OptionMembers = " ","Sales Header","Sales Line","Construction Header","Purchase Header","Purchase Line","Service Item","Service Header";
        }
        field(660; "Get Value from Table ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Get Value from Table ID';
            Description = '#DMW17.10.01:T112';
            Editable = false;
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(670; "Get Value from Field ID"; Integer)
        {
            BlankZero = true;
            Caption = 'Get Value from Field ID';
            Description = '#DMW17.10.01:T112';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Get Value from Table ID"));
        }
        field(680; "Get Value from Field"; Text[80])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Get Value from Table ID"),
                                                              "No." = FIELD ("Get Value from Field ID")));
            Caption = 'Get Value from Field';
            Description = '#DMW17.10.01:T112';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5060610; "Text Set ID"; Integer)
        {
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Code", "Version Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

