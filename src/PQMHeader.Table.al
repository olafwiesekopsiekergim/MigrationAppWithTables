table 5292851 "PQM - Header"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works

    Caption = 'PQM Header';

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
        field(20; "Creation Date"; Date)
        {
            Caption = 'Creation Date';
            Description = 'ne';
            Editable = false;
        }
        field(21; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            Editable = false;
        }
        field(60; "Person Responsible"; Code[20])
        {
            Caption = 'Person Responsible';
            TableRelation = Resource;
        }
        field(61; "Person Responsible 2"; Code[20])
        {
            Caption = 'Person Responsible 2';
            TableRelation = Resource;
        }
        field(80; "Assigned Vendors"; Integer)
        {
            CalcFormula = Count("PQM - Vendor" WHERE("Document No." = FIELD("No."),
                                                      "Document Line No." = CONST(0)));
            Caption = 'Assigned Vendors';
            Editable = false;
            FieldClass = FlowField;
        }
        field(81; "Assign Vendors autom."; Boolean)
        {
            Caption = 'Assign Vendors autom.';
        }
        field(82; "Assign Vendors per Line"; Boolean)
        {
            Caption = 'Assign Vendors per Line';
        }
        field(85; "Show Vendor Lead Time Calc."; Boolean)
        {
            Caption = 'Show Vendor Lead Time Calc.';
        }
        field(86; "Show Exp. Receipt Date"; Boolean)
        {
            Caption = 'Show Exp. Receipt Date';
        }
        field(97; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(5292650; "Project No."; Code[20])
        {
            Caption = 'Project No.';
            Description = 'TR Projekt';
            Editable = false;
            TableRelation = Job;
        }
        field(5292651; "Job No."; Code[20])
        {
            Caption = 'Job No.';
            Description = 'TR Projekt';
            Editable = false;
            TableRelation = Job;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

