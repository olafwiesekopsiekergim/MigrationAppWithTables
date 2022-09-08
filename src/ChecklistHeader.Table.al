table 5013678 "Checklist Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #Changes in code structure, deleted unused parameter
    // :DMW16.00.00.01:24:01 #"Show line" keeps the value if "Formula Show Line" is empty,
    //                       #and hidden lines will not be checked of mandatory input
    // :DMW16.00.01:21:01 #Changes to manage alphanumeric input
    // :DMW16.00.01.01:46:01 #Correction because Softwaretest
    // #DMW16.00.03.03:A002 06.07.12 DEMSR.SSZ
    //   #Use the field INPUT into update the variable at the formunla interpreter. Otherwise alphanum. values get lost
    //   #Also don't write back anything into the Input field if Type = Text and "Value of Function" is 0, because 0 means <Blank> as text
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID, grammar issues
    // #DMW17.00:T002 14.09.12 DEMSR.SSZ
    //   #New field to manage show/hide sub checklists: 191 "Show Sub-Checklists"
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
    // #DMW17.10.01:T112 09.10.14 DEMSR.SSZ
    //   #New function to get values from linked documents (GetValuesFromDocument) and start it when checklist get calculated

    Caption = 'Checklist Header';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(5; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'PrimaryKey';
        }
        field(10; "Checklist Code"; Code[20])
        {
            Caption = 'Checklist Code';
            TableRelation = "Checklist Header Template";
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
        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
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
            Description = 'PrimaryKey';
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
        field(210; "Calculation Price"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calculation Price';
            Description = 'DMW14.03-02';
            Editable = false;
        }
        field(220; "Calcuation Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Calcuation Weight';
            Description = 'DMW14.03-02';
            Editable = false;
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
        field(270; "Base Changed"; Boolean)
        {
            Caption = 'Base Changed';
            Description = 'DMW14.03-02';
            Editable = false;
        }
        field(300; "Table ID"; Integer)
        {
            Caption = 'Table ID';
        }
    }

    keys
    {
        key(Key1; "No.", "Checklist Type")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

