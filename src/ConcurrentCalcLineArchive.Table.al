table 5012666 "Concurrent Calc. Line Archive"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #CAW17.00:302 13.08.12 DEMSR.KHS
    //   Object created
    // 
    // #CAW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Concurrent Calc. Line Archive';

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
            OptionCaption = 'Item,Quote,Blanket Order,Order,Prod. Order (Expected),Prod. Order (Actual)';
            OptionMembers = Item,Quote,"Blanket Order","Order","Prod. Order (Expected)","Prod. Order (Actual)";
        }
        field(4; "Reference Type"; Option)
        {
            Caption = 'Reference Type';
            OptionCaption = 'Item,Quote,Blanket Order,Order,Simulated Prod. Order,Planned Prod. Order,Firm Planned Prod. Order,Released Prod. Order,Finished Prod. Order,Assembly Quote,Asm. Blanket Order,Assembly Order';
            OptionMembers = Item,Quote,"Blanket Order","Order","Simulated Prod. Order","Planned Prod. Order","Firm Planned Prod. Order","Released Prod. Order","Finished Prod. Order","Assembly Quote","Asm. Blanket Order","Assembly Order";
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
        field(5047; "Reference Version No."; Integer)
        {
            Caption = 'Reference Version No.';
        }
        field(5048; "Ref. Doc. No. Occurrence"; Integer)
        {
            Caption = 'Ref. Doc. No. Occurrence';
        }
    }

    keys
    {
        key(Key1; "Concurrent Calculation Code", "Ref. Doc. No. Occurrence", "Reference Version No.", "Line No.")
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

