table 5100930 "DIS - Record Pool"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Record Pool';
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(8; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(30; "Table No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table No.';
            NotBlank = true;
            TableRelation = AllObjWithCaption."Object ID" WHERE ("Object Type" = CONST (Table));
        }
        field(31; "Table Caption"; Text[249])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table No.")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(80; Categories; Boolean)
        {
            CalcFormula = Exist ("DIS - Linked Category" WHERE ("Record Pool Code" = FIELD (Code),
                                                               "Category Code" = FIELD ("Category Filter")));
            Caption = 'Categories';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Category Filter"; Code[20])
        {
            Caption = 'Category Filter';
            FieldClass = FlowFilter;
        }
        field(82; "Record Pool Fields"; Boolean)
        {
            CalcFormula = Exist ("DIS - Record Pool Field" WHERE ("Record Pool Code" = FIELD (Code)));
            Caption = 'Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(83; "Record Pool Partner"; Boolean)
        {
            CalcFormula = Exist ("DIS - Record Pool Partner" WHERE ("Record Pool Code" = FIELD (Code)));
            Caption = 'Partner';
            Editable = false;
            FieldClass = FlowField;
        }
        field(85; "Record Pool Entries"; Integer)
        {
            CalcFormula = Count ("DIS - Record Pool Entry" WHERE ("Record Pool Code" = FIELD (Code)));
            Caption = 'Record Pool Entries Count';
            Editable = false;
            FieldClass = FlowField;
        }
        field(86; "Record Pool Entries Unproc."; Integer)
        {
            CalcFormula = Count ("DIS - Record Pool Entry" WHERE ("Record Pool Code" = FIELD (Code),
                                                                 Status = FILTER (< Processed)));
            Caption = 'Unprocessed Record Pool Entries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(87; "Record Pool Filter"; Boolean)
        {
            CalcFormula = Exist ("DIS - Record Pool Filter" WHERE ("Record Pool Code" = FIELD (Code)));
            Caption = 'Filter';
            Editable = false;
            FieldClass = FlowField;
        }
        field(88; "Related Tables"; Boolean)
        {
            CalcFormula = Exist ("DIS - Rec. Pool Related Table" WHERE ("Record Pool Code" = FIELD (Code)));
            Caption = 'Related Tables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(90; "Unprocessed Handling"; Option)
        {
            Caption = 'Unprocessed Entries';
            OptionCaption = 'Processed,Created';
            OptionMembers = Processed,Created;
        }
        field(91; "Error Handling Processed"; Option)
        {
            Caption = 'Processed Entries when Error';
            OptionCaption = 'Created,Processed';
            OptionMembers = Created,Processed;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

