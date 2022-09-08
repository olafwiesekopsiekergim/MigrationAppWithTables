table 91 "User Setup"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.05.12   OPplus Payment
    //                 - New Field
    // -----------------------------------------------------
    // P0001 15.02.16 CCBIE.ARE New fields 80042 "Telefonnr."
    // 
    // PRCS01 PRODUKT.01 15.12.14 DENUE.SKOL Integration cc|construction works
    //                                        TableRelation of Field "Project Filter" changed from
    //                                          "Job WHERE (Structure Type=CONST(Project))" to
    //                                          "Job WHERE (Is Project=CONST(Yes))"
    // #CAW16.00:T100 09.09.10 DEMSR.IST
    //   New field 5012650 "Calculation View Authorization" added
    // 
    // #NAV20100:A1000 20.04.07 DEWUE.SE
    //   Integration QM/VR
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.01:T104 29.05.15 DEMSR.KHS
    //   field added: "Update Inspection Result"
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //           Create as separate module
    // 
    // WF  cc|workflow integration.
    // 
    // WF0011  Workflow Password for password request with windows login.
    // WF0066  Do not monitor Workflow activities for debug use.
    // WF0069  New Field: Document Category Filter
    // 
    // WF3.01.01:
    // ----------
    // WFNAV7  Update to NAV 2013.
    //         New fields 5103618 "SMTP Server Port", 5103619 "Secure Connection".
    //         Field 5103600 "Workflow E-Mail" removed.
    // 
    // WF3.02:
    // -------
    // WF0269  Corrected Length of field 5103608 "Workflow Team Code" from Code[20] to Code[50].
    // 
    // WF3.02.01:
    // ----------
    // WF0280  Fields 5103601 "Timer Interval (Sec.)", 5103603 "Create Periodic Events", 5103615 "Do not Monitor Workflow" removed.
    // 
    // cc|bde (CCFDC)
    // 
    // CCFDC01  13.02.2014  DEDRS.WHEG  New field "FDC Administrator"

    Caption = 'User Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
            TableRelation = User."User Name";
        }
        field(2; "Allow Posting From"; Date)
        {
            Caption = 'Allow Posting From';
        }
        field(3; "Allow Posting To"; Date)
        {
            Caption = 'Allow Posting To';
        }
        field(4; "Register Time"; Boolean)
        {
            Caption = 'Register Time';
        }
        field(10; "Salespers./Purch. Code"; Code[10])
        {
            Caption = 'Salespers./Purch. Code';
            TableRelation = "Salesperson/Purchaser".Code;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(11; "Approver ID"; Code[50])
        {
            Caption = 'Approver ID';
            TableRelation = "User Setup"."User ID";
        }
        field(12; "Sales Amount Approval Limit"; Integer)
        {
            BlankZero = true;
            Caption = 'Sales Amount Approval Limit';
        }
        field(13; "Purchase Amount Approval Limit"; Integer)
        {
            BlankZero = true;
            Caption = 'Purchase Amount Approval Limit';
        }
        field(14; "Unlimited Sales Approval"; Boolean)
        {
            Caption = 'Unlimited Sales Approval';
        }
        field(15; "Unlimited Purchase Approval"; Boolean)
        {
            Caption = 'Unlimited Purchase Approval';
        }
        field(16; Substitute; Code[50])
        {
            Caption = 'Substitute';
            TableRelation = "User Setup"."User ID";
        }
        field(17; "E-Mail"; Text[100])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(19; "Request Amount Approval Limit"; Integer)
        {
            BlankZero = true;
            Caption = 'Request Amount Approval Limit';
        }
        field(20; "Unlimited Request Approval"; Boolean)
        {
            Caption = 'Unlimited Request Approval';
        }
        field(21; "Approval Administrator"; Boolean)
        {
            Caption = 'Approval Administrator';
        }
        field(950; "Time Sheet Admin."; Boolean)
        {
            Caption = 'Time Sheet Admin.';
        }
        field(5600; "Allow FA Posting From"; Date)
        {
            Caption = 'Allow FA Posting From';
        }
        field(5601; "Allow FA Posting To"; Date)
        {
            Caption = 'Allow FA Posting To';
        }
        field(5700; "Sales Resp. Ctr. Filter"; Code[10])
        {
            Caption = 'Sales Resp. Ctr. Filter';
            TableRelation = "Responsibility Center".Code;
        }
        field(5701; "Purchase Resp. Ctr. Filter"; Code[10])
        {
            Caption = 'Purchase Resp. Ctr. Filter';
            TableRelation = "Responsibility Center";
        }
        field(5900; "Service Resp. Ctr. Filter"; Code[10])
        {
            Caption = 'Service Resp. Ctr. Filter';
            TableRelation = "Responsibility Center";
        }
        field(50000; Innendienst; Boolean)
        {
        }
        field(50001; "Preis ändern"; Boolean)
        {
        }
        field(50002; Rechnungspfad; Text[100])
        {
            Description = '#AT';
        }
        field(80042; "Telefonnr."; Text[30])
        {
            Caption = 'Telefonnr.';
            Description = 'P0001';
        }
        field(5012650; "Calculation View Authorization"; Option)
        {
            Caption = 'Calculation View Authorization';
            Description = '#CAW16.00:T100';
            OptionCaption = ' ,Level 1,Level 2,Level 3,Level 4,Level 5';
            OptionMembers = " ","Level 1","Level 2","Level 3","Level 4","Level 5";
        }
        field(5034550; "Manuf. Resp. Ctr. Filter"; Code[10])
        {
            Caption = 'Manuf. Resp. Ctr. Filter';
            Description = '#NAV20100:A1000 20.04.07 DEWUE.SE';
            TableRelation = "Responsibility Center";
        }
        field(5034551; "QM Resp. Ctr. Filter"; Code[10])
        {
            Caption = 'QM Resp. Ctr. Filter';
            Description = '#NAV20100:A1000 20.04.07 DEWUE.SE';
            TableRelation = "Responsibility Center";
        }
        field(5034552; "Update Inspection Result"; Boolean)
        {
            Caption = 'Update Inspection Result';
            Description = '#QMW18.00.01:T104';
        }
        field(5060470; Name; Text[30])
        {
            Caption = 'Name';
            Description = '#RAW16.00:T100';
        }
        field(5103602; "SMS Phone No."; Text[30])
        {
            Caption = 'SMS Phone No.';
        }
        field(5103604; "Deactivate Workflow upon Login"; Boolean)
        {
            Caption = 'Deactivate Workflow upon login';
        }
        field(5103605; "Workflow Portal Timer (Sec.)"; Integer)
        {
            Caption = 'Workflow Portal Timer (Sec.)';
        }
        field(5103606; "Ignore Field Security"; Boolean)
        {
            Caption = 'Ignore Field Security';
        }
        field(5103607; "Temp Document Storage Path"; Text[100])
        {
            Caption = 'Temp Document Storage Path';
        }
        field(5103608; "Workflow Team Code"; Code[50])
        {
            Caption = 'Workflow Team Code';
            Description = 'WF0269';
            TableRelation = "Workflow Team";
        }
        field(5103610; "SMTP Server"; Text[250])
        {
            Caption = 'SMTP Server';
        }
        field(5103611; "SMTP User ID"; Text[30])
        {
            Caption = 'SMTP User ID';
        }
        field(5103612; "SMTP Password"; Text[30])
        {
            Caption = 'SMTP Password';
        }
        field(5103613; "Workflow Administrator"; Boolean)
        {
            Caption = 'Workflow Administrator';
        }
        field(5103614; "SMTP Authentication"; Option)
        {
            Caption = 'SMTP Authentication';
            OptionCaption = 'Anonymous,NTLM,Basic';
            OptionMembers = Anonymous,NTLM,Basic;
        }
        field(5103616; "Workflow Password"; Text[50])
        {
            Caption = 'Workflow Password';
            Description = 'WF0011,WFNAV7';
        }
        field(5103617; "Document Category Filter"; Code[250])
        {
            Caption = 'Document Category Filter';
            Description = 'WF0069';
            TableRelation = "Document Category";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5103618; "SMTP Server Port"; Integer)
        {
            Caption = 'SMTP Server Port';
            Description = 'UPG';
            InitValue = 25;
        }
        field(5103619; "Secure Connection"; Boolean)
        {
            Caption = 'Secure Connection';
            Description = 'UPG';
            InitValue = false;
        }
        field(5157802; "Payment Release allowed"; Boolean)
        {
            Caption = 'Payment Approval allowed';
            Description = 'PMT';
        }
        field(5292650; "Project Filter"; Code[20])
        {
            Caption = 'Project Filter';
            TableRelation = Job WHERE ("Is Project" = CONST (true));
        }
        field(5292651; "Use User Filter"; Boolean)
        {
            Caption = 'Use User Filter';
        }
        field(5308600; "FDC Administrator"; Boolean)
        {
            Caption = 'FDC Administrator';
            Description = 'CCFDC01';
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
        key(Key2; "Salespers./Purch. Code")
        {
        }
    }

    fieldgroups
    {
    }
}

