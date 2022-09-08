table 5072652 "Rental Failure"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RENW16.00:10-001 04.05.09 DEMSR.KHS
    //   Object created
    // 
    // #RENW16.00.00.01:T510 09.07.09 DEMSR.KHS
    //   In some cases released Failures were missing in created Invoices
    // 
    // #RENW16.00.00.02:T305 31.07.09 DEMSR.KHS
    //   Add reset function to failure
    // 
    // #RENW16.00.01.02:T522 19.05.10 DEMSR.KHS
    //   Enable Deletion of Failures
    // 
    // #RENW16.00.01.03:T501 02.06.10 DEMSR.KHS
    //   Delete of Failures did not work
    // 
    // #RENW16.00.01.03:T510 14.06.10 DEMSR.KHS
    //   Credited Failures were credited once more on return
    //   (New Key: Document No.,Document Type,Line No.,Create Credit Memo,Start Date Failure)
    // 
    // #RENW17.00:T503 18.11.12 DEMSR.KHS
    //   No failure with open Rental End
    // 
    // #RENW17.00.00.02:T100 29.05.13 DEMSR.KHS
    //   Update Code and Variables
    // 
    // #RENW17.00.00.02:T101 29.05.13 DEMSR.KHS
    //   Update Object IDs
    // 
    // #RENW17.10.00.01:T100 26.11.13 DEMSR.KHS
    //   Add DEU Caption for Document Type and Type
    //   remove obsolete brackets
    // 
    // #RENW17.10.00.02:T510 12.03.14 DEMSR.KHS
    //   Fix Error on Failure Change
    // 
    // #RENW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Rental Failure';

    fields
    {
        field(1; "Failure No."; Integer)
        {
            Caption = 'Failure No.';
        }
        field(2; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order";
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            TableRelation = "Sales Header"."No." WHERE ("Document Type" = FIELD ("Document Type"));
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(20; "Start Date Failure"; Date)
        {
            Caption = 'Start Date Failure';
        }
        field(30; "End Date Failure"; Date)
        {
            Caption = 'End Date Failure';
        }
        field(40; "Create Credit Memo"; Boolean)
        {
            Caption = 'Create Credit Memo';
        }
        field(50; "Discount %"; Decimal)
        {
            Caption = 'Discount %';
        }
        field(60; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(70; "Invoice created until"; Date)
        {
            Caption = 'Invoice created until';
        }
        field(80; Closed; Boolean)
        {
            Caption = 'Closed';
        }
        field(90; Type; Option)
        {
            CalcFormula = Lookup ("Sales Line".Type WHERE ("Document Type" = FIELD ("Document Type"),
                                                          "Document No." = FIELD ("Document No."),
                                                          "Line No." = FIELD ("Line No.")));
            Caption = 'Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,G/L Account,Item,Resource,Fixed Asset,Charge (Item)';
            OptionMembers = " ","G/L Account",Item,Resource,"Fixed Asset","Charge (Item)";
        }
        field(100; "No."; Code[20])
        {
            CalcFormula = Lookup ("Sales Line"."No." WHERE ("Document Type" = FIELD ("Document Type"),
                                                           "Document No." = FIELD ("Document No."),
                                                           "Line No." = FIELD ("Line No.")));
            Caption = 'No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(110; "Rental Start Date"; Date)
        {
            CalcFormula = Lookup ("Sales Line"."Rental Start Date" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                         "Document No." = FIELD ("Document No."),
                                                                         "Line No." = FIELD ("Line No.")));
            Caption = 'Rental Start Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(120; "Rental End Date"; Date)
        {
            CalcFormula = Lookup ("Sales Line"."Rental End Date" WHERE ("Document Type" = FIELD ("Document Type"),
                                                                       "Document No." = FIELD ("Document No."),
                                                                       "Line No." = FIELD ("Line No.")));
            Caption = 'Rental End Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(130; Quantity; Decimal)
        {
            Caption = 'Quantity';
        }
        field(140; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = 'Open,Released,Posted';
            OptionMembers = Open,Released,Posted;
        }
        field(150; "Failure Type"; Code[10])
        {
            Caption = 'Failure Type';
            TableRelation = "Failure Type";
        }
    }

    keys
    {
        key(Key1; "Failure No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Document Type", "Line No.", "Create Credit Memo", "Start Date Failure")
        {
        }
    }

    fieldgroups
    {
    }
}

