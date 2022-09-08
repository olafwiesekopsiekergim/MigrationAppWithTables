table 5138406 "CESS - VAT Validation Entry"
{
    Caption = 'VAT RegNo Validation Entry';
    Permissions = TableData "General Ledger Setup" = r;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
        }
        field(10; "Source Type"; Integer)
        {
            Caption = 'Source Type';
        }
        field(11; "Source ID"; Code[200])
        {
            Caption = 'Source ID';
        }
        field(12; "Address Type"; Option)
        {
            Caption = 'Address Type';
            OptionCaption = ' ,General,Invoice,Shipment';
            OptionMembers = " ",General,Invoice,Shipment;
        }
        field(15; "Customer No."; Code[20])
        {
            Caption = 'Customer No.';
            TableRelation = Customer;
        }
        field(20; "Validation Timestamp"; DateTime)
        {
            Caption = 'Validation Timestamp';
            Editable = false;
        }
        field(21; "Validated By"; Code[50])
        {
            Caption = 'Validated By';
            Editable = false;
        }
        field(50; "Copied from Entry No."; Integer)
        {
            Caption = 'Copied from Entry No.';
        }
        field(100; Name; Text[250])
        {
            Caption = 'Name';
        }
        field(101; Address; Text[250])
        {
            Caption = 'Address';
        }
        field(102; City; Text[250])
        {
            Caption = 'City';
        }
        field(103; "Post Code"; Code[30])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(104; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(109; "VAT Registration No."; Text[20])
        {
            Caption = 'VAT Registration No.';
        }
        field(110; "Confirmation Request"; Boolean)
        {
            Caption = 'Confirmation Request';
        }
        field(200; "Validation Result Code"; Text[10])
        {
            Caption = 'Validation Result';
        }
        field(201; "Result Text 1"; Text[250])
        {
            Caption = 'Result Text 1';
        }
        field(202; "Result Text 2"; Text[250])
        {
            Caption = 'Result Text 2';
        }
        field(203; "Result Text 3"; Text[250])
        {
            Caption = 'Result Text 3';
        }
        field(204; "Result Text 4"; Text[250])
        {
            Caption = 'Result Text 4';
        }
        field(205; "Result Text 5"; Text[250])
        {
            Caption = 'Result Text 5';
        }
        field(206; Valid; Boolean)
        {
            Caption = 'Valid';
        }
        field(500; Response; BLOB)
        {
            Caption = 'Response';
        }
        field(50000; "Salesperson Code"; Code[10])
        {
            CalcFormula = Lookup (Customer."Salesperson Code" WHERE ("No." = FIELD ("Source ID")));
            Description = '#AT';
            FieldClass = FlowField;
        }
        field(50001; Blocked; Boolean)
        {
            CalcFormula = Exist (Customer WHERE ("No." = FIELD ("Source ID"),
                                                Blocked = FILTER (<> " ")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50002; "Geschäftsbereich"; Code[20])
        {
            CalcFormula = Lookup ("Default Dimension"."Dimension Value Code" WHERE ("Dimension Code" = CONST ('GB'),
                                                                                   "Table ID" = FIELD ("Source Type"),
                                                                                   "No." = FIELD ("Source ID")));
            Description = '#AT';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Source Type", "Source ID", "Validation Timestamp")
        {
        }
        key(Key3; "Validation Timestamp")
        {
        }
        key(Key4; "Customer No.")
        {
        }
    }

    fieldgroups
    {
    }
}

