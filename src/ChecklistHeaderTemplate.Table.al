table 5013670 "Checklist Header Template"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #corrected TextConstant, deleted unused parameter
    // :DMW16.00:6:01 #Function GetVARFromChecklistTemplate got second parameter
    // :DMW16.00.00.01:24:01 #"Show line" keeps the value if "Formula Show Line" is empty
    // :DMW16.00.01:6:01 #Translated OptionString in field Status
    // :DMW16.00.01:21:01 #Changes to manage alphanumeric input
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.03.03:A002 06.07.12 DEMSR.SSZ
    //   #Use the field INPUT into update the variable at the formunla interpreter. Otherwise alphanum. values get lost
    //   #Also don't write back anything into the Input field if Type = Text and "Value of Function" is 0, because 0 means <Blank> as text
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID
    // #DMW17.00:T002 14.09.12 DEMSR.SSZ
    //   #New field to manage show/hide sub checklists: 191 "Show Sub-Checklists"
    // #DMW17.00:T003 26.09.12 DEMSR.SSZ
    //   #New function for translating line descriptions
    // #DMW17.00.00.01:A0001 15.05.13 DEMSR.SSZ Codereview; fill out "Version Nos." with value from setup table
    // #DMW17.10.00.02:T506 26.03.14 DEMSR.SSZ
    //   #Generated message could include double lines so the variable array must be cleared
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T503 15.09.15 DEMSR.SSZ
    //   #Alphanumeric Values were not used at Prototypes
    // #DMW17.10.01:T102 30.09.14 DEMSR.SSZ
    //   #Increased Variable Code from Code10 -> 30
    // #DMW17.10.01:T104 01.10.14 DEMSR.SSZ
    //   #new field 192 "Open Immediately"
    // #DMW17.10.01:T109 06.10.14 DEMSR.SSZ
    //   #Calculate new field "Formula Mandatory Input"

    Caption = 'Checklist Header Template';
    DataCaptionFields = "Code", Description;

    fields
    {
        field(10; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(100; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(110; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(120; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(130; "Version Nos."; Code[10])
        {
            Caption = 'Version Nos.';
            TableRelation = "No. Series";
        }
        field(140; "Last Status Modified Date"; Date)
        {
            Caption = 'Last Status Modified Date';
            Editable = false;
        }
        field(150; "Last Status Modified User ID"; Code[50])
        {
            Caption = 'Last Status Modified User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(160; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(170; "Modified User ID"; Code[50])
        {
            Caption = 'Modified User ID';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(180; "Checklist Type"; Code[20])
        {
            Caption = 'Checklist Type';
            TableRelation = "Checklist Type";
        }
        field(190; "Automatic Recalculation"; Boolean)
        {
            Caption = 'Automatic Recalculation';
        }
        field(191; "Show Sub-Checklists"; Boolean)
        {
            Caption = 'Show Sub-Checklists';
            Description = '#DMW17.00:T002';
        }
        field(192; "Open Immediately"; Boolean)
        {
            Caption = 'Open Immediately';
            Description = '#DMW17.10.01:T104';
        }
        field(200; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(210; "Calculation Price"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Price';
            Description = 'DMW14.03-02';
        }
        field(220; "Calcuation Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calcuation Weight';
            Description = 'DMW14.03-02';
        }
        field(230; "Calculation Price Base"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Price Base';
            Description = 'DMW14.03-02';
        }
        field(240; "Calculation Weight Base"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Weight Base';
            Description = 'DMW14.03-02';
        }
        field(250; "Discount %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Discount %';
            Description = 'DMW14.03-02';
        }
        field(260; "In LCY"; Boolean)
        {
            Caption = 'In LCY';
            Description = 'DMW14.03-02';
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

