table 5013673 "Checklist Question"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:16:01 #Changes for certification
    // :DMW15.01.00.01:6:01 #corrected Data Type in field 230
    // :DMW16.00:6:01 #Corrected field captions
    // :DMW16.00.00.01:6:01 #Corrected field captions and names
    // #DMW17.00:A001 24.10.12 DEMSR.SSZ
    //   #Grammar issues
    // #DMW17.00:T003 19.09.12 DEMSR.SSZ
    //   #New field 112 "Translation Code"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    // #DMW18.00.01:T108 09.06.15 DEMSR.SSZ
    //   #New field 640: Picture

    Caption = 'Checklist Question';
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
        field(130; "More Answers Possible"; Boolean)
        {
            Caption = 'More Answers Possible';
        }
        field(175; "Input Description"; Text[50])
        {
            Caption = 'Input Description';
            Description = 'DMW13.71.01-01';
            Editable = false;
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
        field(280; "Number of Answers"; Integer)
        {
            CalcFormula = Count ("Checkl. Question/Answer Comb." WHERE (Question = FIELD (Code)));
            Caption = 'Number of Answers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(390; "Not used anymore"; Boolean)
        {
            Caption = 'Not used anymore';
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

