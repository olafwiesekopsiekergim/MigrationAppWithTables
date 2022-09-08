table 5157822 "SEPA Follow Up"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   25.03.14   Extended Application
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'SEPA Follow Up';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(2; "Account No."; Code[20])
        {
            Caption = 'Account No.';
            Editable = false;
            TableRelation = IF ("Account Type" = CONST (Customer)) Customer
            ELSE
            IF ("Account Type" = CONST (Vendor)) Vendor;
            ValidateTableRelation = false;
        }
        field(3; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            ClosingDates = true;
            Editable = false;
        }
        field(4; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            Editable = false;
        }
        field(5; "Pmt. Import Entry No."; Integer)
        {
            Caption = 'Pmt. Import Entry No.';
            Editable = false;
            TableRelation = "Pmt. Import Line";
        }
        field(6; "Mandate ID"; Code[54])
        {
            Caption = 'Mandate ID';
            Editable = false;
            TableRelation = "Bank Account Mandate";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(7; "Sepa Error Code"; Code[10])
        {
            Caption = 'Sepa Error Code';
            Editable = false;
            TableRelation = "SEPA Error Code";
        }
        field(8; Description; Text[80])
        {
            CalcFormula = Lookup ("SEPA Error Code".Description WHERE (Code = FIELD ("Sepa Error Code")));
            Caption = 'Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Done By"; Code[50])
        {
            Caption = 'Done By';
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(10; "Done At"; DateTime)
        {
            Caption = 'Done at';
            Editable = false;
        }
        field(11; Note; Text[80])
        {
            Caption = 'Note';
        }
        field(12; "Account Type"; Option)
        {
            Caption = 'Account Type';
            Editable = false;
            NotBlank = true;
            OptionCaption = 'Customer,Vendor';
            OptionMembers = Customer,Vendor;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

