table 5013550 "Master BOM Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PRODVIEW:DMW15.01:14:01 #New field for "Production View Link"
    // :DMW15.01.00.01:6:01 #Caption corrected
    // :DMW15.02:6:01 #There wasn't a test for manual No. Series
    // :DMW16.00.01:6:01 #Translated Status OptionString
    // #DMW17.00:A001 16.05.12 DEMSR.SSZ
    //   #Changes because of NAV 7, User ID, grammar issue
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T106 01.10.14 DEMSR.SSZ
    //   #Renaming of Master BOM Header is now allowed
    // #DMW18.00.01:T103 21.05.15 DEMSR.SSZ
    //   #New field 1100 "Routing Type"

    Caption = 'Master BOM Header';
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
        field(170; "Last User ID Modified"; Code[50])
        {
            Caption = 'Last User ID Modified';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(200; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(300; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Sales,Technic';
            OptionMembers = Sales,Technic;
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
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

