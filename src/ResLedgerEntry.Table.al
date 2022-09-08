table 203 "Res. Ledger Entry"
{
    // :DMW13.60:1:01 #New fields for posting BOM's
    //  # BOM Document Type; BOM Document No.; BOM Document Line No.; BOM lfd. Nr.
    //  # New key with all new fields
    // :DMW13.60:1:02 #new fields for calculation of posted BOM's
    //  # Calculation Group
    //  # Belongs to Calc.option blank
    //  # New key for calculation of posted Construction Orders:
    //  # BOM Document Type,BOM Document No.,Kalkulationsgruppe,geh. zu Kalk.option leer
    // :DMW14.03:1:01 #Corrected Tablerelation in field "Calculation Group"
    // :DMW15.01:59:01 #Created SQLIndex, filled in KeyGroups
    // 
    // #DMW16.00.03.01:A007 17.11.11 DEMSR.SSZ
    //   #Fields and Key from :DMW13.60:1:02 deleted
    // #DMW16.00.03.03:A007 27.07.12 DEMSR.SSZ
    //   #Corrected Table Relation at field 5013380 "BOM Entry No."
    // 
    // #RENW16.00:10-001  07.04.2009  DEMSR.KHS
    //   New Fields: "Rent Order No.","Rent Order Line No."
    // 
    // #RENW16.00.00.02:T507 28.07.09 DEMSR.KHS
    //   Change Captions

    Caption = 'Res. Ledger Entry';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(2; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Usage,Sale';
            OptionMembers = Usage,Sale;
        }
        field(3; "Document No."; Code[20])
        {
            Caption = 'Document No.';
        }
        field(4; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(5; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource;
        }
        field(6; "Resource Group No."; Code[20])
        {
            Caption = 'Resource Group No.';
            TableRelation = "Resource Group";
        }
        field(7; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(8; "Work Type Code"; Code[10])
        {
            Caption = 'Work Type Code';
            TableRelation = "Work Type";
        }
        field(9; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            TableRelation = Job;
        }
        field(10; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(11; Quantity; Decimal)
        {
            Caption = 'Quantity';
            DecimalPlaces = 0 : 5;
        }
        field(12; "Direct Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Direct Unit Cost';
        }
        field(13; "Unit Cost"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Cost';
        }
        field(14; "Total Cost"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Cost';
        }
        field(15; "Unit Price"; Decimal)
        {
            AutoFormatType = 2;
            Caption = 'Unit Price';
        }
        field(16; "Total Price"; Decimal)
        {
            AutoFormatType = 1;
            Caption = 'Total Price';
        }
        field(17; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(1));
        }
        field(18; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE("Global Dimension No." = CONST(2));
        }
        field(20; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(21; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
        }
        field(22; Chargeable; Boolean)
        {
            Caption = 'Chargeable';
            InitValue = true;
        }
        field(23; "Journal Batch Name"; Code[10])
        {
            Caption = 'Journal Batch Name';
        }
        field(24; "Reason Code"; Code[10])
        {
            Caption = 'Reason Code';
            TableRelation = "Reason Code";
        }
        field(25; "Gen. Bus. Posting Group"; Code[10])
        {
            Caption = 'Gen. Bus. Posting Group';
            TableRelation = "Gen. Business Posting Group";
        }
        field(26; "Gen. Prod. Posting Group"; Code[10])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";
        }
        field(27; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(28; "External Document No."; Code[35])
        {
            Caption = 'External Document No.';
        }
        field(29; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(30; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionCaption = ' ,Customer';
            OptionMembers = " ",Customer;
        }
        field(31; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            TableRelation = IF ("Source Type" = CONST(Customer)) Customer."No.";
        }
        field(32; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(33; "Quantity (Base)"; Decimal)
        {
            Caption = 'Quantity (Base)';
        }
        field(90; "Order Type"; Option)
        {
            Caption = 'Order Type';
            OptionCaption = ' ,Production,Transfer,Service,Assembly';
            OptionMembers = " ",Production,Transfer,Service,Assembly;
        }
        field(91; "Order No."; Code[20])
        {
            Caption = 'Order No.';
        }
        field(92; "Order Line No."; Integer)
        {
            Caption = 'Order Line No.';
        }
        field(480; "Dimension Set ID"; Integer)
        {
            Caption = 'Dimension Set ID';
            Editable = false;
            TableRelation = "Dimension Set Entry";
        }
        field(5013350; "BOM Document Type"; Option)
        {
            Caption = 'BOM Document Type';
            Description = ':DMW13.60:1:01';
            OptionCaption = 'Quote,Order,Invoice,Credit Memo,Blanket Order,Return Order,,,,Document BOM Line,Construction Line';
            OptionMembers = Quote,"Order",Invoice,"Credit Memo","Blanket Order","Return Order",,,,"Document BOM Line","Construction Line";
        }
        field(5013360; "BOM Document No."; Code[20])
        {
            Caption = 'BOM Document No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER(< "Construction Line")) "Sales Header"."No." WHERE("Document Type" = FIELD("BOM Document Type"))
            ELSE
            IF ("BOM Document Type" = FILTER("Construction Line")) "Construction Header"."No." WHERE("No." = FIELD("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013370; "BOM Document Line No."; Integer)
        {
            Caption = 'BOM Document Line No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER(< "Construction Line")) "Sales Line"."Line No." WHERE("Document Type" = FIELD("BOM Document Type"),
                                                                                                                 "Document No." = FIELD("BOM Document No."));
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5013380; "BOM Entry No."; Integer)
        {
            Caption = 'BOM Entry No.';
            Description = ':DMW13.60:1:01';
            TableRelation = IF ("BOM Document Type" = FILTER("Construction Line")) "Construction Line"."Entry No." WHERE("Document No." = FIELD("BOM Document No."));
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
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Resource No.", "Posting Date")
        {
        }
        key(Key3; "Entry Type", Chargeable, "Unit of Measure Code", "Resource No.", "Posting Date")
        {
            SumIndexFields = Quantity, "Total Cost", "Total Price", "Quantity (Base)";
        }
        key(Key4; "Entry Type", Chargeable, "Unit of Measure Code", "Resource Group No.", "Posting Date")
        {
            SumIndexFields = Quantity, "Total Cost", "Total Price", "Quantity (Base)";
        }
        key(Key5; "Document No.", "Posting Date")
        {
        }
        key(Key6; "Order Type", "Order No.", "Order Line No.", "Entry Type")
        {
            SumIndexFields = Quantity;
        }

    }

    fieldgroups
    {
        fieldgroup(DropDown; "Entry No.", Description, "Entry Type", "Document No.", "Posting Date")
        {
        }
    }
}

