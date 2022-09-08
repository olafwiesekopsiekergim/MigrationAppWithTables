table 5012603 "QC Version"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    //   User table variable changed
    //   "Last User ID Status Modified" and "Modified User ID" changed to Code50
    //   OnLookup for "Last User ID Status Modified" and "Modified User ID" changed
    //   ENU Caption of "Description 2" corrected
    //   Variable names changed/corrected
    // 
    // #PMW17.10.00.02:T502 21.02.14 DEMSR.IST
    //   Function CopyCLLine restructured
    //   TextConsts for function CopyCLLine changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW18.00.00.05:T500 21.05.15 DEMSR.IST
    //   Field length of Description and "Description 2" expanded

    Caption = 'QC Version';
    DataCaptionFields = "QC Template Code", "Version Code";

    fields
    {
        field(10; "QC Template Code"; Code[20])
        {
            Caption = 'QC Template Code';
            NotBlank = true;
            TableRelation = "QC Template Header";
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
        field(200; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
    }

    keys
    {
        key(Key1; "QC Template Code", "Version Code")
        {
            Clustered = true;
        }
        key(Key2; "QC Template Code", "Starting Date")
        {
        }
    }

    fieldgroups
    {
    }
}

