table 5012662 "Concurrent Calculation Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   Object created
    // 
    // #CAW17.00:103 30.08.12 DEMSR.KHS
    //   Reference Type option string extended: "Assembly Quote","Asm. Blanket Order","Assembly Order"
    //   Line Type option string extended: "Asm. Order (Expected)","Asm. Order (Actual)"
    //   Case on Line Type extended
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #DMW16.00.02:T114 27.10.10 DEMSR.SSZ
    //   Added options for CTO
    // 
    // PRCA01 PRODUKT.01:AMP0013 12.06.15 DENUE.ALAN Integration Jobs
    //                                               New code added
    //                                               Options added to fields:
    //                                               - "Line Type"
    //                                               - "Reference Type"

    Caption = 'Concurrent Calculation Line';

    fields
    {
        field(1; "Concurrent Calculation Code"; Code[20])
        {
            Caption = 'Concurrent Calculation Code';
            NotBlank = true;
            TableRelation = "Concurrent Calculation".Code;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Line Type"; Option)
        {
            Caption = 'Line Type';
            Description = '#CAW17.00:103,PRCA8.00.04';
            OptionCaption = 'Item,Quote,Blanket Order,Order,Prod. Order (Expected),Prod. Order (Actual),Asm. Order (Expected),Asm. Order (Actual),,,Doc. BOM (Quote),Doc. BOM (Order),Construction Order,,,Job (Expected),Job (Actual),Job (Liability),Job Version (Quote),Job Version (Order)';
            OptionMembers = Item,Quote,"Blanket Order","Order","Prod. Order (Expected)","Prod. Order (Actual)","Asm. Order (Expected)","Asm. Order (Actual)",,,"Doc. BOM (Quote)","Doc. BOM (Order)","Construction Order",,,"Job (Expected)","Job (Actual)","Job (Liability)","Job Version (Quote)","Job Version (Order)";
        }
        field(4; "Reference Type"; Option)
        {
            Caption = 'Reference Type';
            Description = '#CAW17.00:103,PRCA8.00.04';
            OptionCaption = 'Item,Quote,Blanket Order,Order,Simulated Prod. Order,Planned Prod. Order,Firm Planned Prod. Order,Released Prod. Order,Finished Prod. Order,Assembly Quote,Asm. Blanket Order,Assembly Order,,Document BOM,Construction Order,,,Job Group,Job,Job Version';
            OptionMembers = Item,Quote,"Blanket Order","Order","Simulated Prod. Order","Planned Prod. Order","Firm Planned Prod. Order","Released Prod. Order","Finished Prod. Order","Assembly Quote","Asm. Blanket Order","Assembly Order",,"Document BOM","Construction Order",,,"Job Group",Job,"Job Version";
        }
        field(10; "Calculation No."; Code[20])
        {
            Caption = 'Calculation No.';
            TableRelation = "Calculation Header"."No." WHERE ("Calculation Type" = FIELD ("Line Type"));
        }
        field(11; "Calculation Description"; Text[50])
        {
            CalcFormula = Lookup ("Calculation Header".Description WHERE ("No." = FIELD ("Calculation No.")));
            Caption = 'Calculation Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Reference No."; Code[20])
        {
            CalcFormula = Lookup ("Calculation Header"."Reference No." WHERE ("No." = FIELD ("Calculation No.")));
            Caption = 'Reference No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Reference Line No."; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("Calculation Header"."Reference Line No." WHERE ("No." = FIELD ("Calculation No.")));
            Caption = 'Reference Line No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Reference Description"; Text[250])
        {
            Caption = 'Reference Description';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Concurrent Calculation Code", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Calculation No.")
        {
        }
    }

    fieldgroups
    {
    }
}

