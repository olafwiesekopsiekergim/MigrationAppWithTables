table 5157916 "Target Calendar"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.13   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'TARGET Calendar';

    fields
    {
        field(1; Date; Date)
        {
            Caption = 'Date';
        }
        field(2; Day; Text[30])
        {
            CalcFormula = Lookup (Date."Period Name" WHERE ("Period Type" = CONST (Date),
                                                           "Period Start" = FIELD (Date)));
            Caption = 'Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(4; "Period No."; Integer)
        {
            CalcFormula = Lookup (Date."Period No." WHERE ("Period Type" = CONST (Date),
                                                          "Period Start" = FIELD (Date)));
            Caption = 'Period No.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Date Type"; Option)
        {
            Caption = 'Date Type';
            OptionCaption = ',Target Date,DD Date';
            OptionMembers = ,"Target Date","DD Date";
        }
        field(6; "Direct Debit Accomplished"; Boolean)
        {
            Caption = 'Direct Debit Accomplished';
        }
    }

    keys
    {
        key(Key1; Date)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

