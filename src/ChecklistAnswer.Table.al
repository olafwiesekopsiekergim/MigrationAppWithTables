table 5013674 "Checklist Answer"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:16:01 #Changes for certification
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // :DMW16.00.00.01:6:01 #Changed field/option captions and names
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // 
    // #DMW16.00.02.03:A0018 15.06.11 DEMSR.SSZ
    //   #Field 140 "Selection Type" is not longer used
    // #DMW17.00:A001 24.10.12 DEMSR.SSZ
    //   #Grammar issues
    // #DMW17.00:T003 19.09.12 DEMSR.SSZ
    //   #New field 112 "Translation Code"
    // #DMW17.10.00.01:T503 03.12.13 DEMSR.SSZ
    //   #Rounding fields 380 and 381 must be editbale
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    // #DMW18.00.01:T108 09.06.15 DEMSR.SSZ
    //   #New field 640: Picture
    // #DMW18.00.01:T109 10.06.15 DEMSR.SSZ
    //   #Improved field "Component Type" with Work and Machine Center

    Caption = 'Checklist Answer';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(70; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(99; Type; Option)
        {
            Caption = 'Type';
            Description = 'DMW13.71.01-01';
            OptionCaption = 'Answer,Selection Option';
            OptionMembers = Answer,"Selection Option";
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
            Description = 'DMW13.71.01-01';
        }
        field(140; "not used"; Option)
        {
            Caption = 'not used';
            Editable = false;
            Enabled = false;
            OptionCaption = 'Field,next Level';
            OptionMembers = "Field","next Level";
        }
        field(150; "Input Type"; Option)
        {
            Caption = 'Input Type';
            OptionCaption = 'Text,Decimal,Date,Time,Boolean,Integer';
            OptionMembers = Text,Decimal,Date,Time,Boolean,"Integer";
        }
        field(160; Selected; Boolean)
        {
            Caption = 'Selected';
        }
        field(170; Input; Text[50])
        {
            Caption = 'Input';
        }
        field(175; "Input Description"; Text[50])
        {
            Caption = 'Input Description';
            Description = 'DMW13.71.01-01';
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
        field(210; "Mandatory Input"; Boolean)
        {
            Caption = 'Mandatory Input';
        }
        field(220; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(230; "Variable for Dynamic BOM"; Code[30])
        {
            Caption = 'Variable for Dynamic BOM';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(300; "Component Type"; Option)
        {
            Caption = 'Component Type';
            Description = 'DMW14.03-03';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center";
        }
        field(310; "Component Variant Code"; Code[20])
        {
            Caption = 'Component Variant Code';
            Description = 'DMW14.03-03';
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
            Description = 'DMW13.71.01-01';
            TableRelation = "Item Category";
        }
        field(420; "Formula Function"; Code[250])
        {
            Caption = 'Formula Function';
            Description = 'DMW13.71.01-01';
        }
        field(430; "Formula Show Line"; Code[250])
        {
            Caption = 'Formula Show Line';
            Description = 'DMW13.71.01-01';
        }
        field(440; "Value of Function"; Decimal)
        {
            Caption = 'Value of Function';
            Description = 'DMW13.71.01-01';
            Editable = false;
        }
        field(450; "Show Line"; Boolean)
        {
            Caption = 'Show Line';
            Description = 'DMW13.71.01-01';
            InitValue = true;
        }
        field(460; "Value of Function is Default"; Boolean)
        {
            Caption = 'Value of Function is Default';
            Description = 'DMW13.71.01-01';
        }
        field(470; "Always Overwrite"; Boolean)
        {
            Caption = 'Always Overwrite';
            Description = 'DMW13.71.01-01';
        }
        field(480; "Formula Message"; Code[250])
        {
            Caption = 'Formula Message';
            Description = 'DMW13.71.01-01';
        }
        field(500; "Automatic Recalculation"; Boolean)
        {
            Caption = 'Automatic Recalculation';
            Description = 'DMW13.71.01-01';
        }
        field(510; "Sub-Checklist Template Code"; Code[20])
        {
            Caption = 'Sub-Checklist Template Code';
            Description = 'DMW13.71.01-01';
            TableRelation = "Checklist Header Template";
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
            Description = '#DMW18.00.01:T108';
            SubType = Bitmap;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

