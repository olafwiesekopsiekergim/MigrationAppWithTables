table 5012602 "QC Template Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW13.71:1:1
    //   # Add. fields 380 "Curvature Precision"
    //   # 381 "Curvature Method"
    //   # 390 "Mandatory Field"
    //   # 400 "Low Limit"
    //   # 401 "Upper Limit"
    // 
    // :PMW14.02.01:5:1
    //   # Code Base Translation
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    //   # Fields 210, 230, 240, 250, 260, 270 deleted
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // #PMW16.00.01:100 02.11.09 DEMSR.IST
    //   New field 300 "Positive Answer"
    //   New field 301 "Question Line No."
    //   New function "GetQuestionLineNo"
    // 
    // #PMW16.00.02.04:T504 10.02.11 DEMSR.IST
    //   Handling of No. validation corrected
    // 
    // #PMW16.00.03:T510 15.09.11 DEMSR.IST
    //   Field 400, Name and ENU-Caption changed to "Lower Limit"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Template Line';

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
            TableRelation = "QC Template Header";
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
            OptionCaption = 'Question,Answer,Headerline,Selection Option';
            OptionMembers = Question,Answer,Headerline,"Selection Option";
        }
        field(105; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST (Question)) "QC Question"
            ELSE
            IF (Type = CONST (Answer)) "QC Answer";
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(120; Section; Integer)
        {
            Caption = 'Section';
            MaxValue = 50;
            MinValue = 0;
        }
        field(130; "More Answers possible"; Boolean)
        {
            Caption = 'More Answers possible';
        }
        field(140; "Selection Type"; Option)
        {
            Caption = 'Selection Type';
            OptionCaption = 'Field,next Section';
            OptionMembers = Feld,"nächste Ebene";
        }
        field(150; "Input Type"; Option)
        {
            Caption = 'Input Type';
            OptionCaption = 'Text,Decimal,Date,Time,Boolean,Integer';
            OptionMembers = Text,Dezimal,Datum,Zeit,Boolean,Ganzzahl;
        }
        field(160; Select; Boolean)
        {
            Caption = 'Select';
        }
        field(170; Input; Text[50])
        {
            Caption = 'Input';
        }
        field(180; Inactiv; Boolean)
        {
            Caption = 'Inactiv';
        }
        field(190; "Description Colour"; Option)
        {
            Caption = 'Description Colour';
            OptionCaption = ' ,black,blue,red,green,yellow';
            OptionMembers = " ",black,blue,red,green,yellow;
        }
        field(200; "Description Bold"; Boolean)
        {
            Caption = 'Description Bold';
        }
        field(220; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(300; "Positive Answer"; Boolean)
        {
            Caption = 'Positive Answer';
            Description = '#PMW16.00.01:100';
        }
        field(301; "Question Line No."; Integer)
        {
            Caption = 'Question Line No.';
            Description = '#PMW16.00.01:100';
        }
        field(380; "Curvature Precision"; Decimal)
        {
            Caption = 'Curvature Precision';
            DecimalPlaces = 0 : 5;
            Description = ':PMW13.71:1:1';
            InitValue = 0.01;
            MinValue = 0;
        }
        field(381; "Curvature Method"; Option)
        {
            Caption = 'Curvature Method';
            Description = ':PMW13.71:1:1';
            OptionCaption = 'Commercial,Round Off,Round Out';
            OptionMembers = "Kaufmännisch",Aufrunden,Abrunden;
        }
        field(390; "Mandatory Field"; Boolean)
        {
            Caption = 'Mandatory Field';
            Description = ':PMW13.71:1:1';
        }
        field(400; "Lower Limit"; Decimal)
        {
            Caption = 'Lower Limit';
            Description = ':PMW13.71:1:1';
        }
        field(401; "Upper Limit"; Decimal)
        {
            Caption = 'Upper Limit';
            Description = ':PMW13.71:1:1';
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

