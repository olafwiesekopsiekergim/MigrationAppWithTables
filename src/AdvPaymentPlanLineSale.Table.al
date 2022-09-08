table 5013505 "Adv. Payment Plan Line Sale"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #PrimaryKey Field -> NotBlank
    // :DMW16.00:6:01 #Description must be copied instead of the Code
    // :DMW16.00:99:01 #Changes because of Role Tailored Client
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        OptionString of field Type extended: ,,,,,Measurement

    Caption = 'Advance Payment Plan Line Sale';

    fields
    {
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'APTW:DMW15.01:58:01';
            NotBlank = true;
            TableRelation = "Adv. Payment Plan Header Sale";
        }
        field(20; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(30; Modality; Code[10])
        {
            Caption = 'Modality';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Advance Payment Modality".Code WHERE (Division = CONST (Sale));
        }
        field(40; Description; Text[30])
        {
            Caption = 'Description';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(50; Type; Option)
        {
            Caption = 'Type';
            Description = 'APTW:DMW15.01:58:01';
            OptionCaption = 'Percent,Absolute,,,,,Measurement';
            OptionMembers = Percent,Absolute,,,,,Measurement;
        }
        field(60; Value; Decimal)
        {
            Caption = 'Value';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(70; Amount; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Amount';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(80; Secured; Boolean)
        {
            Caption = 'Secured';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(85; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = Currency;
        }
        field(90; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            MinValue = 0;
        }
        field(100; Invoice; Boolean)
        {
            Caption = 'Invoice';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(110; Invoiced; Boolean)
        {
            Caption = 'Invoiced';
            Description = 'APTW:DMW15.01:58:01';
            Editable = true;
        }
        field(120; "Posting Date"; Date)
        {
            Caption = 'Invoice Date';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(130; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Payment Terms";
        }
        field(140; "Due Date"; Date)
        {
            Caption = 'Due Date';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(150; "Unposted Invoices"; Integer)
        {
            CalcFormula = Count ("Sales Header" WHERE ("Document Type" = CONST (Invoice),
                                                      "No." = FIELD ("Unposted Invoice No."),
                                                      "Advance Payment" = CONST (true),
                                                      "Advance Payment No." = FIELD ("Document No."),
                                                      "Advance Payment Type" = CONST ("Advance Payment Request Sale")));
            Caption = 'Unposted Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160; "Posted Invoices"; Integer)
        {
            CalcFormula = Count ("Sales Invoice Header" WHERE ("No." = FIELD ("Posted Invoice No."),
                                                              "Pre-Assigned No." = FIELD ("Unposted Invoice No."),
                                                              "Advance Payment" = CONST (true),
                                                              "Advance Payment No." = FIELD ("Document No."),
                                                              "Advance Payment Type" = CONST ("Advance Payment Request Sale")));
            Caption = 'Posted Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(170; "Unposted Invoice No."; Code[20])
        {
            Caption = 'Unposted Invoice No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = CONST (Invoice));
        }
        field(180; "Posted Invoice No."; Code[20])
        {
            Caption = 'Posted Invoice No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Sales Invoice Header"."No.";
        }
        field(190; Open; Boolean)
        {
            CalcFormula = Lookup ("Cust. Ledger Entry".Open WHERE ("Document Type" = CONST (Invoice),
                                                                  "Advance Payment" = CONST (true),
                                                                  "Advance Payment Type" = CONST ("Advance Payment Request Sale"),
                                                                  "Advance Payment No." = FIELD ("Document No."),
                                                                  "Document No." = FIELD ("Posted Invoice No.")));
            Caption = 'Open';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Document No.", "Line No.")
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Document No.", "Unposted Invoice No.", "Posted Invoice No.")
        {
        }
    }

    fieldgroups
    {
    }
}

