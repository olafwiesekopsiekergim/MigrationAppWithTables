table 5012601 "QC Template Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW13.71:1:1
    //   # Zusätzliche Felder für QS-Verfolgung
    //   # New field 210 Checklistenverwendung
    //   # New field 220 "QS-Verf.Eink.Lieferung"
    //   # New field 221 "QS-Verf.Eink.Rechnung"
    //   # New field 230 "QS-Verf.Verk.Lieferung"
    //   # New field 231 "QS-Verf.Verk.Rechnung"
    // 
    // :PMW14.02:20:1
    //   # DataCaptionFields = Code,Description
    //   # OnDelete - delete QC Template Allocation
    //   # Field 180 "Type" renamed to "QC Type Code"
    //   # Field 210 "Check List Application" renamed to "Test Application"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    //   # Fields 220, 221, 230, 231, 240 deleted
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    //   User table variable changed
    //   "Last User ID Status Modified" and "Modified User ID" changed to Code50
    //   OnLookup for "Last User ID Status Modified" and "Modified User ID" changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Template Header';
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
            OptionMembers = Neu,Zertifiziert,"In Entwicklung",Abgelaufen;
        }
        field(130; "Version Nos."; Code[10])
        {
            Caption = 'Version Nos.';
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
        field(200; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(210; "Test Application"; Option)
        {
            Caption = 'Test Application';
            OptionCaption = ' ,QC';
            OptionMembers = " ",QC;
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

