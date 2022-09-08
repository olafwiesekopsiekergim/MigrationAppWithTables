table 5012605 "QC Answer"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    //   # Fields 210, 230, 240, 250, 260, 270 deleted
    // 
    // #PMW16.00.01:100 02.11.09 DEMSR.IST
    //   New field 300 "Positiv Answer"
    // 
    // #PMW16.00.03:T510 15.09.11 DEMSR.IST
    //   Field 400, Name and ENU-Caption changed to "Lower Limit"
    // 
    // #PMW17.10.00.02:T503 21.02.14 DEMSR.IST
    //   Field name and caption of Description Colour corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Answer';

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(20; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
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
        field(220; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(300; "Positive Answer"; Boolean)
        {
            Caption = 'Positive Answer';
            Description = '#PMW16.00.01:100';
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
            OptionMembers = commercial,"round off","round out";
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
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

