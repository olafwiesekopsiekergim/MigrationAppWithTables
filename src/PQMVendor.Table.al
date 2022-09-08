table 5292853 "PQM - Vendor"
{
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        New Key:
    //                                        - "Quote No.,Document No.,Status"

    Caption = 'PQM Vendor';

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document No.';
            NotBlank = true;
        }
        field(2; "Document Line No."; Integer)
        {
            Caption = 'Document Line No.';
            NotBlank = true;
        }
        field(3; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(10; Name; Text[50])
        {
            CalcFormula = Lookup (Vendor.Name WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Name';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Name 2"; Text[50])
        {
            CalcFormula = Lookup (Vendor."Name 2" WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Name 2';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; Address; Text[50])
        {
            CalcFormula = Lookup (Vendor.Address WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Address';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Address 2"; Text[50])
        {
            CalcFormula = Lookup (Vendor."Address 2" WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Address 2';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; City; Text[30])
        {
            CalcFormula = Lookup (Vendor.City WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'City';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; Contact; Text[50])
        {
            CalcFormula = Lookup (Vendor.Contact WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Contact';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50; "Phone No."; Text[30])
        {
            CalcFormula = Lookup (Vendor."Phone No." WHERE ("No." = FIELD ("Vendor No.")));
            Caption = 'Phone No.';
            Description = 'LU Venor';
            Editable = false;
            FieldClass = FlowField;
        }
        field(100; "Lead Time Calculation"; DateFormula)
        {
            Caption = 'Lead Time Calculation';
        }
        field(110; "Vendor Item No."; Text[20])
        {
            Caption = 'Vendor Item No.';
        }
        field(200; Status; Option)
        {
            Caption = 'Status';
            Description = ' ,Quote,Created,Verified,Placed,Not Placed';
            OptionCaption = ' ,Quote,Created,Verified,Placed,Not Placed';
            OptionMembers = " ",Quote,Created,Verified,Placed,"Not Placed";
        }
        field(211; "Quote No."; Code[20])
        {
            Caption = 'Quote No.';
            Description = 'CF';
            Editable = false;
            TableRelation = "Purchase Header"."No." WHERE ("Document Type" = CONST (Quote));
        }
        field(212; "Quote Line No."; Integer)
        {
            Caption = 'Quote Line No.';
            Description = 'CF';
            Editable = false;
            TableRelation = "Purchase Line"."Line No." WHERE ("Document Type" = CONST (Quote),
                                                              "Document No." = FIELD ("Document No."));
        }
    }

    keys
    {
        key(Key1; "Document No.", "Document Line No.", "Vendor No.")
        {
            Clustered = true;
        }
        key(Key2; "Document No.", "Document Line No.", Status)
        {
        }
        key(Key3; "Quote No.", "Document No.", Status)
        {
        }
    }

    fieldgroups
    {
    }
}

