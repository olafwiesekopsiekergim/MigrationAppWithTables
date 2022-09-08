table 5012663 "Calculation Header Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW17.00:302 13.08.12 DEMSR.KHS
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PMW17.00.00.01:T504 17.04.13 DEMSR.IST
    //   New field 5012400 "Production Structure No." added
    //   New field 5012401 "Recipe Weight" added

    Caption = 'Calculation Header Archive';
    DataCaptionFields = "No.", "Calculation Schedule Desc.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(10; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(11; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(12; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(13; Calculated; Boolean)
        {
            Caption = 'Calculated';
            Editable = false;
        }
        field(20; "Calculation Schedule No."; Code[20])
        {
            Caption = 'Calculation Schedule No.';
            TableRelation = "Calculation Schedule Header"."No." WHERE (Status = CONST (Certified));
        }
        field(21; "Calculation Schedule Desc."; Text[50])
        {
            Caption = 'Calculation Schedule Desc.';
            Editable = false;
        }
        field(22; "Schedule Creation Date"; Date)
        {
            CalcFormula = Lookup ("Calculation Schedule Header"."Creation Date" WHERE ("No." = FIELD ("Calculation Schedule No.")));
            Caption = 'Schedule Creation Date';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Schedule Creation Time"; Time)
        {
            CalcFormula = Lookup ("Calculation Schedule Header"."Creation Time" WHERE ("No." = FIELD ("Calculation Schedule No.")));
            Caption = 'Schedule Creation Time';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Schedule Last Date Modified"; Date)
        {
            CalcFormula = Lookup ("Calculation Schedule Header"."Last Date Modified" WHERE ("No." = FIELD ("Calculation Schedule No.")));
            Caption = 'Schedule Last Date Modified';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Schedule Last Time Modified"; Time)
        {
            CalcFormula = Lookup ("Calculation Schedule Header"."Last Time Modified" WHERE ("No." = FIELD ("Calculation Schedule No.")));
            Caption = 'Schedule Last Time Modified';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; "Schedule Date Used"; Date)
        {
            Caption = 'Schedule Date Used';
            Editable = false;
        }
        field(27; "Schedule Time Used"; Time)
        {
            Caption = 'Schedule Time Used';
            Editable = false;
        }
        field(30; "Calculation Date"; Date)
        {
            Caption = 'Calculation Date';
            NotBlank = true;
        }
        field(31; "Multi-Level Calculation"; Boolean)
        {
            Caption = 'Multi-Level Calculation';
        }
        field(40; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            TableRelation = Item;
        }
        field(42; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            TableRelation = "Production BOM Header"."No." WHERE (Status = CONST (Certified));
        }
        field(43; "Production BOM Version Code"; Code[20])
        {
            Caption = 'Production BOM Version Code';
            TableRelation = "Production BOM Version"."Version Code" WHERE ("Production BOM No." = FIELD ("Production BOM No."));
        }
        field(44; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            TableRelation = "Routing Header"."No." WHERE (Status = CONST (Certified));
        }
        field(45; "Routing Version Code"; Code[20])
        {
            Caption = 'Routing Version Code';
            TableRelation = "Routing Version"."Version Code" WHERE ("Routing No." = FIELD ("Routing No."));
        }
        field(50; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(51; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = IF ("Item No." = FILTER (<> '')) "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."))
            ELSE
            "Unit of Measure";
        }
        field(52; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(53; "Lot Size"; Decimal)
        {
            BlankZero = true;
            Caption = 'Lot Size';
            DecimalPlaces = 0 : 5;
        }
        field(54; "Net Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Net Weight';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(60; "Sales Type"; Option)
        {
            Caption = 'Sales Type';
            OptionCaption = ' ,Customer,Customer Price Group,All Customers,Campaign';
            OptionMembers = " ",Customer,"Customer Price Group","All Customers",Campaign;
        }
        field(61; "Sales Code"; Code[20])
        {
            Caption = 'Sales Code';
            TableRelation = IF ("Sales Type" = CONST ("Customer Price Group")) "Customer Price Group"
            ELSE
            IF ("Sales Type" = CONST (Customer)) Customer
            ELSE
            IF ("Sales Type" = CONST (Campaign)) Campaign;
        }
        field(62; "Sales Description"; Text[50])
        {
            Caption = 'Sales Description';
            Editable = false;
        }
        field(70; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency;
        }
        field(71; "Currency Factor"; Decimal)
        {
            BlankZero = true;
            Caption = 'Currency Factor';
            DecimalPlaces = 0 : 15;
            MinValue = 0;
        }
        field(80; "Calculation Type"; Option)
        {
            Caption = 'Calculation Type';
            Editable = false;
            OptionCaption = ' ,Quote,Blanket Order,Order,Prod. Order (Expected),Prod. Order (Actual),Assembly Order (Expected),Assembly Order (Actual)';
            OptionMembers = " ",Quote,"Blanket Order","Order","Prod. Order (Expected)","Prod. Order (Actual)","Assembly Order (Expected)","Assembly Order (Actual)";
        }
        field(81; "Reference Type"; Option)
        {
            Caption = 'Reference Type';
            Editable = false;
            OptionCaption = ' ,Quote,Blanket Order,Order,Simulated Prod. Order,Planned Prod. Order,Firm Planned Prod. Order,Released Prod. Order,Finished Prod. Order,Assembly Quote,Assembly Blanket Order,Assembly Order';
            OptionMembers = " ",Quote,"Blanket Order","Order","Simulated Prod. Order","Planned Prod. Order","Firm Planned Prod. Order","Released Prod. Order","Finished Prod. Order","Assembly Quote","Assembly Blanket Order","Assembly Order";
        }
        field(82; "Reference No."; Code[20])
        {
            Caption = 'Reference No.';
            Editable = false;
            TableRelation = IF ("Reference Type" = CONST (Quote)) "Sales Line"."Document No." WHERE ("Document Type" = CONST (Quote))
            ELSE
            IF ("Reference Type" = CONST ("Blanket Order")) "Sales Line"."Document No." WHERE ("Document Type" = CONST ("Blanket Order"))
            ELSE
            IF ("Reference Type" = CONST (Order)) "Sales Line"."Document No." WHERE ("Document Type" = CONST (Order))
            ELSE
            IF ("Reference Type" = CONST ("Simulated Prod. Order")) "Prod. Order Line"."Prod. Order No." WHERE (Status = CONST (Simulated))
            ELSE
            IF ("Reference Type" = CONST ("Planned Prod. Order")) "Prod. Order Line"."Prod. Order No." WHERE (Status = CONST (Planned))
            ELSE
            IF ("Reference Type" = CONST ("Firm Planned Prod. Order")) "Prod. Order Line"."Prod. Order No." WHERE (Status = CONST ("Firm Planned"))
            ELSE
            IF ("Reference Type" = CONST ("Released Prod. Order")) "Prod. Order Line"."Prod. Order No." WHERE (Status = CONST (Released))
            ELSE
            IF ("Reference Type" = CONST ("Finished Prod. Order")) "Prod. Order Line"."Prod. Order No." WHERE (Status = CONST (Finished))
            ELSE
            IF ("Reference Type" = CONST ("Assembly Quote")) "Assembly Header"."No." WHERE ("Document Type" = CONST (Quote))
            ELSE
            IF ("Reference Type" = CONST ("Assembly Blanket Order")) "Assembly Header"."No." WHERE ("Document Type" = CONST ("Blanket Order"))
            ELSE
            IF ("Reference Type" = CONST ("Assembly Order")) "Assembly Header"."No." WHERE ("Document Type" = CONST (Order));
        }
        field(83; "Reference Line No."; Integer)
        {
            BlankZero = true;
            Caption = 'Reference Line No.';
            Editable = false;
        }
        field(85; "Concurrent Calculation Code"; Code[20])
        {
            Caption = 'Concurrent Calculation Code';
            TableRelation = "Concurrent Calculation".Code;
        }
        field(100; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(101; "Created By"; Code[50])
        {
            Caption = 'Created By';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(110; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(111; "Last Modified By"; Code[50])
        {
            Caption = 'Last Modified By';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(5044; "Time Archived"; Time)
        {
            Caption = 'Time Archived';
        }
        field(5045; "Date Archived"; Date)
        {
            Caption = 'Date Archived';
        }
        field(5046; "Archived By"; Code[50])
        {
            Caption = 'Archived By';
        }
        field(5047; "Reference Version No."; Integer)
        {
            Caption = 'Reference Version No.';
        }
        field(5048; "Ref. Doc. No. Occurrence"; Integer)
        {
            Caption = 'Ref. Doc. No. Occurrence';
        }
        field(5012400; "Production Structure No."; Code[20])
        {
            Caption = 'Production Structure No.';
            TableRelation = "Production Structure Header"."No.";
        }
        field(5012401; "Recipe Weight"; Decimal)
        {
            BlankZero = true;
            Caption = 'Recipe Weight';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
    }

    keys
    {
        key(Key1; "No.", "Ref. Doc. No. Occurrence", "Reference Version No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

