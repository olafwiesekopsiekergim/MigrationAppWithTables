table 5012408 "By-Production Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:171:1
    //   # Usage of item descriptions
    // 
    // :PMW14.02.01:56:1
    //   # Object name changed to By-Production Header
    //   # Object and Variable renaming
    // 
    // BYPRODUCTION:PMW15.00:203:1
    //   # New field 15 "Unit of Measure Code"
    //   # New field 16 "Variant Code"
    //   # New field 17 Status
    //   # New function "CheckUnitOfMeasureChange"
    //   # DataCaptionFields changed to "No.", "Item No.", Description
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW15.00:238:1
    //   # Usage of new data access commands
    // 
    // :PMW16.00:116:1
    //   # Transfer item no. to lines due to transformation (adjustment for lookups)
    // 
    // :PMW16.00:175:1
    //   Check status of by-production
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   PM Integration
    // 
    // #RAW17.00:T116 21.12.12 DEMSR.IST
    //   "Last Modified By" changed to Code50
    //   OnLookup for "Last Modified By" changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'By-Production Header';
    DataCaptionFields = "No.", "Item No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(3; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item."No.";
        }
        field(10; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(12; "Search Name"; Code[30])
        {
            Caption = 'Search Name';
        }
        field(13; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(14; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(15; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            Description = 'BYPRODUCTION:PMW15.00:203:1';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            IF ("Item No." = FILTER ('')) "Unit of Measure".Code;
        }
        field(16; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            Description = 'BYPRODUCTION:PMW15.00:203:1';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(17; Status; Option)
        {
            Caption = 'Status';
            Description = 'BYPRODUCTION:PMW15.00:203:1';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(20; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header";
        }
        field(51; "Series No."; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5060461; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#RAW16.00:T100';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Item No.")
        {
        }
    }

    fieldgroups
    {
    }
}

