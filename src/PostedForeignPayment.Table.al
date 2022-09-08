table 5001947 "Posted Foreign Payment"
{
    // ================================================================================
    // (c) akquinet dynamic solutions GmbH, All rights reserved
    // 
    // 5001910 - Electronic Payment
    // 5001920 - Foreign Payment
    // 
    // ID       Date        Case     Initials   Description
    // --------------------------------------------------------------------------------
    // PMT9.18  21.10.2015  BASE     akq        Implementing PMT9.18
    // ================================================================================

    Caption = 'Posted Foreign Payment';

    fields
    {
        field(1; Number; Code[20])
        {
            Caption = 'Number';
            Editable = false;
        }
        field(2; "Payment No."; Code[20])
        {
            Caption = 'Payment No.';
        }
        field(3; "Vendor Code"; Code[20])
        {
            Caption = 'Vendor Code';
            Editable = false;
            TableRelation = Vendor;
        }
        field(4; "Vendor Document No."; Code[35])
        {
            Caption = 'Vendor Document No.';
            Editable = false;
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            Editable = false;
            OptionCaption = ' ,Payment,Invoice,Credit Memo';
            OptionMembers = " ",Payment,Invoice,"Credit Memo";
        }
        field(6; "Order Note"; Text[35])
        {
            Caption = 'Order Note';
            Editable = false;
        }
        field(7; Purposal; Text[35])
        {
            Caption = 'Purposal';
            Editable = false;
        }
        field(8; "Document Date"; Date)
        {
            Caption = 'Document Date';
            Editable = false;
        }
        field(9; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
        }
        field(10; "Bank Account"; Code[20])
        {
            Caption = 'Bank Account';
            TableRelation = "Bank Account";
        }
        field(11; "Instruction Code 1"; Code[2])
        {
            Caption = 'Instruction Code 1';
            Editable = false;
            TableRelation = "Direction Code";
        }
        field(12; "Instruction Code 2"; Code[2])
        {
            Caption = 'Instruction Code 2';
            Editable = false;
            TableRelation = "Direction Code";
        }
        field(14; Beneficiary; Code[20])
        {
            Caption = 'Beneficiary';
            TableRelation = Vendor;
        }
        field(15; "Additional Instruction"; Text[25])
        {
            Caption = 'Additional Instruction';
            Editable = false;
        }
        field(16; "Charges Code"; Option)
        {
            Caption = 'Charges Code';
            Editable = false;
            OptionCaption = 'Transf. clients/other beneficiaries,all charges client,all charges recipient ';
            OptionMembers = "Transf. clients/other beneficiaries","all charges client","all charges recipient ";
        }
        field(17; "Payment Type"; Code[2])
        {
            Caption = 'Payment Type';
            Editable = false;
            TableRelation = "Payment Type";
        }
        field(27; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
            Editable = false;
        }
        field(28; "Vendor Bank"; Code[20])
        {
            Caption = 'Vendor Bank';
            Editable = false;
        }
        field(29; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
            Editable = false;
        }
        field(30; "Bank Name 2"; Text[50])
        {
            Caption = 'Bank Name 2';
            Editable = false;
        }
        field(31; "Bank Street"; Text[50])
        {
            Caption = 'Bank Street';
            Editable = false;
        }
        field(32; "Bank City"; Text[35])
        {
            Caption = 'Bank City';
            Editable = false;
        }
        field(33; Name; Text[50])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(34; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
            Editable = false;
        }
        field(35; Street; Text[50])
        {
            Caption = 'Street';
            Editable = false;
        }
        field(36; City; Text[35])
        {
            Caption = 'City';
            Editable = false;
        }
        field(37; "Bank Country Code"; Code[3])
        {
            Caption = 'Bank Country Code';
            Editable = false;
            TableRelation = "Bank Country Code";
        }
        field(38; "Bank Country Name"; Code[7])
        {
            Caption = 'Bank Country Name';
            Editable = false;
        }
        field(39; "Country Code"; Code[3])
        {
            Caption = 'Country Code';
            Editable = false;
            TableRelation = "Bank Country Code";
        }
        field(40; "Short Country Name"; Code[7])
        {
            Caption = 'Short Country Name';
            Editable = false;
        }
        field(41; "Account No."; Code[35])
        {
            Caption = 'Account No.';
            Editable = false;
        }
        field(42; "Payment Curreny"; Code[10])
        {
            Caption = 'Payment Curreny';
            Editable = false;
            TableRelation = Currency;
        }
        field(43; Amount; Decimal)
        {
            Caption = 'Amount';
            Editable = false;
        }
        field(44; "Instruction Currency"; Option)
        {
            Caption = 'Instruction Currency';
            Editable = false;
            OptionCaption = 'Amount in foreign currency,,Amount in EURO';
            OptionMembers = "Amount in foreign currency",,"Amount in EURO";
        }
        field(45; "Announcement to Bundesbank"; Boolean)
        {
            Caption = 'Announcement to Bundesbank';
            Editable = false;
        }
        field(46; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
        }
        field(47; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(48; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
        }
        field(49; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(50; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            Editable = false;
        }
        field(51; "Charges Account"; Code[20])
        {
            Caption = 'Charges Account';
            TableRelation = "Bank Account";
        }
        field(52; "Currency Amount"; Decimal)
        {
            Caption = 'Currency Amount';
        }
        field(53; "No. of Registration Sets"; Integer)
        {
            CalcFormula = Count ("Registration Set" WHERE ("Document No." = FIELD (Number)));
            Caption = 'No. of Registration Sets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(54; "Sum Registration Set"; Decimal)
        {
            CalcFormula = Sum ("Posted Registration Set".Amount WHERE ("Document No." = FIELD (Number)));
            Caption = 'Sum Registration Set';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; Posted; Boolean)
        {
            Caption = 'Posted';
            Editable = false;
        }
        field(61; "Registration Amount"; Decimal)
        {
            Caption = 'Registration Amount';
        }
        field(70; "Instruction Code Descr. 1"; Text[50])
        {
            Caption = 'Instruction Code Descr. 1';
        }
        field(71; "Instruction Code Descr. 2"; Text[50])
        {
            Caption = 'Instruction Code Descr. 2';
        }
        field(72; "Payment Type Text"; Text[70])
        {
            Caption = 'Payment Type Text';
        }
        field(73; "Original Currency Code"; Code[10])
        {
            Caption = 'Original Currency Code';
            TableRelation = Currency;
        }
        field(74; "Original Amount"; Decimal)
        {
            Caption = 'Original Amount';
        }
        field(100; GenJnlTemplateName; Code[10])
        {
            Caption = 'GenJnlTemplateName';
        }
        field(101; GenJnlBatch; Code[10])
        {
            Caption = 'GenJnlBatch';
        }
        field(102; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(103; "Bank Customer No."; Code[10])
        {
            Caption = 'Bank Customer No.';
        }
        field(104; IBAN; Code[50])
        {
            Caption = 'IBAN';
        }
        field(105; "EU-Payment"; Option)
        {
            Caption = 'EU-Payment';
            OptionCaption = ' ,EU-Standard,EU-Expresstransfer';
            OptionMembers = " ","EU-Standard","EU-Expresstransfer";
        }
    }

    keys
    {
        key(Key1; "Payment No.", Number)
        {
            Clustered = true;
            SumIndexFields = Amount;
        }
        key(Key2; "Vendor Code", "Vendor Document No.", "Document Type")
        {
        }
        key(Key3; GenJnlTemplateName, GenJnlBatch, "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

