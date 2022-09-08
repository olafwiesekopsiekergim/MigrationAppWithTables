table 5013509 "Adv. Payment Plan Header Pur."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01.00.01:6:01 #FlowField mustn't be editable
    // APTW:DMW16.00:6:01 #Increased Name- and Adress-fields from Code 30 to Code 50
    // #APTW17.00.00.01:A001 05.08.2013 DEMSR.SSZ
    //   #Use correct page in function GetAdvPmtPlanTemplate and validate the value, because the Amount should be calculated with value from the template
    // #APTW17.10.00.01:T501 25.02.2014 DEMSR.SSZ
    //    #Test on Status of Order
    // #APTW17.10.00.02:T100 31.07.14 DEMSR.IST - Rebranding
    // #APTW17.10.00.03:T500 31.07.14
    //    #DEDRS.WHEG  Added field Dimension Set ID for update routine
    //    #DEDRS.RKRA  Fixed field value preset problem
    // #APTW18.00.01:T101 15.09.15 DEMSR.SSZ
    //   #Deleted condition in TableRelation of field 10 "Document No.": Status=Release.
    //   #Check of status would alread done with #APTW17.10.00.01:T501

    Caption = 'Advance Payment Plan Header Purchase';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(10; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Purchase Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(11; "Document Comment"; Boolean)
        {
            CalcFormula = Exist ("Purch. Comment Line" WHERE ("Document Type" = CONST (Order),
                                                             "No." = FIELD ("Document No.")));
            Caption = 'Document Comment';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Pay-to Vendor No."; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Vendor No." WHERE ("Document Type" = CONST (Order),
                                                                              "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Vendor No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Pay-to Name"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Name" WHERE ("Document Type" = CONST (Order),
                                                                        "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Name';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Pay-to Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Name 2" WHERE ("Document Type" = CONST (Order),
                                                                          "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Name 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Pay-to Address"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Address" WHERE ("Document Type" = CONST (Order),
                                                                           "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Address';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; "Pay-to Address 2"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Address 2" WHERE ("Document Type" = CONST (Order),
                                                                             "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Address 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(70; "Pay-to City"; Text[30])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to City" WHERE ("Document Type" = CONST (Order),
                                                                        "No." = FIELD ("Document No.")));
            Caption = 'Pay-to City';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; "Pay-to Contact"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Contact" WHERE ("Document Type" = CONST (Order),
                                                                           "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Contact';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Pay-to Post Code"; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Post Code" WHERE ("Document Type" = CONST (Order),
                                                                             "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Post Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(100; "Pay-to County"; Text[30])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to County" WHERE ("Document Type" = CONST (Order),
                                                                          "No." = FIELD ("Document No.")));
            Caption = 'Pay-to County';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Pay-to Country Code"; Code[10])
        {
            CalcFormula = Lookup ("Purchase Header"."Pay-to Country/Region Code" WHERE ("Document Type" = CONST (Order),
                                                                                       "No." = FIELD ("Document No.")));
            Caption = 'Pay-to Country Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Your Reference"; Text[30])
        {
            CalcFormula = Lookup ("Purchase Header"."Your Reference" WHERE ("Document Type" = CONST (Order),
                                                                           "No." = FIELD ("Document No.")));
            Caption = 'Your Reference';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; "Order Date"; Date)
        {
            CalcFormula = Lookup ("Purchase Header"."Order Date" WHERE ("Document Type" = CONST (Order),
                                                                       "No." = FIELD ("Document No.")));
            Caption = 'Order Date';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(140; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Description = 'APTW:DMW15.01:58:01';
        }
        field(150; "Posting Description"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Posting Description" WHERE ("Document Type" = CONST (Order),
                                                                                "No." = FIELD ("Document No.")));
            Caption = 'Posting Description';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160; "Payment Terms Code"; Code[10])
        {
            Caption = 'Payment Terms Code';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Payment Terms";
        }
        field(170; "Due Date"; Date)
        {
            CalcFormula = Lookup ("Purchase Header"."Due Date" WHERE ("Document Type" = CONST (Order),
                                                                     "No." = FIELD ("Document No.")));
            Caption = 'Due Date';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(180; "Payment Discount %"; Decimal)
        {
            Caption = 'Payment Discount %';
            DecimalPlaces = 0 : 5;
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
        }
        field(190; "Pmt. Discount Date"; Date)
        {
            CalcFormula = Lookup ("Purchase Header"."Pmt. Discount Date" WHERE ("Document Type" = CONST (Order),
                                                                               "No." = FIELD ("Document No.")));
            Caption = 'Pmt. Discount Date';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Shortcut Dimension 1 Code"; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Shortcut Dimension 1 Code" WHERE ("Document Type" = CONST (Order),
                                                                                      "No." = FIELD ("Document No.")));
            Caption = 'Shortcut Dimension 1 Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(210; "Shortcut Dimension 2 Code"; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Shortcut Dimension 2 Code" WHERE ("Document Type" = CONST (Order),
                                                                                      "No." = FIELD ("Document No.")));
            Caption = 'Shortcut Dimension 2 Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(220; "Currency Code"; Code[10])
        {
            CalcFormula = Lookup ("Purchase Header"."Currency Code" WHERE ("Document Type" = CONST (Order),
                                                                          "No." = FIELD ("Document No.")));
            Caption = 'Currency Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(230; "Currency Factor"; Decimal)
        {
            CalcFormula = Lookup ("Purchase Header"."Currency Factor" WHERE ("Document Type" = CONST (Order),
                                                                            "No." = FIELD ("Document No.")));
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
            MinValue = 0;
        }
        field(240; "Purchaser Code"; Code[10])
        {
            CalcFormula = Lookup ("Purchase Header"."Purchaser Code" WHERE ("Document Type" = CONST (Order),
                                                                           "No." = FIELD ("Document No.")));
            Caption = 'Purchaser Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(250; "Buy-from Vendor No."; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Vendor No." WHERE ("Document Type" = CONST (Order),
                                                                                "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Vendor No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(260; "Buy-from Vendor Name"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Vendor Name" WHERE ("Document Type" = CONST (Order),
                                                                                 "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Vendor Name';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(270; "Buy-from Vendor Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Vendor Name 2" WHERE ("Document Type" = CONST (Order),
                                                                                   "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Vendor Name 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(280; "Buy-from Address"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Address" WHERE ("Document Type" = CONST (Order),
                                                                             "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Address';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(290; "Buy-from Address 2"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Address 2" WHERE ("Document Type" = CONST (Order),
                                                                               "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Address 2';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Buy-from City"; Text[30])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from City" WHERE ("Document Type" = CONST (Order),
                                                                          "No." = FIELD ("Document No.")));
            Caption = 'Buy-from City';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(310; "Buy-from Contact"; Text[50])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Contact" WHERE ("Document Type" = CONST (Order),
                                                                             "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Contact';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(320; "Buy-from Post Code"; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Post Code" WHERE ("Document Type" = CONST (Order),
                                                                               "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Post Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(330; "Buy-from County"; Text[30])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from County" WHERE ("Document Type" = CONST (Order),
                                                                            "No." = FIELD ("Document No.")));
            Caption = 'Buy-from County';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(340; "Buy-from Country Code"; Code[10])
        {
            CalcFormula = Lookup ("Purchase Header"."Buy-from Country/Region Code" WHERE ("Document Type" = CONST (Order),
                                                                                         "No." = FIELD ("Document No.")));
            Caption = 'Buy-from Country Code';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(350; "Vendor Invoice No."; Code[20])
        {
            CalcFormula = Lookup ("Purchase Header"."Vendor Invoice No." WHERE ("Document Type" = CONST (Order),
                                                                               "No." = FIELD ("Document No.")));
            Caption = 'Vendor Invoice No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(360; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(370; "Last Posting No."; Code[20])
        {
            Caption = 'Last Posting No.';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            TableRelation = "Purch. Inv. Header";
        }
        field(375; "Vendor Posting Group"; Code[10])
        {
            Caption = 'Vendor Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Vendor Posting Group";
        }
        field(380; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "Gen. Business Posting Group";
        }
        field(385; "VAT Bus. Posting Group"; Code[10])
        {
            Caption = 'VAT Bus. Posting Group';
            Description = 'APTW:DMW15.01:58:01';
            TableRelation = "VAT Business Posting Group";
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Description = '#APTW17.10.00.03:T500';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(500; "Net Amount"; Decimal)
        {
            AutoFormatType = 1;
            CalcFormula = Sum ("Purchase Line".Amount WHERE ("Document No." = FIELD ("Document No.")));
            Caption = 'Net Amount';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(510; "Net Advance Payment Requests"; Decimal)
        {
            CalcFormula = Sum ("Adv. Payment Plan Line Purch.".Amount WHERE ("Document No." = FIELD ("No.")));
            Caption = 'Net Advance Payment Requests';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(800; "Advance Payment Requests"; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Advance Payment Request Purchase"),
                                                                          "Entry Type" = FILTER ("Initial Entry")));
            Caption = 'Advance Payment Requests';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(810; "Advance Payments Made"; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Advance Payment Made"),
                                                                          "Entry Type" = FILTER ("Initial Entry" | "Payment Discount" | "Payment Tolerance" | "Payment Discount Tolerance")));
            Caption = 'Advance Payments Made';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(820; "Advance Payment Receivables"; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Advance Payment Made"),
                                                                          "Entry Type" = FILTER ("Initial Entry")));
            Caption = 'Advance Payment Receivables';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(830; "Advance Payment Pmt. Disc."; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Advance Payment Made"),
                                                                          "Entry Type" = FILTER ("Payment Discount" | "Payment Tolerance" | "Payment Discount Tolerance")));
            Caption = 'Advance Payments Payment Discounts';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(840; "Allocated Advance Payment Rec."; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Advance Payment Receivable"),
                                                                          "Entry Type" = FILTER (Application | "Payment Discount" | "Payment Tolerance" | "Payment Discount Tolerance")));
            Caption = 'Allocated Advance Payment Receivables';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(850; "Alloc Adv. Payments Pmt. Disc."; Decimal)
        {
            CalcFormula = - Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                           "Advance Payment No." = FIELD ("No."),
                                                                           "Advance Payment Type" = CONST ("Advance Payment Receivable"),
                                                                           "Entry Type" = FILTER ("Payment Discount" | "Payment Tolerance" | "Payment Discount Tolerance")));
            Caption = 'Allocated Advance Payment Payment Discounts';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(855; "Allocated Advance Payment Req."; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Alloc. Adv. Paym. Req. Purchase"),
                                                                          "Entry Type" = FILTER ("Initial Entry")));
            Caption = 'Allocated Advance Payment Requests';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(860; "Partial Invoices"; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Partial Invoice Purchase"),
                                                                          "Entry Type" = FILTER ("Initial Entry")));
            Caption = 'Partial Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
        field(870; "Closing Invoices"; Decimal)
        {
            CalcFormula = Sum ("Detailed Vendor Ledg. Entry".Amount WHERE ("Advance Payment" = CONST (true),
                                                                          "Advance Payment No." = FIELD ("No."),
                                                                          "Advance Payment Type" = CONST ("Closing Invoice Purchase"),
                                                                          "Entry Type" = FILTER ("Initial Entry")));
            Caption = 'Closing Invoices';
            Description = 'APTW:DMW15.01:58:01';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.")
        {
        }
    }

    fieldgroups
    {
    }
}

