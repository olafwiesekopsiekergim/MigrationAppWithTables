table 352 "Default Dimension"
{
    // PR01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|project
    // 
    // #PXW16.00:104 28.01.09 DEMSR.IG
    //   Allocate Maintenance-/Setup Job Type Dimensions
    // 
    // #PXW17.00:T101 10.04.12 DEMSR.IST
    //   New function "UpdateMaintSetupJobTypeGLobalDimCode"

    Caption = 'Default Dimension';

    fields
    {
        field(1; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            NotBlank = true;
            TableRelation = AllObj."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(2; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = IF ("Table ID" = CONST (13)) "Salesperson/Purchaser"
            ELSE
            IF ("Table ID" = CONST (15)) "G/L Account"
            ELSE
            IF ("Table ID" = CONST (18)) Customer
            ELSE
            IF ("Table ID" = CONST (23)) Vendor
            ELSE
            IF ("Table ID" = CONST (27)) Item
            ELSE
            IF ("Table ID" = CONST (152)) "Resource Group"
            ELSE
            IF ("Table ID" = CONST (156)) Resource
            ELSE
            IF ("Table ID" = CONST (167)) Job
            ELSE
            IF ("Table ID" = CONST (270)) "Bank Account"
            ELSE
            IF ("Table ID" = CONST (413)) "IC Partner"
            ELSE
            IF ("Table ID" = CONST (5071)) Campaign
            ELSE
            IF ("Table ID" = CONST (5200)) Employee
            ELSE
            IF ("Table ID" = CONST (5600)) "Fixed Asset"
            ELSE
            IF ("Table ID" = CONST (5628)) Insurance
            ELSE
            IF ("Table ID" = CONST (5903)) "Service Order Type"
            ELSE
            IF ("Table ID" = CONST (5904)) "Service Item Group"
            ELSE
            IF ("Table ID" = CONST (5940)) "Service Item"
            ELSE
            IF ("Table ID" = CONST (5714)) "Responsibility Center"
            ELSE
            IF ("Table ID" = CONST (5800)) "Item Charge"
            ELSE
            IF ("Table ID" = CONST (99000754)) "Work Center"
            ELSE
            IF ("Table ID" = CONST (5105)) "Customer Template";
        }
        field(3; "Dimension Code"; Code[20])
        {
            Caption = 'Dimension Code';
            NotBlank = true;
            TableRelation = Dimension;
        }
        field(4; "Dimension Value Code"; Code[20])
        {
            Caption = 'Dimension Value Code';
            TableRelation = "Dimension Value".Code WHERE ("Dimension Code" = FIELD ("Dimension Code"));
        }
        field(5; "Value Posting"; Option)
        {
            Caption = 'Value Posting';
            OptionCaption = ' ,Code Mandatory,Same Code,No Code';
            OptionMembers = " ","Code Mandatory","Same Code","No Code";
        }
        field(6; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Multi Selection Action"; Option)
        {
            Caption = 'Multi Selection Action';
            OptionCaption = ' ,Change,Delete';
            OptionMembers = " ",Change,Delete;
        }
    }

    keys
    {
        key(Key1; "Table ID", "No.", "Dimension Code")
        {
            Clustered = true;
        }
        key(Key2; "Dimension Code")
        {
        }
    }

    fieldgroups
    {
    }
}

