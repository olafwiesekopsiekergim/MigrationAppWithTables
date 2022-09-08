table 5012608 "QC Test Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:20:1
    //   # OnDelete - delete QC Template Allocation
    //   # Processing Status - OnValidate(), update QC Template Allocation
    //   # Object name changed to "QC Test Header"
    //   # Field 10 "Check List Code" renamed to "QC Template Code"
    //   # Field 180 "QC Typ" renamed to "QC Type Code"
    //   # Field 210 "Check List Application" renamed to "Test Application"
    // 
    // :PMW14.02.01:5:1
    //   # Delete test Item Tracking
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    //   # Fields 210, 300, 400, 410, 420, 430, 440, 450, 460, 470, 480 deleted
    // 
    // #PMW16.00.01:100 02.11.09 DEMSR.IST
    //   New field 190 "QC Status Comment"
    // 
    // #PMW16.00.03:T510 15.09.11 DEMSR.IST
    //   OptionString and OptionCaptions of field "Processing Status" capitalized
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    //   User table variable changed
    //   "Last User ID Status Modified" and "Modified User ID" changed to Code50
    //   OnLookup for "Last User ID Status Modified" and "Modified User ID" changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // PR01 PRODUKT.01:AMP0007 12.06.15 DENUE.SKOL New Field 5292332 "Job No."

    Caption = 'QC Test Header';

    fields
    {
        field(5; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'PrimaryKey';
        }
        field(10; "QC Template Code"; Code[20])
        {
            Caption = 'QC Template Code';
            TableRelation = "QC Template Header";
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
            OptionMembers = Neu,Zertifiziert,"In Entwicklung",Abgelaufen;
        }
        field(130; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(140; "Last Date Status Modified"; Date)
        {
            Caption = 'Last Date Status Modified';
            Editable = false;
        }
        field(150; "Last User ID Status Modified"; Code[50])
        {
            Caption = 'Last User ID Status Modified';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
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
        }
        field(180; "QC Type Code"; Code[20])
        {
            Caption = 'QC Type Code';
            TableRelation = "QC Type";
        }
        field(190; "QC Status Comment"; Text[100])
        {
            Caption = 'QC Status Comment';
        }
        field(500; "Processing Status"; Option)
        {
            Caption = 'Processing Status';
            OptionCaption = 'New,Finished,Cancelled';
            OptionMembers = New,Finished,Cancelled;
        }
        field(5292332; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

