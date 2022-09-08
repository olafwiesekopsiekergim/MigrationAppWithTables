table 5013807 KANBAN
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // KANBAN:DMW15.02:28:01 #Created new table
    // #DMW17.00:A001 06.06.12 DEMSR.SSZ
    //   #Grammar issue
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'KANBAN';

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "Variant Code"; Code[10])
        {
            Caption = 'Variant Code';
            TableRelation = "Item Variant".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(3; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(4; "Kanban Activated"; Boolean)
        {
            Caption = 'Kanban Activated';
        }
        field(5; "Kanban Unit of Measure"; Code[10])
        {
            Caption = 'Kanban Unit of Measure';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(6; "Quantity(Base) per Kanban Unit"; Decimal)
        {
            CalcFormula = Lookup ("Item Unit of Measure"."Qty. per Unit of Measure" WHERE ("Item No." = FIELD ("Item No."),
                                                                                          Code = FIELD ("Kanban Unit of Measure")));
            Caption = 'Base Quantity per Kanban Unit';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Total No. of Kanban Cards"; Integer)
        {
            Caption = 'Total No. of Kanban Cards';
        }
        field(8; "Accumulated Quantity"; Integer)
        {
            Caption = 'Accumulated Quantity';
        }
        field(9; "Collected Quantity"; Integer)
        {
            Caption = 'Collected Quantity';
        }
    }

    keys
    {
        key(Key1; "Item No.", "Variant Code", "Location Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

