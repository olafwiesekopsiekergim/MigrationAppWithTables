table 5012609 "QC Test Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:20:1
    //   # Object name changed to "QC Test Line"
    //   # Field 5 "QC Typ" renamed to "QC Type Code"
    //   # Field 10 "Check List Code" renamed to "QC Template Code"
    //   # Field 30 "Check List Line No." renamed to "QC Template Line No."
    // 
    // :PMW14.02.01:5:1
    //   # Code Base Translation
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    //   # Field 20 "Version Code" deleted
    //   # Fields 210, 230, 240, 250, 260, 270 deleted
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // #PMW16.00.01:100 02.11.09 DEMSR.IST
    //   New field 300 "Positive Answer"
    //   New field 301 "Question Line No."
    //   New field 3030 "Data Control Picture"
    // 
    // #PMW16.00.01:104 04.11.09 DEMSR.IST
    //   New function "ShowLineComments"
    //   New field 104 "QC Comment" (FlowField)
    // 
    // #PMW16.00.03:T510 15.09.11 DEMSR.IST
    //   Field 400, Name and ENU-Caption changed to "Lower Limit"
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   Form variable changed to page
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Test Line';

    fields
    {
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5; "QC Type Code"; Code[20])
        {
            Caption = 'QC Type Code';
            TableRelation = "QC Type";
        }
        field(7; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "QC Template Code"; Code[20])
        {
            Caption = 'QC Template Code';
            TableRelation = "QC Template Header";
        }
        field(30; "QC Template Line No."; Integer)
        {
            Caption = 'QC Template Line No.';
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
        field(302; "QC Comment"; Boolean)
        {
            CalcFormula = Exist ("QC Comment Line" WHERE ("Table Name" = CONST ("QC Test Line"),
                                                         "Source ID" = FIELD ("Document No."),
                                                         "Source Line No." = FIELD ("Line No.")));
            Caption = 'QC Comment';
            Description = '#PMW16.00.01:104';
            Editable = false;
            FieldClass = FlowField;
        }
        field(303; "Data Control Picture"; BLOB)
        {
            Caption = 'Data Control Picture';
            Description = '#PMW16.00.01:100';
            SubType = Bitmap;
        }
        field(380; "Curvature Precision"; Decimal)
        {
            Caption = 'Curvature Precision';
            DecimalPlaces = 0 : 5;
            Editable = false;
            InitValue = 0.01;
            MinValue = 0;
        }
        field(381; "Curvature Method"; Option)
        {
            Caption = 'Curvature Method';
            Editable = false;
            OptionCaption = 'commercial,round off,round out';
            OptionMembers = "Kaufmännisch",Aufrunden,Abrunden;
        }
        field(390; "Mandatory Field"; Boolean)
        {
            Caption = 'Mandatory Field';
        }
        field(400; "Lower Limit"; Decimal)
        {
            Caption = 'Lower Limit';
        }
        field(401; "Upper Limit"; Decimal)
        {
            Caption = 'Upper Limit';
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

