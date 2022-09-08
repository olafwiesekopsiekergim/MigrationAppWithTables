table 5600 "Fixed Asset"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // FA   01.01.17   Fixed Asset
    //                 - New Field added
    // -----------------------------------------------------
    // #RENW16.00.02:R062 27.08.10 DEMSR.KHS
    //   Connecting Machines to Fixed Assets
    //   New field: "Item No."
    //   New key: "Item No."
    //   New function: "AssistEditSerialNo"
    // 
    // #RENW17.00.00.03:T510 28.08.13 DEMSR.KHS
    //   Function IDs in W1 corrected

    Caption = 'Fixed Asset';
    DataCaptionFields = "No.", Description;
    Permissions = TableData "Ins. Coverage Ledger Entry" = r;

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
        field(3; "Search Description"; Code[50])
        {
            Caption = 'Search Description';
        }
        field(4; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(5; "FA Class Code"; Code[10])
        {
            Caption = 'FA Class Code';
            TableRelation = "FA Class";
        }
        field(6; "FA Subclass Code"; Code[10])
        {
            Caption = 'FA Subclass Code';
            TableRelation = "FA Subclass";
        }
        field(7; "Global Dimension 1 Code"; Code[20])
        {
            Caption = 'Global Dimension 1 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (1));
        }
        field(8; "Global Dimension 2 Code"; Code[20])
        {
            Caption = 'Global Dimension 2 Code';
            TableRelation = "Dimension Value".Code WHERE ("Global Dimension No." = CONST (2));
        }
        field(9; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (false));
        }
        field(10; "FA Location Code"; Code[10])
        {
            Caption = 'FA Location Code';
            TableRelation = "FA Location";
        }
        field(11; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(12; "Main Asset/Component"; Option)
        {
            Caption = 'Main Asset/Component';
            Editable = false;
            OptionCaption = ' ,Main Asset,Component';
            OptionMembers = " ","Main Asset",Component;
        }
        field(13; "Component of Main Asset"; Code[20])
        {
            Caption = 'Component of Main Asset';
            Editable = false;
            TableRelation = "Fixed Asset";
        }
        field(14; "Budgeted Asset"; Boolean)
        {
            Caption = 'Budgeted Asset';
        }
        field(15; "Warranty Date"; Date)
        {
            Caption = 'Warranty Date';
        }
        field(16; "Responsible Employee"; Code[20])
        {
            Caption = 'Responsible Employee';
            TableRelation = Employee;
        }
        field(17; "Serial No."; Text[30])
        {
            Caption = 'Serial No.';
        }
        field(18; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(19; Insured; Boolean)
        {
            CalcFormula = Exist ("Ins. Coverage Ledger Entry" WHERE ("FA No." = FIELD ("No."),
                                                                    "Disposed FA" = CONST (false)));
            Caption = 'Insured';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; Comment; Boolean)
        {
            CalcFormula = Exist ("Comment Line" WHERE ("Table Name" = CONST ("Fixed Asset"),
                                                      "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(22; Picture; BLOB)
        {
            Caption = 'Picture';
            SubType = Bitmap;
        }
        field(23; "Maintenance Vendor No."; Code[20])
        {
            Caption = 'Maintenance Vendor No.';
            TableRelation = Vendor;
        }
        field(24; "Under Maintenance"; Boolean)
        {
            Caption = 'Under Maintenance';
        }
        field(25; "Next Service Date"; Date)
        {
            Caption = 'Next Service Date';
        }
        field(26; Inactive; Boolean)
        {
            Caption = 'Inactive';
        }
        field(27; "FA Posting Date Filter"; Date)
        {
            Caption = 'FA Posting Date Filter';
            FieldClass = FlowFilter;
        }
        field(28; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(29; "FA Posting Group"; Code[10])
        {
            Caption = 'FA Posting Group';
            TableRelation = "FA Posting Group";
        }
        field(11101; "BWR Depr. Book Code"; Code[10])
        {
            Caption = 'BWR Depr. Book Code';
            TableRelation = "FA Depreciation Book"."Depreciation Book Code" WHERE ("FA No." = FIELD ("No."));
        }
        field(11102; "Prem Depr. %"; Integer)
        {
            Caption = 'Prem Depr. %';
            Editable = false;
        }
        field(11103; "Prem. Depr. Amount"; Decimal)
        {
            Caption = 'Prem. Depr. Amount';
            Editable = false;
        }
        field(50001; Startdatum; Date)
        {
            CalcFormula = Lookup ("FA Depreciation Book"."Depreciation Starting Date" WHERE ("FA No." = FIELD ("No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; Enddatum; Date)
        {
            CalcFormula = Lookup ("FA Depreciation Book"."Depreciation Ending Date" WHERE ("FA No." = FIELD ("No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50003; Nutzungsdauer; Decimal)
        {
            CalcFormula = Lookup ("FA Depreciation Book"."No. of Depreciation Years" WHERE ("FA No." = FIELD ("No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50004; Anschaffungswert; Decimal)
        {
            CalcFormula = Sum ("FA Ledger Entry".Amount WHERE ("FA Posting Type" = CONST ("Acquisition Cost"),
                                                              "FA No." = FIELD ("No.")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50005; Anlagenklassenbeschreibung; Text[50])
        {
            CalcFormula = Lookup ("FA Class".Name WHERE (Code = FIELD ("FA Class Code")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50006; "KST-Bezeichnung"; Text[50])
        {
            CalcFormula = Lookup ("Dimension Value".Name WHERE ("Dimension Code" = CONST ('KST'),
                                                               Code = FIELD ("Global Dimension 1 Code")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50007; Anschaffungsdatum; Date)
        {
            CalcFormula = Lookup ("FA Ledger Entry"."FA Posting Date" WHERE ("FA No." = FIELD ("No."),
                                                                            "FA Posting Type" = CONST ("Acquisition Cost")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50008; Buchwert; Decimal)
        {
            CalcFormula = Sum ("FA Ledger Entry".Amount WHERE ("FA No." = FIELD ("No."),
                                                              "FA Posting Type" = FILTER (<> "Proceeds on Disposal" & <> "Gain/Loss")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50009; Verschrottungsdatum; Date)
        {
            CalcFormula = Lookup ("FA Depreciation Book"."Scrapped at Date" WHERE ("FA No." = FIELD ("No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50010; Verkaufsdatum; Date)
        {
            CalcFormula = Lookup ("FA Depreciation Book"."Disposal Date" WHERE ("FA No." = FIELD ("No.")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(5072450; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            Description = '#RENW16.00.02:R062';
            TableRelation = Item."No." WHERE ("Item Type" = FILTER ("Supplementary Part" | Machine | "Machine Component"));
        }
        field(5483220; "With Quantity"; Boolean)
        {
            Caption = 'With Quantity';
            Description = 'FA';
        }
        field(5483221; "Inserted by FAT"; Boolean)
        {
            Caption = 'Inserted by FA Template';
            Description = 'FA';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Description")
        {
        }
        key(Key3; "FA Class Code")
        {
        }
        key(Key4; "FA Subclass Code")
        {
        }
        key(Key5; "Component of Main Asset", "Main Asset/Component")
        {
        }
        key(Key6; "FA Location Code")
        {
        }
        key(Key7; "Global Dimension 1 Code")
        {
        }
        key(Key8; "Global Dimension 2 Code")
        {
        }
        key(Key9; "FA Posting Group")
        {
        }
        key(Key10; Description)
        {
        }
        key(Key11; "Item No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Description, "FA Class Code")
        {
        }
    }
}

