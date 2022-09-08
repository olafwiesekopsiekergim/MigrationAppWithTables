table 5034612 "Recall Header"
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
    // #QMW17.00.00.02:T100 06.05.13 DEMSR.KHS
    //   Code reviewed
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   correct indentation
    // 
    // #QMW17.10.00.02:T105 24.02.14 DEMSR.KHS
    //   Rename "Callback" to "Recall"
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.03:T502 18.05.15 DEMSR.KHS
    //   Update length of "Assigned User ID" field

    Caption = 'Recall Header';
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
        }
        field(20; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; Comment; Boolean)
        {
            CalcFormula = Exist("Recall Comment Line" WHERE(Type = CONST(Recall),
                                                             "No." = FIELD("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
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
        }
        field(60; "Lot No. Filter"; Code[250])
        {
            Caption = 'Lot No. Filter';
        }
        field(70; "Serial No. Filter"; Code[250])
        {
            Caption = 'Serial No. Filter';
        }
        field(80; "Variant Filter"; Code[250])
        {
            Caption = 'Variant Filter';
        }
        field(90; "Date Filter"; Text[250])
        {
            Caption = 'Date Filter';
        }
        field(110; "Add Return Receipts"; Boolean)
        {
            Caption = 'Add Return Receipts';
        }
        field(5050; "Campaign No."; Code[20])
        {
            Caption = 'Campaign No.';
            TableRelation = Campaign;
        }
        field(9000; "Assigned User ID"; Code[50])
        {
            Caption = 'Assigned User ID';
            Description = '#QMW18.00.00.03:T502';
            TableRelation = "User Setup";
        }
        field(9010; Status; Option)
        {
            Caption = 'Status';
            Editable = false;
            OptionCaption = ' ,Changed,Validated';
            OptionMembers = " ",Changed,Validated;
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

