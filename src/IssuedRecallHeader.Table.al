table 5034614 "Issued Recall Header"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.02:R287 27.10.10 DEMSR.KHS
    //   Recall List - Object created
    // 
    // #QMW16.00.02.06:T514 06.05.11 DEMSR.KHS
    //   Missing Captions added in Recall
    // 
    // #QMW17.00:104 08.01.13 DEMSR.KHS
    //   Update Code structure for NAV2013
    // 
    // #QMW17.00:404 07.12.12 DEMSR.KHS
    //   Issue and Print did not work for Recall
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   delete obsolete record names
    // 
    // #QMW17.10.00.02:T105 24.02.14 DEMSR.KHS
    //   Rename "Callback" to "Recall"
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.03:T502 18.05.15 DEMSR.KHS
    //   Update length of "Assigned User ID" field

    Caption = 'Issued Recall Header';
    DataCaptionFields = "No.";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            Editable = false;
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
            Editable = false;
        }
        field(30; Comment; Boolean)
        {
            CalcFormula = Exist("Recall Comment Line" WHERE(Type = CONST("Issued Recall"),
                                                             "No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "No. Printed"; Integer)
        {
            Caption = 'No. Printed';
            Editable = false;
        }
        field(36; "User ID"; Code[50])
        {
            Caption = 'User ID';
            Description = '#QMW17.00:104';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
        }
        field(37; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(38; "Issuing No. Series"; Code[10])
        {
            Caption = 'Issuing No. Series';
            TableRelation = "No. Series";
        }
        field(39; "Issuing No."; Code[20])
        {
            Caption = 'Issuing No.';
        }
        field(50; "Item No. Filter"; Code[250])
        {
            Caption = 'Item No. Filter';
            Editable = false;
        }
        field(60; "Lot No. Filter"; Code[250])
        {
            Caption = 'Lot No. Filter';
            Editable = false;
        }
        field(70; "Serial No. Filter"; Code[250])
        {
            Caption = 'Serial No. Filter';
            Editable = false;
        }
        field(80; "Variant Filter"; Code[250])
        {
            Caption = 'Variant Filter';
            Editable = false;
        }
        field(90; "Date Filter"; Text[250])
        {
            Caption = 'Date Filter';
            Editable = false;
        }
        field(100; "Recall No."; Code[20])
        {
            Caption = 'Recall No.';
            Editable = false;
        }
        field(110; "Add Return Qty."; Boolean)
        {
            Caption = 'Add Return Qty.';
            Editable = false;
        }
        field(5050; "Campaign No."; Code[20])
        {
            Caption = 'Campaign No.';
            Editable = false;
            TableRelation = Campaign;
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            Description = '#QMW18.00.00.03:T502';
            Editable = false;
            TableRelation = "User Setup";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.")
        {
        }
    }
}

