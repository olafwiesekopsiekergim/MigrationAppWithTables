table 5000088 "Cost Account Schedule Line"
{
    Caption = 'Cost Account Schedule Line';

    fields
    {
        field(1; "Schedule Name"; Code[10])
        {
            Caption = 'Schedule Name';
            TableRelation = "Cost Account Schedule Name";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Row No."; Code[10])
        {
            Caption = 'Row No.';
        }
        field(4; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(5; Totaling; Text[250])
        {
            Caption = 'Totaling';
            TableRelation = IF ("Totaling Type" = CONST ("Posting Accounts"),
                                Area = CONST ("Cost Account")) "Cost Account"
            ELSE
            IF ("Totaling Type" = CONST ("Total Accounts"),
                                         Area = CONST ("Cost Account")) "Cost Account"
            ELSE
            IF ("Totaling Type" = CONST ("Posting Accounts"),
                                                  Area = CONST ("Project Account")) "Project Account"
            ELSE
            IF ("Totaling Type" = CONST ("Total Accounts"),
                                                           Area = CONST ("Project Account")) "Project Account"
            ELSE
            IF ("Totaling Type" = CONST ("Posting Accounts"),
                                                                    Area = CONST ("Reference Unit")) "Reference Unit"
            ELSE
            IF ("Totaling Type" = CONST ("Total Accounts"),
                                                                             Area = CONST ("Reference Unit")) "Reference Unit"
            ELSE
            IF ("Totaling Type" = CONST ("Posting Accounts"),
                                                                                      Area = CONST ("Project Reference Unit")) "Reference Unit"
            ELSE
            IF ("Totaling Type" = CONST ("Total Accounts"),
                                                                                               Area = CONST ("Project Reference Unit")) "Reference Unit"
            ELSE
            IF ("Totaling Type" = CONST ("Posting Accounts"),
                                                                                                        Area = CONST ("G/L Account")) "G/L Account"
            ELSE
            IF ("Totaling Type" = CONST ("Total Accounts"),
                                                                                                                 Area = CONST ("G/L Account")) "G/L Account";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(6; "Totaling Type"; Option)
        {
            Caption = 'Totaling Type';
            OptionCaption = 'Posting Accounts,Total Accounts,Formula,,,Set Base For Percent';
            OptionMembers = "Posting Accounts","Total Accounts",Formula,,,"Set Base For Percent";
        }
        field(7; "New Page"; Boolean)
        {
            Caption = 'New Page';
        }
        field(11; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(14; "Budget Filter"; Code[10])
        {
            Caption = 'Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "Cost Accounting Budget Name";
        }
        field(15; "Business Unit Filter"; Code[10])
        {
            Caption = 'Business Unit Filter';
            FieldClass = FlowFilter;
            TableRelation = "Business Unit";
        }
        field(16; Show; Option)
        {
            Caption = 'Show';
            OptionCaption = 'Yes,No,If Any Column Not Zero,When Positive Balance,When Negative Balance';
            OptionMembers = Yes,No,"If Any Column Not Zero","When Positive Balance","When Negative Balance";
        }
        field(17; "Area"; Option)
        {
            Caption = 'Area';
            OptionCaption = 'Cost Account,Project Account,Reference Unit,Project Reference Unit,G/L Account';
            OptionMembers = "Cost Account","Project Account","Reference Unit","Project Reference Unit","G/L Account";
        }
        field(18; "Dimension 1 Filter"; Code[20])
        {
            Caption = 'Dimension 1 Filter';
            FieldClass = FlowFilter;
        }
        field(19; "Dimension 2 Filter"; Code[20])
        {
            Caption = 'Dimension 2 Filter';
            FieldClass = FlowFilter;
        }
        field(20; "Dimension 3 Filter"; Code[20])
        {
            Caption = 'Dimension 3 Filter';
            FieldClass = FlowFilter;
        }
        field(21; "Dimension 4 Filter"; Code[20])
        {
            Caption = 'Dimension 4 Filter';
            FieldClass = FlowFilter;
        }
        field(22; "Dimension 1 Totaling"; Text[250])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 1 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(23; "Dimension 2 Totaling"; Text[250])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 2 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(24; "Dimension 3 Totaling"; Text[250])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 3 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(25; "Dimension 4 Totaling"; Text[250])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 4 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(26; Bold; Boolean)
        {
            Caption = 'Bold';
        }
        field(27; Italic; Boolean)
        {
            Caption = 'Italic';
        }
        field(28; Underline; Boolean)
        {
            Caption = 'Underline';
        }
        field(29; "Show Opposite Sign"; Boolean)
        {
            Caption = 'Show Opposite Sign';
        }
        field(30; "Amount Type"; Option)
        {
            Caption = 'Amount Type';
            OptionCaption = 'Amount,Amount Fix,Amount Var';
            OptionMembers = Amount,"Amount Fix","Amount Var";
        }
        field(31; Overhead; Boolean)
        {
            Caption = 'Overhead';
        }
        field(32; "Row Type"; Option)
        {
            Caption = 'Row Type';
            OptionCaption = 'Net Change,Balance at Date,Beginning Balance';
            OptionMembers = "Net Change","Balance at Date","Beginning Balance";
        }
        field(33; "Double Underline"; Boolean)
        {
            Caption = 'Double Underline';
        }
        field(34; "G/L Budget Filter"; Code[10])
        {
            Caption = 'G/L Budget Filter';
            FieldClass = FlowFilter;
            TableRelation = "G/L Budget Name";
        }
        field(35; "Bal. Dimension 1 Filter"; Code[20])
        {
            Caption = 'Bal. Dimension 1 Filter';
            FieldClass = FlowFilter;
        }
        field(36; "Bal. Dimension 1 Totaling"; Text[250])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Bal. Dimension 1 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; "Schedule Name", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

