table 5171704 "CMNM User Setup"
{
    // //c/sr/16.04.14: - Feldlänge User erweitert auf 50

    Caption = 'User Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
            //This property is currently not supported
            //TestTableRelation = false;
            //The property 'ValidateTableRelation' can only be set if the property 'TableRelation' is set
            //ValidateTableRelation = false;
        }
        field(4; "Signature Type"; Option)
        {
            Caption = 'Use Signature';
            OptionCaption = ' ,Company signature,Personal signature';
            OptionMembers = " ",Company,Personal;
        }
        field(5; Signature; BLOB)
        {
            Caption = 'Signature';
            Description = 'deprecated V3++';
        }
        field(6; Contact; Code[20])
        {
            Caption = 'Contact No.';
            TableRelation = Contact;
        }
        field(7; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            TableRelation = "Salesperson/Purchaser".Code;
        }
        field(8; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource."No.";
        }
        field(9; "No. Signatures"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM Signature" WHERE ("Signature Type" = CONST (Personal),
                                                        "User ID" = FIELD ("User ID")));
            Caption = 'Signature Qty.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "No. Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("CMNM User Permission" WHERE ("User ID" = FIELD ("User ID")));
            Caption = 'Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "User Right"; Option)
        {
            Caption = 'User Permission';
            OptionCaption = 'User,Administrator';
            OptionMembers = User,Administrator;
        }
        field(50; "User E-Mail"; Text[50])
        {
            Caption = 'User E-Mail Address';
        }
        field(100; "PDF Printer Name"; Text[250])
        {
            Caption = 'PDF Printername';
            TableRelation = Printer;
        }
        field(101; "PDF Printer Type"; Option)
        {
            Caption = 'PDF Printer Type';
            OptionCaption = ' ,Bullzip,Biopdf,Broadgun pdfMachine,PdfCreator';
            OptionMembers = " ",Bullzip,Biopdf,Broadgun,PdfCreator;
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

