table 5001940 "Foreign Payment"
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

    Caption = 'Foreign Payment';

    fields
    {
        field(1; Number; Code[20])
        {
            Caption = 'Number';
        }
        field(3; "Vendor Code"; Code[20])
        {
            Caption = 'Vendor Code';
            TableRelation = Vendor;
        }
        field(4; "Vendor Document No."; Code[35])
        {
            Caption = 'Vendor Document No.';
        }
        field(5; "Document Type"; Option)
        {
            Caption = 'Document Type';
            OptionCaption = ' ,Payment,Invoice,Credit Memo,Finance Charge Memo,Reminder,Refund';
            OptionMembers = " ",Payment,Invoice,"Credit Memo","Finance Charge Memo",Reminder,Refund;
        }
        field(6; "Order Note"; Text[35])
        {
            Caption = 'Order Note';
        }
        field(7; Purposal; Text[35])
        {
            Caption = 'Purposal';
        }
        field(8; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(9; "Execution Date"; Date)
        {
            Caption = 'Execution Date';
        }
        field(10; "Bank Account"; Code[20])
        {
            Caption = 'Bank Account';
        }
        field(11; "Instruction Code 1"; Code[2])
        {
            Caption = 'Instruction Code 1';
            TableRelation = "Direction Code";
        }
        field(12; "Instruction Code 2"; Code[2])
        {
            Caption = 'Instruction Code 2';
            TableRelation = "Direction Code";
        }
        field(14; Beneficiary; Code[20])
        {
            Caption = 'Beneficiary';
            NotBlank = true;
            TableRelation = Vendor;
        }
        field(15; "Additional Instruction"; Text[25])
        {
            Caption = 'Additional Instruction';
        }
        field(16; "Charges Code"; Option)
        {
            Caption = 'Charges Codep';
            OptionCaption = 'Transf. clients/other beneficiaries,all charges client,all charges recipient ';
            OptionMembers = "Transf. clients/other beneficiaries","all charges client","all charges recipient ";
        }
        field(17; "Payment Type"; Code[2])
        {
            Caption = 'Payment Type';
            TableRelation = "Payment Type";
        }
        field(27; "SWIFT Code"; Code[20])
        {
            Caption = 'SWIFT Code';
        }
        field(28; "Vendor Bank"; Code[20])
        {
            Caption = 'Vendor Bank';
        }
        field(29; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
        }
        field(30; "Bank Name 2"; Text[50])
        {
            Caption = 'Bank Name 2';
        }
        field(31; "Bank Street"; Text[50])
        {
            Caption = 'Bank Street';
        }
        field(32; "Bank City"; Text[35])
        {
            Caption = 'Bank City';
        }
        field(33; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(34; "Name 2"; Text[50])
        {
            Caption = 'Name 2';
        }
        field(35; Street; Text[50])
        {
            Caption = 'Street';
        }
        field(36; City; Text[35])
        {
            Caption = 'City';
        }
        field(37; "Bank Country Code"; Code[3])
        {
            Caption = 'Bank Country Code';
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
        }
        field(42; "Payment Currency"; Code[10])
        {
            Caption = 'Payment Curreny';
            Editable = true;
            TableRelation = Currency;
        }
        field(43; Amount; Decimal)
        {
            Caption = 'Amount';
            Editable = false;
        }
        field(44; "Currency Instruction"; Option)
        {
            Caption = 'Currency Instruction';
            OptionCaption = 'Amount in foreign currency,,Amount in EURO';
            OptionMembers = "Amount in foreign currency",,"Amount in EURO";
        }
        field(45; "Announcement to Bundesbank"; Boolean)
        {
            Caption = 'Announcement to Bundesbank';
        }
        field(46; "Amount (LCY)"; Decimal)
        {
            Caption = 'Amount (LCY)';
            Editable = false;
        }
        field(47; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(48; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            Editable = false;
        }
        field(49; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(50; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
        }
        field(51; "Charges Account"; Code[20])
        {
            Caption = 'Charges Account';
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
            CalcFormula = Sum ("Registration Set".Amount WHERE ("Document No." = FIELD (Number)));
            Caption = 'Sum Registration Set';
            Editable = false;
            FieldClass = FlowField;
        }
        field(60; posted; Boolean)
        {
            Caption = 'posted';
            Editable = false;
        }
        field(61; "Registration Amount"; Decimal)
        {
            Caption = 'Registration Amount';
            Editable = false;
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
        key(Key1; Number)
        {
            Clustered = true;
        }
        key(Key2; "Vendor Code", "Vendor Document No.", "Document Type")
        {
        }
        key(Key3; GenJnlTemplateName, GenJnlBatch, "Line No.")
        {
            MaintainSIFTIndex = false;
        }
    }

    fieldgroups
    {
    }
}

