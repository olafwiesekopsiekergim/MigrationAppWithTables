table 5013552 "Master BOM Version"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PRODVIEW:DMW15.01:14:01 #New field for Production View
    // :DMW15.01:59:01 #filled in KeyGroups
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank, corrected Caption
    // :DMW16.00.00.02:24:01 #Because "Version Code" gets filled out by no. series, NotBlank must be <No>
    // #DMW16.00.03.04:A0001 12.12.12 DEMSR.SSZ
    //   #At first test if Version Code isn't empty. Otherwise there is a risk to delete lines in Master BOM Line
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.01:T103 21.05.15 DEMSR.SSZ
    //   #New field 1100 "Routing Type"

    Caption = 'Master BOM Version';
    DataCaptionFields = "BOM Code", "Version Code";

    fields
    {
        field(10; "BOM Code"; Code[20])
        {
            Caption = 'BOM Code';
            TableRelation = "Master BOM Header";
        }
        field(20; "Version Code"; Code[20])
        {
            Caption = 'Version Code';
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
        field(200; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(310; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(320; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure".Code;
        }
        field(910; "Production View Link"; Code[10])
        {
            Caption = 'Production View Link';
            Description = 'PRODVIEW:DMW15.01:14:01';
            TableRelation = "Production View Link";
        }
        field(1100; "Routing Type"; Option)
        {
            Caption = 'Routing Type';
            Description = '#DMW18.00.01:T103';
            OptionCaption = 'Serial,Parallel';
            OptionMembers = Serial,Parallel;
        }
    }

    keys
    {
        key(Key1; "BOM Code", "Version Code")
        {
            Clustered = true;
        }
        key(Key2; "BOM Code", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

