table 5072669 "Leasing Agreement Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00.02:R154 20.10.10 DEMSR.KHS
    //   Sales Leasing - Object created
    // 
    // #RENW16.00.02.03:T505 06.04.11 DEMSR.KHS
    //   Captions in Leasing updated
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   delete single primary key field from TableRelation
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Leasing Agreement Archive';

    fields
    {
        field(10; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,,,,,,,Reservation';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,,,,,,,Reservation;
        }
        field(20; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(30; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(40; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(50; "Contract Period"; DateFormula)
        {
            Caption = 'Contract Period';
        }
        field(60; "End Date"; Date)
        {
            Caption = 'End Date';
            Editable = false;
        }
        field(65; "Down Payment"; Decimal)
        {
            Caption = 'Down Payment';
        }
        field(70; "Leasing Rate"; Decimal)
        {
            Caption = 'Leasing Rate';
        }
        field(80; "Rental Rate Code"; Code[10])
        {
            Caption = 'Rental Rate Code';
            TableRelation = "Capacity Unit of Measure" WHERE ("Rental Rate Code" = CONST (true));
        }
        field(90; "Invoice Period"; Option)
        {
            Caption = 'Invoice Period';
            OptionCaption = 'Month,Two Months,Quarter,Half Year,Year,None';
            OptionMembers = Month,"Two Months",Quarter,"Half Year",Year,"None";
        }
        field(100; Prepaid; Boolean)
        {
            Caption = 'Preipaid';
        }
        field(110; "Sales Amount"; Decimal)
        {
            Caption = 'Sales Amount';
        }
        field(150; "Down Payment Order No."; Code[20])
        {
            CalcFormula = Lookup ("Sales Header"."No." WHERE ("Document Type" = CONST (Order),
                                                             "Leasing No." = FIELD ("Agreement No.")));
            Caption = 'Down Payment Order No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160; "Posted Down Payment No."; Code[20])
        {
            CalcFormula = Lookup ("Sales Invoice Header"."No." WHERE ("Leasing No." = FIELD ("Agreement No.")));
            Caption = 'Posted Down Payment No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Agreement No."; Code[10])
        {
            Caption = 'Agreement No.';
            Editable = false;
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(210; "Agreement Date"; Date)
        {
            Caption = 'Agreement Date';
        }
        field(220; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(5047; "Version No."; Integer)
        {
            Caption = 'Version No.';
        }
        field(5048; "Doc. No. Occurrence"; Integer)
        {
            Caption = 'Doc. No. Occurrence';
        }
    }

    keys
    {
        key(Key1; "Document Type", "Document No.", "Doc. No. Occurrence", "Version No.", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

