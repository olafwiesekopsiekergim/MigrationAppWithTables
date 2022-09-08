table 5013679 "Checklist Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:16:01 #Changes for certification
    // :DMW15.01:27:01 #use Variable Options
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #Deleted unused and renamed double Variables, PrimaryKey Field -> NotBlank, created Text Constants
    // :DMW15.02:6:01 #use Variable Options also in field Selected and copy Description into "Input Description"
    // :DMW15.02:64:01
    //   #New Key: "Variable for dynamic BOM",Input
    //   #New Field: 171 "Input (numerical)"
    //   #New Key: "Variable for dynamic BOM","Input (numerical)"
    // :DMW16.00:6:01 #Test Input if "Select Options" were used
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // :DMW16.00.00.01:6:01 #Changed field captions and names
    // :DMW16.00.00.02:24:01 #Replaced function from Form 5013679:
    // :DMW16.00.00.02:24:02 #"Copy Values" only allowed if the Sub Checklist was created by multiply function
    // :DMW16.00.01:21:01 #New field: 445 "Value of Function (alphanum.)"
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // #DMW16.00.03:T008 14.09.11 DEMSR.LV Picture available in Checklist Line Templates and Checklist Lines
    // #DMW17.00:A001 31.05.12 DEMSR.SSZ
    //   #Grammar issue
    //   #Check combination of description color and bold.
    // #DMW17.00:T001 12.09.12 DEMSR.SSZ
    //   #When changing the number of dynamic sub checklists the already existing sub checklists should be solved if the user wants it.
    // #DMW17.00:T002 14.09.12 DEMSR.SSZ
    //   #Make it possible to show sub-checklist direct at the main checklist. So the sorting must be changed. Also manage show/hide the sub checklists
    // #DMW17.00:T003 19.09.12 DEMSR.SSZ
    //   #New field 112 "Translation Code"
    // #DMW17.00.00.01:A0015 16.04.13 DEMSR.SSZ
    //   #If no options were found for "array" variables, try for "main" variable
    //   #Property DrillDownPage set to Page 5013698
    //   #Grammar issue
    // 
    // #DMW17.10.00.01:T500 07.11.13 DEMSR.SSZ
    //   #Completed and corrected #DMW17.00.00.01:A0015, In Sub-Checklists always search for option at the main variable
    // 
    // #DMW17.10.00.02:T500 24.01.14 DEMSR.SSZ
    //   #Wrong text constant was used: Text012 has been replaced by new text constant Text014
    // 
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    // #DMW17.10.01:T105 01.10.14 DEMSR.SSZ
    //   #Created and used new function IndentText to simulate the indentation. Were done because of a more comfortable user interface
    // #DMW17.10.01:T109 06.10.14 DEMSR.SSZ
    //   #New fields 205 "Formula Mandatory Input" and 590 "Mandatory Input Compiled"
    // #DMW17.10.01:T111 08.10.14 DEMSR.SSZ
    //   #use another LookUp page for VariableOptions
    // #DMW17.10.01:T112 09.10.14 DEMSR.SSZ
    //   #New fields (650, 660, 670, 680) to get information from document fields
    //   #New Key: "Get Value from Table ID","Get Value from Field ID"
    // #DMW17.10.01:T113 13.10.14 DEMSR.SSZ
    //   #Now Variable Options have also a Formula Show Line
    // #DMW18.00.01:T106 02.06.15 DEMSR.SSZ
    //   #Get translations for Variable Options
    // #DMW18.00.01:T109 10.06.15 DEMSR.SSZ
    //   #Improved field "Component Type" with Work and Machine Center and check, if the input is plausible
    // 
    // #TMW17.10.01:T100 10.04.14 DEMSR.SSZ new field 5060610 and changed code

    Caption = 'Checklist Line';
    DataCaptionFields = "Document No.", "Checklist Type";

    fields
    {
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(5; "Checklist Type"; Code[20])
        {
            Caption = 'Checklist Type';
            TableRelation = "Checklist Type";
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Checklist Code"; Code[20])
        {
            Caption = 'Checklist Code';
            TableRelation = "Checklist Header Template";
        }
        field(20; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
        }
        field(30; "Checklist Line No."; Integer)
        {
            Caption = 'Checklist Line No.';
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Question,Answer,Headerline,Selection Option';
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
            Editable = false;
            InitValue = 0.01;
            MinValue = 0;
        }
        field(381; "Rounding Method"; Option)
        {
            Caption = 'Rounding Method';
            Editable = false;
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
            Editable = false;
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
            CalcFormula = Exist ("Checklist Message Line" WHERE ("No." = FIELD ("Document No."),
                                                                "Checklist Type" = FIELD ("Checklist Type"),
                                                                "Checkliste Line No." = FIELD ("Line No.")));
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
        field(520; "Belongs to Line No."; Integer)
        {
            Caption = 'Belongs to Line No.';
            Description = 'DMW13.71-01';
        }
        field(530; "Sub-Checklist"; Boolean)
        {
            Caption = 'Sub-Checklist';
            Description = 'DMW13.71-01';
        }
        field(540; "Sub-Checklist Exists"; Boolean)
        {
            CalcFormula = Exist ("Checklist Line" WHERE ("Document No." = FIELD ("Document No."),
                                                        "Checklist Type" = FIELD ("Checklist Type"),
                                                        "Belongs to Line No." = FIELD ("Line No.")));
            Caption = 'Sub-Checklist Exists';
            Description = 'DMW13.71-01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(550; "Free Text"; Boolean)
        {
            Caption = 'Free Text';
            Description = 'DMW13.71-02';
        }
        field(560; "Function Compiled"; Boolean)
        {
            Caption = 'Function Compiled';
            Description = 'DMW14.03-01';
        }
        field(570; "Show Line Compiled"; Boolean)
        {
            Caption = 'Show Line Compiled';
            Description = 'DMW14.03-01';
        }
        field(580; "Message Compiled"; Boolean)
        {
            Caption = 'Message Compiled';
            Description = 'DMW14.03-01';
        }
        field(590; "Mandatory Input Compiled"; Boolean)
        {
            Caption = 'Mandatory Input Compiled';
            Description = '#DMW17.10.01:T109';
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
            Editable = false;
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
            Editable = false;
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
            BlankZero = true;
            Caption = 'Text Set ID';
            Description = '#TMW17.10.01:T100';
            Editable = false;
            TableRelation = "Text Module Header Document"."Text ID";
        }
    }

    keys
    {
        key(Key1; "Document No.", "Checklist Type", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Checklist Type", "Belongs to Line No.", "Line No.")
        {
        }
        key(Key3; "Variable for Dynamic BOM", Input)
        {
        }
        key(Key4; "Variable for Dynamic BOM", "Input (numerical)")
        {
        }
        key(Key5; "Get Value from Table ID", "Get Value from Field ID")
        {
        }
    }

    fieldgroups
    {
    }
}

