table 5012726 "Capacity Conflict Log"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW18.00.01:T102 22.05.15 DEMSR.IST
    //   Object created
    // 
    // #PMW18.00.01:T102 08.06.15 DEMSR.IST
    //   Tool and Insert added to option value of "Capacity Warning"

    Caption = 'Capacity Conflict Log';

    fields
    {
        field(1; "Prod. Order Status"; Option)
        {
            Caption = 'Prod. Order Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2; "Prod. Order No."; Code[20])
        {
            Caption = 'Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE (Status = FIELD ("Prod. Order Status"));
        }
        field(3; "Prod. Order Line No."; Integer)
        {
            Caption = 'Prod. Order Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status = FIELD ("Prod. Order Status"),
                                                                 "Prod. Order No." = FIELD ("Prod. Order No."));
        }
        field(4; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            NotBlank = true;
        }
        field(5; Date; Date)
        {
            Caption = 'Date';
        }
        field(6; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = 'Work Center,Machine Center';
            OptionMembers = "Work Center","Machine Center";
        }
        field(11; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF (Type = CONST ("Work Center")) "Work Center"
            ELSE
            IF (Type = CONST ("Machine Center")) "Machine Center";
        }
        field(12; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(13; "Capacity Warning"; Option)
        {
            Caption = 'Capacity Warning';
            OptionCaption = ' ,Sequence Work Center Overload,Prod. Resource Overload,Tool Overlap,Insert Overlap';
            OptionMembers = " ","Sequence Work Center Overload","Prod. Resource Overload","Tool Overlap","Insert Overlap";
        }
        field(20; "Conflict Prod. Order Status"; Option)
        {
            Caption = 'Conflict Prod. Order Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(21; "Conflict Prod. Order No."; Code[20])
        {
            Caption = 'Conflict Prod. Order No.';
            TableRelation = "Production Order"."No." WHERE (Status = FIELD ("Conflict Prod. Order Status"));
        }
        field(22; "Conflict Prod. Order Line No."; Integer)
        {
            Caption = 'Conflict Prod. Order Line No.';
            TableRelation = "Prod. Order Line"."Line No." WHERE (Status = FIELD ("Prod. Order Status"),
                                                                 "Prod. Order No." = FIELD ("Conflict Prod. Order No."));
        }
        field(23; "Conflict Operation No."; Code[10])
        {
            Caption = 'Conflict Operation No.';
            NotBlank = true;
        }
        field(30; Capacity; Decimal)
        {
            Caption = 'Capacity';
        }
        field(31; "Allocated Qty."; Decimal)
        {
            Caption = 'Allocated Qty.';
        }
        field(32; "Availability After Orders"; Decimal)
        {
            Caption = 'Availability After Orders';
        }
        field(33; Load; Decimal)
        {
            Caption = 'Load';
        }
        field(40; Comment; Text[250])
        {
            Caption = 'Comment';
        }
    }

    keys
    {
        key(Key1; "Prod. Order Status", "Prod. Order No.", "Prod. Order Line No.", "Operation No.", Date, "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

