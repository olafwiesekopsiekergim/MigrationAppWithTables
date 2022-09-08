table 5012604 "QC Question"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    //   # Fields 210, 230, 240, 250, 260, 270 deleted
    // 
    // #PMW17.10.00.02:T503 21.02.14 DEMSR.IST
    //   Field name and caption of Description Colour corrected
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Question';

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
        field(280; "Number of Answers"; Integer)
        {
            CalcFormula = Count ("QC Question/Answer Combi." WHERE (Question = FIELD (Code)));
            Caption = 'Number of Answers';
            Editable = false;
            FieldClass = FlowField;
        }
        field(390; "Mandatory Field"; Boolean)
        {
            Caption = 'Mandatory Field';
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

