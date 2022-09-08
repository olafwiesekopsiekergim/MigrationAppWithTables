table 5013672 "Checklist Version"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #renamed double Variable, corrected TextConstant
    // :DMW16.00.01:79:01 #Replaced Extended Text Box with Text Module (TMW16.00.00.04)
    // #DMW16.00.03:T008 14.09.11 DEMSR.LV Picture available in Checklist Line Templates and Checklist Lines
    // #DMW16.00.03.02:A018 14.02.12 DEMSR.SSZ
    //   #Replaced ":DMW16.00.01:79:01" into the line loop  (#TMW17.10.01:T100: deleted Text Module from this object because no longer needed)
    // #DMW16.00.03.04:A0001 12.12.12 DEMSR.SSZ
    //   #At first test if Version Code isn't empty. Otherwise there is a risk to delete lines in Checklist Template Line
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID, corrected caption in field "Description 2"
    // #DMW17.00:T002 14.09.12 DEMSR.SSZ
    //   #New field to manage show/hide sub checklists: 191 "Show Sub-Checklists"
    // #DMW17.00:T003 26.09.12 DEMSR.SSZ
    //   #New function for translating line descriptions
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Checklist Version';
    DataCaptionFields = "Checklist Code", "Version Code", Description;

    fields
    {
        field(10; "Checklist Code"; Code[20])
        {
            Caption = 'Checklist Code';
            NotBlank = true;
            TableRelation = "Checklist Header Template";
        }
        field(20; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
        }
        field(100; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(110; "Description 2"; Text[30])
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
            Editable = false;
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
        field(200; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
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
        key(Key1; "Checklist Code", "Version Code")
        {
            Clustered = true;
        }
        key(Key2; "Checklist Code", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

