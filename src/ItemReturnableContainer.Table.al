table 5012419 "Item Returnable Container"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // RETCONTAINER:PMW15.00:194:1
    //   # New field 10 "Selected Quantity (Container)" for multi-selection of returnable container
    //   # "Selected Quantity (Container)" as SumIndexField of key <Item No.,No.>
    // 
    // RETCONTAINER:PMW15.00:194:2
    //   # New functions ItemAvailability and ShowItemSub
    // 
    // RETCONTAINER:PMW15.00:194:2
    //   # New field 20 "Location Code"
    //   # New field 21 "Shipment Date"
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.00:T101 12.10.12 DEMSR.IST
    //   Form variable changed to page
    //   FORM.RUN and FORM.RUNMODAL changed to PAGE.RUN and PAGE.RUNMODAL
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Returnable Container';
    DataCaptionFields = "Item No.";

    fields
    {
        field(1; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = Item."No." WHERE ("Returnable Container" = CONST (true));
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(5; "Quantity (Container)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity (Container)';
            DecimalPlaces = 0 : 5;
        }
        field(6; "Unit of Measure Code (Cont.)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Cont.)';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("No."));
        }
        field(7; "Quantity (Item)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity (Item)';
            DecimalPlaces = 0 : 5;
        }
        field(8; "Unit of Measure Code (Item)"; Code[10])
        {
            Caption = 'Unit of Measure Code (Item)';
            TableRelation = "Item Unit of Measure".Code WHERE ("Item No." = FIELD ("Item No."));
        }
        field(9; "Quantity Needed (Container)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Quantity Needed (Container)';
            DecimalPlaces = 0 : 0;
        }
        field(10; "Selected Quantity (Container)"; Decimal)
        {
            BlankZero = true;
            Caption = 'Selected Quantity (Container)';
            DecimalPlaces = 0 : 0;
            Description = 'RETCONTAINER:PMW15.00:194:1';
        }
        field(20; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            Description = 'RETCONTAINER:PMW15.00:194:2';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(21; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
            Description = 'RETCONTAINER:PMW15.00:194:2';
        }
    }

    keys
    {
        key(Key1; "Item No.", "No.")
        {
            Clustered = true;
            SumIndexFields = "Selected Quantity (Container)";
        }
    }

    fieldgroups
    {
    }
}

