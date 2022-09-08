table 99000771 "Production BOM Header"
{
    // :PMW13.70:1:1
    //   # Zusatzfeld 5012560 "Fertigungsstücklistenart"
    // 
    // :PMW13.70:1:2
    //   # Eigene Nummernserie für Rezepturen
    // 
    // :PMW14.02:55:1
    //   # New field 5012400 "Max. Incorporation %"
    // 
    // :PMW15.00:241:1
    //   # Changes due to UI and programming standards
    // 
    // :PMW16.00:109:1
    //   # LookupFormID and DrillDownFormID changed from "Production BOM List" to "Production BOM/Recipe List" due to transformation
    // 
    // #PMW16.00.00.02:T522 14.09.09 DEMSR.IST
    //   Check usage in production structure
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.02:T101 10.04.2014 DEMSR.IST
    //   Delete Ingredients
    //   Check Ingredients if status is changed
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders: new field 5013400
    // 
    // #RAW18.00.00.01:T500 11.06.15 DEMSR.BKR
    //   Local and Global Variable had the same name

    Caption = 'Production BOM Header';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(11; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(12; "Search Name"; Code[50])
        {
            Caption = 'Search Name';
        }
        field(21; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure";
        }
        field(22; "Low-Level Code"; Integer)
        {
            Caption = 'Low-Level Code';
            Editable = false;
        }
        field(25; Comment; Boolean)
        {
            CalcFormula = Exist ("Manufacturing Comment Line" WHERE ("Table Name" = CONST ("Production BOM Header"),
                                                                    "No." = FIELD ("No.")));
            Caption = 'Comment';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Editable = false;
        }
        field(43; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(45; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Certified,Under Development,Closed';
            OptionMembers = New,Certified,"Under Development",Closed;
        }
        field(50; "Version Nos."; Code[10])
        {
            Caption = 'Version Nos.';
            TableRelation = "No. Series";
        }
        field(51; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5012400; "Max. Incorporation %"; Decimal)
        {
            BlankZero = true;
            Caption = 'Max. Incorporation %';
            DecimalPlaces = 0 : 2;
            Description = ':PMW14.02:55:1';
            MaxValue = 100;
            MinValue = 0;
        }
        field(5012560; "Production BOM Type"; Option)
        {
            Caption = 'Production BOM Type';
            Description = ':PMW13.70:1:1';
            OptionCaption = ' ,Recipe';
            OptionMembers = " ",Recipe;
        }
        field(5013400; "No. of Change Orders"; Integer)
        {
            CalcFormula = Count ("Change Order" WHERE ("Source Type" = CONST ("Production BOM"),
                                                      "Source No." = FIELD ("No.")));
            Caption = 'No. of Change Orders';
            Description = '#DMW17.10.01:T107';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5060455; "Last Modified by"; Code[50])
        {
            Caption = 'Last Modified by';
            Description = '#RAW16.00:T100';
            Editable = false;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Search Name")
        {
        }
        key(Key3; Description)
        {
        }
        key(Key4; Status)
        {
        }
    }

    fieldgroups
    {
    }
}

