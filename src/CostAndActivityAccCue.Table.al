table 5000310 "Cost And Activity Acc. Cue"
{
    Caption = 'Cost Accounting';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "G/L Acc. wh. Assignm. CA"; Integer)
        {
            CalcFormula = Count ("G/L Account" WHERE ("Income/Balance" = CONST ("Income Statement"),
                                                     "Account Type" = FILTER (Posting | "Begin-Total"),
                                                     "Cost Account No." = FILTER (''),
                                                     "Project Account No." = FILTER ('')));
            Caption = 'G/L Accounts (Income Statement) without Assignment to Cost and Activity Accounting';
            FieldClass = FlowField;
        }
        field(3; "Cost Accounts - Blocked"; Integer)
        {
            CalcFormula = Count ("Cost Account" WHERE (Blocked = CONST (true)));
            Caption = 'Cost Accounts - Blocked';
            FieldClass = FlowField;
        }
        field(4; "Project Accounts - Blocked"; Integer)
        {
            CalcFormula = Count ("Project Account" WHERE (Blocked = CONST (true)));
            Caption = 'Project Accounts - Blocked';
            FieldClass = FlowField;
        }
        field(10; "Not trans. G/L Entry to CA"; Integer)
        {
            CalcFormula = Count ("G/L Entry" WHERE ("Entry No." = CONST (-1),
                                                   "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Not transferred G/L Entries to Cost Account Ledger Entries';
            FieldClass = FlowField;
        }
        field(20; "Not trans. ResEntry to CA"; Integer)
        {
            CalcFormula = Count ("Res. Ledger Entry" WHERE ("Posting Date" = FIELD ("Date Filter"),
                                                           "Entry No." = CONST (-1),
                                                           "Entry Type" = CONST (Usage),
                                                           "Global Dimension 1 Code" = FILTER (<> '')));
            Caption = 'Resource Ledger Entry - to Cost Account Ledger Entries not Transferred';
            FieldClass = FlowField;
        }
        field(30; "Not trans. CapEntry to CA"; Integer)
        {
            CalcFormula = Count ("Capacity Ledger Entry" WHERE ("Posting Date" = FIELD ("Date Filter"),
                                                               "Entry No." = CONST (-1),
                                                               "Global Dimension 1 Code" = FILTER (<> '')));
            Caption = 'Capacity Ledger Entry  - to Cost Account Ledger Entries not transferred';
            FieldClass = FlowField;
        }
        field(110; "Not trans. G/L Entry to PA"; Integer)
        {
            CalcFormula = Count ("G/L Entry" WHERE ("Entry No." = CONST (-2),
                                                   "Posting Date" = FIELD ("Date Filter")));
            Caption = 'Not transferred G/L Entries to Project Account Ledger Entries';
            FieldClass = FlowField;
        }
        field(120; "Not trans. ResEntry to PA"; Integer)
        {
            CalcFormula = Count ("Res. Ledger Entry" WHERE ("Posting Date" = FIELD ("Date Filter"),
                                                           "Entry No." = CONST (-1),
                                                           "Entry Type" = CONST (Usage),
                                                           "Global Dimension 2 Code" = FILTER (<> '')));
            Caption = 'Resource Ledger Entry - by Reference Unit Journal not transferred';
            FieldClass = FlowField;
        }
        field(130; "Not trans. CapEntry to PA"; Integer)
        {
            CalcFormula = Count ("Capacity Ledger Entry" WHERE ("Posting Date" = FIELD ("Date Filter"),
                                                               "Entry No." = CONST (-2),
                                                               "Global Dimension 2 Code" = FILTER (<> '')));
            Caption = 'Capacity Ledger Entry - by Reference Unit Journal not transferred';
            FieldClass = FlowField;
        }
        field(200; "Not created Alloc. Entries"; Integer)
        {
            CalcFormula = Count ("Allocation Header" WHERE (Code = CONST ('-')));
            Caption = 'Allocation List - Not created Allocations Entries';
            FieldClass = FlowField;
        }
        field(1000; "Date Filter"; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
        }
        field(1001; "Month Filter"; Date)
        {
            FieldClass = FlowFilter;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

