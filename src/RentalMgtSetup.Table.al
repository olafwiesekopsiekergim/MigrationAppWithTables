table 5072650 "Rental Mgt. Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001  04.05.09 DEMSR.KHS
    //   Object created
    // 
    // #RENW16.00.01:R053 06.10.09 DEMSR.KHS
    //   Rate Parts
    // 
    // #RENW16.00.01:R055 12.10.09 DEMSR.KHS
    //   3rd Party Rental
    // 
    // #RENW16.00.01:R121 12.10.09 DEMSR.KHS
    //   Rent Quotes
    // 
    // #RENW16.00.01:R052 12.10.09 DEMSR.KHS
    //   Rent Reservation
    // 
    // #RENW16.00.01:R087 15.10.09 DEMSR.KHS
    //   Checklist Templates for Machine Types
    // 
    // #RENW16.00.02:R154 20.10.10 DEMSR.KHS
    //   Sales Leasing
    //   New field: "Leasing Agreement"
    // 
    // #RENW17.00:T100 26.06.12 DEMSR.KHS
    //   Add field: "Rent Cost %"
    //   Add LookUp for Requisition Wksh. Name
    // 
    // #REN7.10:T502 25.10.13 DEMSR.KHS
    //   Correct Size of Text fields to 20 Chars
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   delete single primary key fields from TableRelation
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #RENW18.00:T103 07.01.15 DEMSR.KHS
    //   New Field: "Ext. Doc. No. Mandatory"

    Caption = 'Rental Mgt. Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(8; "Ext. Doc. No. Mandatory"; Boolean)
        {
            Caption = 'Ext. Doc. No. Mandatory';
            Description = '#RENW18.00:T103';
        }
        field(20; "Rental Service Contract Tmpl."; Code[20])
        {
            Caption = 'Rental Service Contract Tmpl.';
            TableRelation = "Service Contract Template";
        }
        field(30; "Serv. Contract Acc. Gr. Code"; Code[10])
        {
            Caption = 'Serv. Contract Acc. Gr. Code';
            TableRelation = "Service Contract Account Group";
        }
        field(40; "Def.Invt. Post. Setup Location"; Code[10])
        {
            Caption = 'Def. Invt. Post. Setup Location';
            TableRelation = "Inventory Posting Setup";
        }
        field(50; "Def. In-Transit Location Code"; Code[10])
        {
            Caption = 'Def. In-Transit Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (true));
        }
        field(55; "Rent Contract Nos."; Code[10])
        {
            Caption = 'Rent Contract Nos.';
            TableRelation = "No. Series";
        }
        field(60; "Service Contract Nos."; Code[10])
        {
            Caption = 'Service Contract Nos.';
            TableRelation = "No. Series";
        }
        field(70; "Contract Invoice Nos."; Code[10])
        {
            Caption = 'Contract Invoice Nos.';
            TableRelation = "No. Series";
        }
        field(80; "Contract Credit Memo Nos."; Code[10])
        {
            Caption = 'Contract Credit Memo Nos.';
            TableRelation = "No. Series";
        }
        field(90; "Contract Inv. Line Text Code"; Code[20])
        {
            Caption = 'Contract Inv. Line Text Code';
            Description = '#REN7.10:T502';
            TableRelation = "Standard Text";
        }
        field(100; "Contract Line Inv. Text Code"; Code[20])
        {
            Caption = 'Contract Line Inv. Text Code';
            Description = '#REN7.10:T502';
            TableRelation = "Standard Text";
        }
        field(110; "Contract Inv. Period Text Code"; Code[20])
        {
            Caption = 'Contract Inv. Period Text Code';
            Description = '#REN7.10:T502';
            TableRelation = "Standard Text";
        }
        field(130; "Prepaid Posting Document Nos."; Code[10])
        {
            Caption = 'Prepaid Posting Document Nos.';
            TableRelation = "No. Series";
        }
        field(140; "Posted Invoice Nos."; Code[10])
        {
            Caption = 'Posted Invoice Nos.';
            TableRelation = "No. Series";
        }
        field(150; "Posted Credit Memo Nos."; Code[10])
        {
            Caption = 'Posted Credit Memo Nos.';
            TableRelation = "No. Series";
        }
        field(160; "Posted Shipment Nos."; Code[10])
        {
            Caption = 'Posted Shipment Nos.';
            TableRelation = "No. Series";
        }
        field(170; "Posted Rental Return Nos."; Code[10])
        {
            Caption = 'Posted Rental Return Nos.';
            TableRelation = "No. Series";
        }
        field(180; "Rent Quote Nos."; Code[10])
        {
            Caption = 'Rent Quote Nos.';
            TableRelation = "No. Series";
        }
        field(190; "Rent Reservation Nos."; Code[10])
        {
            Caption = 'Rent Reservation Nos.';
            TableRelation = "No. Series";
        }
        field(200; "Insert Rate Components"; Option)
        {
            Caption = 'Insert Rate Components';
            Description = '#RENW16.00.01:R053';
            OptionCaption = 'Always,When Price exists';
            OptionMembers = Always,"When Price exists";
        }
        field(210; "External Rental Loc. Code"; Code[10])
        {
            Caption = 'External Rental Loc. Code';
            Description = '#RENW16.00.01:R055';
            TableRelation = Location;
        }
        field(220; "Req. Wksh. Template Name"; Code[10])
        {
            Caption = 'Req. Wksh. Template Name';
            Description = '#RENW16.00.01:R055';
            TableRelation = "Req. Wksh. Template" WHERE (Recurring = CONST (false));
        }
        field(230; "Requisition Wksh. Name"; Code[10])
        {
            Caption = 'Requisition Wksh. Name';
            Description = '#RENW16.00.01:R055';
            TableRelation = "Requisition Wksh. Name".Name WHERE ("Worksheet Template Name" = FIELD ("Req. Wksh. Template Name"));
        }
        field(240; "Posted Rent Return Nos."; Code[10])
        {
            Caption = 'Posted Rent Return Nos.';
            Description = '#RENW16.00.01:R055';
            TableRelation = "No. Series";
        }
        field(250; "Leasing Agreement Nos."; Code[10])
        {
            Caption = 'Leasing Agreement Nos.';
            Description = '#RENW16.00.02:R154';
            TableRelation = "No. Series";
        }
        field(260; "Rent Cost %"; Decimal)
        {
            Caption = 'Rent Cost %';
            DecimalPlaces = 0 : 5;
            Description = '#RENW17.00';
            MaxValue = 100;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

