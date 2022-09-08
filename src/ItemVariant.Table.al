table 5401 "Item Variant"
{
    // #PMW16.00.00.02:T515 10.09.09 DEMSR.IST
    //   Check related item unit of measure on delete
    // 
    // #PMW16.00.01.02:T503 25.02.10 DEMSR.IST
    //   Changes due to UI and programming standards
    // 
    // #PMW17.00.00.02:T501 14.05.13 DEMSR.IST
    //   Corrections due to code review
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #PXW18.00.01:T103 11.06.2015 DEMSR.IST
    //   Transfer Default Mfg. Dimensions from item on insert;
    //   Delete Default Mfg. Dimensions on delete
    //   New fields and functions
    // 
    // :DMW15.01:26:01 #New fields: "Routing No.","Production BOM No.","Created from Prototype","Prototype BOM Type","Prototype BOM No."
    //                 #"Description 3+4+5"
    // 
    // #DMW16.00.02.03:A0016 08.06.11 DEMSR.SSZ
    //   #New Key: "Production BOM No."
    // #DMW16.00.03.01:A009 05.12.11 DEMSR.LV
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Item Variant';
    DataCaptionFields = "Item No.", "Code", Description;

    fields
    {
        field(1; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            NotBlank = true;
            TableRelation = Item;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(5012700; "Shortcut Mfg. Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 1 Code';
            Description = '#PXW18.00.01:T103';
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Item Variant Mfg. Dim. No." = CONST (1));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5012701; "Shortcut Mfg. Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Mfg. Dimension 2 Code';
            Description = '#PXW18.00.01:T103';
            TableRelation = "Manufacturing Dimension Value".Code WHERE ("Item Variant Mfg. Dim. No." = CONST (2));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5013400; "Routing No."; Code[20])
        {
            Caption = 'Routing No.';
            Description = ':DMW15.01:26:01';
            TableRelation = "Routing Header";
        }
        field(5013410; "Production BOM No."; Code[20])
        {
            Caption = 'Production BOM No.';
            Description = ':DMW15.01:26:01';
            TableRelation = "Production BOM Header";
        }
        field(5013420; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
            Description = ':DMW15.01:26:01';
        }
        field(5013430; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
            Description = ':DMW15.01:26:01';
        }
        field(5013440; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
            Description = ':DMW15.01:26:01';
        }
        field(5013520; "Created from Prototype"; Boolean)
        {
            Caption = 'Created from Prototype';
            Description = ':DMW15.01:26:01';
            Editable = false;
        }
        field(5013530; "Prototype BOM Type"; Option)
        {
            Caption = 'Prototype BOM Type';
            Description = ':DMW15.01:26:01';
            OptionCaption = 'Document BOM,Construction Order';
            OptionMembers = "Document BOM","Construction Order";
        }
        field(5013540; "Prototype BOM No."; Code[20])
        {
            Caption = 'Prototype BOM No.';
            Description = ':DMW15.01:26:01';
            TableRelation = IF ("Prototype BOM Type" = CONST ("Document BOM")) "Document BOM"."Document No."
            ELSE
            IF ("Prototype BOM Type" = CONST ("Construction Order")) "Construction Header"."No.";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Item No.", "Code")
        {
            Clustered = true;
        }
        key(Key2; "Code")
        {
        }
        key(Key3; "Production BOM No.")
        {
        }
    }

    fieldgroups
    {
    }
}

