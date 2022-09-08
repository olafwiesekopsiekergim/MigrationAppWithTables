table 5012809 "GX Row Item"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00.00.02:T501 07.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW16.00
    //   new field: 5012700 "Hide Jobs"
    //   new field: 5012705 "Parent Row ID"
    //   new field: 5012710 "Location Code"
    //   new field: 5012715 "Visible"
    //   new function: FindLastRecord
    // 
    // Field Nos. changed
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.00.00.02:T101 29.05.13 DEMSR.KHS
    //   Update Object IDs

    Caption = 'GX Row Item';

    fields
    {
        field(1; ID; Integer)
        {
            Caption = 'ID';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'RowItem,Separator';
            OptionMembers = RowItem,Separator;
        }
        field(20; Caption; Text[250])
        {
            Caption = 'Caption';
        }
        field(30; Height; Integer)
        {
            Caption = 'Height';
            InitValue = -1;
        }
        field(40; Pattern; Code[20])
        {
            Caption = 'Pattern';
            TableRelation = "GX Pattern";
        }
        field(50; GUID; Guid)
        {
            Caption = 'GUID';
            Description = 'Context information';
        }
        field(60; "Record ID"; RecordID)
        {
            Caption = 'Record ID';
            Description = 'Context information';
        }
        field(70; "Render Capacities"; Boolean)
        {
            Caption = 'Render Capacities';
        }
        field(80; "Record Table ID"; Integer)
        {
            Caption = 'Record Table ID';
            Description = 'Context information';
        }
        field(90; "Record Position"; Text[250])
        {
            Caption = 'Record Position';
            Description = 'Context information';
        }
        field(100; "Capacity Render Mode"; Option)
        {
            Caption = 'Capacity Render Mode';
            OptionCaption = 'Normal,Days,Weeks,Months';
            OptionMembers = Normal,Days,Weeks,Months;
        }
        field(105; "Capacity Period Offset"; Integer)
        {
            Caption = 'Capacity Period Offset';
        }
        field(110; "Capacity Caption Mask"; Text[50])
        {
            Caption = 'Capacity Caption Mask';
        }
        field(5072650; "Hide Jobs"; Boolean)
        {
            Description = 'RENW16.00.01';
        }
        field(5072651; "Parent Row ID"; Integer)
        {
            Description = 'RENW16.00.01';
        }
        field(5072652; "Location Code"; Code[10])
        {
            Description = 'RENW16.00.01';
            TableRelation = Location.Code;
        }
        field(5072653; Visible; Boolean)
        {
            Description = 'RENW16.00.01';
            InitValue = true;
        }
    }

    keys
    {
        key(Key1; ID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

