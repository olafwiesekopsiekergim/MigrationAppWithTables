table 207 "Res. Journal Line"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // 
    // #RENW16.00:10-001  07.04.2009  DEMSR.KHS
    //   New Fields: "Rent Order No.","Rent Order Line No."
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions
    // 
    // :DMW13.60:1:01 #New fields for posting BOM's
    //  # BOM Document Type
    //  # BOM Document No.
    //  # BOM Document Line No.
    //  # BOM lfd. Nr.
    // :DMW13.60:1:02 #new fields to calculate posted BOM's
    //  # Calculation Group
    //  # Belongs to Calc.option blank
    // :DMW13.60.01:1:01 # Corrected table relation in field Calculation Group
    // :DMW14.04:1:01 # corrected Table Relation in Field "Calucation Group"
    // :DMW15.01:24:01 #Changes to fill out the fields from :DMW13.60:1:01 manually
    // 
    // #DMW16.00.03.01:A007 17.11.11 DEMSR.SSZ
    //   #Fields from :DMW13.60:1:02 deleted

    Caption = 'Res. Journal Line';

    fields
    {
        field(1; "Journal Template Name"; Code[10])
        {
            Caption = 'Journal Template Name';
            TableRelation = "Res. Journal Template";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Usage,Sale';
            OptionMembers = Usage,Sale;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(5; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(6; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(7; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            Editable = false;
            TableRelation = "Resource Group";
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(9; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(10; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(11; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Resource Unit of Measure".Code WHERE ("Resource No." = FIELD ("Resource No."));
        }
        field(12; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(13; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
            MinValue = 0;
        }
        field(14; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
            MinValue = 0;
        }
        field(15; "Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost';
        }
        field(16; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
            MinValue = 0;
        }
        field(17; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
        }
        field(18; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(19; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(21; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            Editable = false;
            TableRelation = "Source Code";
        }
        field(23; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
            TableRelation = "Res. Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Journal Template Name"));
        }
        field(24; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(25; "Recurring Method"; Option)
        {
            BlankZero = true;
            Caption = 'Recurring Method';
            OptionCaption = ',Fixed,Variable';
            OptionMembers = ,"Fixed",Variable;
        }
        field(26; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(27; "Recurring Frequency"; DateFormula)
        {
            Caption = 'Recurring Frequency';
        }
        field(28; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(29; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(30; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(31; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(32; "Posting No. Series"; Code[10])
        {
            Caption = 'Posting No. Series';
            TableRelation = "No. Series";
        }
        field(33; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer';
            OptionMembers = " ",Customer;
        }
        field(34; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST (Customer)) Customer."No.";
        }
        field(35; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(90; "Order Type"; Option)
        {
            Caption = 'Order Type';
            Editable = false;
            OptionCaption = ' ,Production,Transfer,Service,Assembly';
            OptionMembers = " ",Production,Transfer,Service,Assembly;
        }
        field(91; "Order No."; Code[20])
        {
            Caption = 'Order No.';
            Editable = false;
        }
        field(92; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
            Editable = false;
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(950; "Time Sheet No."; Code[20])
        {
            Caption = 'Time Sheet No.';
            TableRelation = "Time Sheet Header";
        }
        field(951; "Time Sheet Line No."; Integer)
        {
            Caption = 'Time Sheet Line No.';
            TableRelation = "Time Sheet Line"."Line No." WHERE ("Time Sheet No." = FIELD ("Time Sheet No."));
        }
        field(952; "Time Sheet Date"; Date)
        {
            Caption = 'Time Sheet Date';
            TableRelation = "Time Sheet Detail".Date WHERE ("Time Sheet No." = FIELD ("Time Sheet No."),
                                                            "Time Sheet Line No." = FIELD ("Time Sheet Line No."));
        }
        field(959; "System-Created Entry"; Boolean)
        {
            Caption = 'System-Created Entry';
            Editable = false;
        }
        field(5013350; "BOM Document Type"; Option)
        {
            Caption = 'BOM Document Type';
            Description = ':DMW13.60:1:01';
            OptionCaption = ' ,,,,,,,,,,Construction Line';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,"Document BOM Line","Construction Line";
        }
        field(5013360; "BOM Document No."; Code[20])
        {
            Caption = 'BOM Document No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER ("Construction Line")) "Construction Header"."No." WHERE ("No." = FIELD ("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013370; "BOM Document Line No."; Integer)
        {
            Caption = 'BOM Document Line No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER (< "Construction Line")) "Sales Line"."Line No." WHERE ("Document Type" = FIELD ("BOM Document Type"),
                                                                                                                 "Document No." = FIELD ("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013380; "BOM Entry No."; Integer)
        {
            BlankZero = true;
            Caption = 'BOM Entry No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER ("Construction Line")) "Construction Line"."Entry No." WHERE ("Document No." = FIELD ("BOM Document No."),
                                                                                                                        Type = CONST (Resource),
                                                                                                                        "Information Line" = CONST (false));
        }
        field(5072650; "Rent Order No."; Code[20])
        {
            Caption = 'Rent Order No.';
            Description = '#RENW16.00:10-001';
        }
        field(5072651; "Rent Order Line No."; Integer)
        {
            Caption = 'Rent Order Line No.';
            Description = '#RENW16.00:10-001';
        }
    }

    keys
    {
        key(Key1; "Journal Template Name", "Journal Batch Name", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

