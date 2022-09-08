table 5000090 "Cost Acc. Schedule Column Lay."
{
    Caption = 'Cost Acc. Schedule Column Layout';

    fields
    {
        field(1; "Column Layout Name"; Code[10])
        {
            Caption = 'Column Layout Name';
            TableRelation = "CostAcc.Sched.Column Lay. Name";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(3; "Column No."; Code[10])
        {
            Caption = 'Column No.';
        }
        field(4; "Column Header"; Text[30])
        {
            Caption = 'Column Header';
        }
        field(5; "Column Type"; Option)
        {
            Caption = 'Column Type';
            InitValue = "Net Change";
            OptionCaption = 'Formula,Net Change,Balance at Date,Rest of Fiscal Year,Entire Fiscal Year,Last Fiscal Year,Year to Date';
            OptionMembers = Formula,"Net Change","Balance at Date","Rest of Fiscal Year","Entire Fiscal Year","Last Fiscal Year","Year to Date";
        }
        field(6; "Entry Type"; Option)
        {
            Caption = 'Entry Type';
            OptionCaption = 'Actual Entries,Budget Entries';
            OptionMembers = "Actual Entries","Budget Entries";
        }
        field(7; "Amount Type"; Option)
        {
            Caption = 'Amount Type';
            OptionCaption = 'Total Amount,Fix Amount,Variable Amount,Quantity';
            OptionMembers = "Total Amount","Fix Amount","Variable Amount",Quantity;
        }
        field(8; Formula; Code[80])
        {
            Caption = 'Formula';
        }
        field(9; "Comparison Date Formula"; DateFormula)
        {
            Caption = 'Comparison Date Formula';
        }
        field(10; "Show Opposite Sign"; Boolean)
        {
            Caption = 'Show Opposite Sign';
        }
        field(11; Show; Option)
        {
            Caption = 'Show';
            InitValue = Always;
            NotBlank = true;
            OptionCaption = 'Always,Never,When Positive,When Negative';
            OptionMembers = Always,Never,"When Positive","When Negative";
        }
        field(12; "Rounding Factor"; Option)
        {
            Caption = 'Rounding Factor';
            OptionCaption = 'None,1,1000,1000000';
            OptionMembers = "None","1","1000","1000000";
        }
        field(13; "Comparison Period Formula"; Code[20])
        {
            Caption = 'Comparison Period Formula';
        }
        field(14; "Dimension 1 Totaling"; Text[80])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 1 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(15; "Dimension 2 Totaling"; Text[80])
        {
            AccessByPermission = TableData Dimension = R;
            Caption = 'Dimension 2 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(16; "Dimension 3 Totaling"; Text[80])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 3 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(17; "Dimension 4 Totaling"; Text[80])
        {
            AccessByPermission = TableData "Dimension Combination" = R;
            Caption = 'Dimension 4 Totaling';
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(18; "Business Unit Totaling"; Text[80])
        {
            Caption = 'Business Unit Totaling';
            TableRelation = "Business Unit";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(50; "Budget Filter"; Text[80])
        {
            Caption = 'Budget Filter';
        }
        field(51; "G/L Budget Filter"; Text[80])
        {
            Caption = 'G/L Budget Filter';
        }
        field(52; "Bal. Dimension 1 Totaling"; Text[80])
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
        key(Key1; "Column Layout Name", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

