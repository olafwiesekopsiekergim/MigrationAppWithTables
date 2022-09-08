table 5100911 "DIS - Partner Mapping"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Partner Mapping';

    fields
    {
        field(1; "Partner Code"; Code[20])
        {
            Caption = 'Partner Code';
            NotBlank = true;
            TableRelation = "DIS - Partner";
        }
        field(2; "Mapping Code"; Code[20])
        {
            Caption = 'Mapping Code';
            NotBlank = true;
            TableRelation = "DIS - Mapping";
        }
        field(5; "Received Mapping Code"; Code[20])
        {
            Caption = 'Received Mapping Code';
            TableRelation = "DIS - Mapping";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(30; "Empty Xml Repository Handling"; Option)
        {
            Caption = 'Messages without XML Repository';
            OptionCaption = 'Delete,Send';
            OptionMembers = Delete,Send;
        }
        field(45; "Repeat Record Pool BreakLoop"; Boolean)
        {
            Caption = 'Repeat if BreakLoop for Record Pool';
        }
        field(46; "Max. Count Repetitions"; Integer)
        {
            Caption = 'Maximum Count Repetitions';
            InitValue = 100;
        }
        field(80; Categories; Boolean)
        {
            CalcFormula = Exist ("DIS - Linked Category" WHERE ("Partner Code" = FIELD ("Partner Code"),
                                                               "Mapping Code" = FIELD ("Mapping Code"),
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
    }

    keys
    {
        key(Key1; "Partner Code", "Mapping Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

