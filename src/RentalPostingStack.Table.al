table 5072657 "Rental Posting Stack"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001     04.05.09 DEMSR.KHS
    //   Object created
    // 
    // #RENW16.00.00.01:T510 09.07.09 DEMSR.KHS
    //   Key added "Bill-to Customer No.","Combine Invoices" ...
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // #RENW16.00.02.03:T508 15.04.11 DEMSR.KHS
    //   Filter added for delete
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   ENU caption of Source Subtype fixed
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental Posting Stack';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source Subtype"; Option)
        {
            Caption = 'Source Subtype';
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10,11';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10","11";
        }
        field(12; "Source ID"; Code[20])
        {
            Caption = 'Source ID';
        }
        field(13; "Source Batch Name"; Code[10])
        {
            Caption = 'Source Batch Name';
        }
        field(14; "Source Prod. Order Line"; Integer)
        {
            Caption = 'Source Prod. Order Line';
        }
        field(15; "Source Ref. No."; Integer)
        {
            Caption = 'Source Ref. No.';
        }
        field(20; "Bill-to Customer No."; Code[20])
        {
            Caption = 'Bill-to Customer No.';
            TableRelation = Customer;
        }
        field(30; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            TableRelation = "Sales Header"."No." WHERE ("Rental Contract" = CONST (true),
                                                        "Document Type" = CONST (Order));
        }
        field(40; "Rent Order Line No."; Integer)
        {
            Caption = 'Sales Order Line No.';
        }
        field(50; "Due Date"; Date)
        {
            Caption = 'Due Date';
        }
        field(60; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Sales,Contract';
            OptionMembers = " ",Sales,Contract;
        }
        field(70; "Invoice From"; Date)
        {
            Caption = 'Invoice From';
        }
        field(80; "Invoice To"; Date)
        {
            Caption = 'Invoice To';
        }
        field(90; "Credit Memo"; Boolean)
        {
            Caption = 'Credit Memo';
        }
        field(100; "Contained in Serv. Inv. No."; Code[20])
        {
            Caption = 'Contained in Serv. Inv. No.';
        }
        field(105; "Contained in Serv. Inv.LineNo."; Integer)
        {
            Caption = 'Contained in Serv. Inv.LineNo.';
        }
        field(110; "Posted Invoice No."; Code[20])
        {
            Caption = 'Posted Invoice No.';
        }
        field(120; "Combine Invoices"; Boolean)
        {
            Caption = 'Combine Invoices';
        }
        field(130; "Quantity to Invoice"; Decimal)
        {
            Caption = 'Quantity to Invoice';
        }
        field(140; "Credit Amount %"; Decimal)
        {
            Caption = 'Credit Amount %';
        }
        field(150; "Failure No."; Integer)
        {
            Caption = 'Failure No.';
            TableRelation = "Rental Failure";
        }
        field(160; "Discount %"; Decimal)
        {
            Caption = 'Discount %';
        }
        field(170; Open; Boolean)
        {
            Caption = 'Open';
            InitValue = true;
        }
        field(180; Incident; Option)
        {
            Caption = 'Incident';
            OptionCaption = 'Contract,Failure,Return,Invoice,Credit Memo';
            OptionMembers = Contract,Failure,Return,Invoice,"Credit Memo";
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Rent Order No.", "Rent Order Line No.", Type, "Due Date", "Credit Memo")
        {
        }
        key(Key3; "Failure No.")
        {
        }
        key(Key4; "Bill-to Customer No.", "Combine Invoices", "Rent Order No.", "Rent Order Line No.", Type, "Due Date", "Credit Memo")
        {
        }
    }

    fieldgroups
    {
    }
}

