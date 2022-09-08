table 5060461 "User Authorization"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW16.00:T101 16.08.11 DEMSR.BKR
    //   Reset User Account and Password
    // 
    // #RAW16.00.00.01:T505 25.07.12 DEMSR.BKR
    //   Smaller Misc. Issues.
    //   Remove Prod. Journal Fields: "Verify Other MCenter in Prod-J", "Verify Production Journal"
    // 
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00:T106 10.04.12 DEMSR.BKR
    //   Change captions due to suggestions from native speakers
    //   "Creditmemo" to "Credit Memo"
    //   "Verify Other Item in Cons.Jnl." to "Verify Other Item in Consumption Jnl."
    //   "Verify Other MCenter in Out-J." to Verify Other MCenter in Output Jnl."
    //   "Verify Change PO Comp." to "Verify Change PO Component"
    //   "Verify Rename PO Component" to "Verify Replace PO Component"
    //   "Verify Rename PO Routing" to "Verify Replace PO Routing"
    // 
    // #RAW17.00:T506 11.12.12 DEMSR.BKR
    //   Reremove Prod. Journal fields.
    // 
    // #RAW17.00.00.01:T501 12.03.13 DEMSR.BKR
    //   Renaming by suggestions of a native speaker
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW16.00.03:T380 23.08.11 DEMSR.BKR
    //   Integration RA into QM
    // 
    // #QMW16.00.03.01 25.01.12 DEMSR.KHS
    //   DEU Captions added
    // 
    // #PMW16.00.03:T200 18.10.11 DEMSR.BKR
    // Integration RA

    Caption = 'User Authorization';
    DataCaptionFields = "User ID";

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5; "Qty. Failed Logins"; Integer)
        {
            Caption = 'Qty. Failed Logins';
            Editable = false;
        }
        field(10; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(15; "Expiration Date"; Date)
        {
            Caption = 'Expiration Date';
        }
        field(20; "User Name"; Text[50])
        {
            CalcFormula = Lookup (User."Full Name" WHERE ("User Name" = FIELD ("User ID")));
            Caption = 'User Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(35; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(100; "Verify Item Journal"; Boolean)
        {
            Caption = 'Verify Item Journal';
        }
        field(105; "Verify Reclass. Journal"; Boolean)
        {
            Caption = 'Verify Reclass. Journal';
        }
        field(110; "Verify Phys. Inventory Journal"; Boolean)
        {
            Caption = 'Verify Phys. Inventory Journal';
        }
        field(115; "Verify Revaluation Journal"; Boolean)
        {
            Caption = 'Verify Revaluation Journal';
        }
        field(120; "Verify Transfer Order"; Boolean)
        {
            Caption = 'Verify Transfer Order';
        }
        field(200; "Verify Whse. Receipt"; Boolean)
        {
            Caption = 'Verify Whse. Receipt';
        }
        field(205; "Verify Whse. Put Away"; Boolean)
        {
            Caption = 'Verify Whse. Put Away';
        }
        field(207; "Verify Whse. Shipment"; Boolean)
        {
            Caption = 'Verify Whse. Shipment';
        }
        field(210; "Verify Whse. Pick"; Boolean)
        {
            Caption = 'Verify Whse. Pick';
        }
        field(215; "Verify Whse. Movements"; Boolean)
        {
            Caption = 'Verify Whse. Movements';
        }
        field(220; "Verify Whse. Item Journal"; Boolean)
        {
            Caption = 'Verify Whse. Item Journal';
        }
        field(225; "Verify Whse. Reclass. Journal"; Boolean)
        {
            Caption = 'Verify Whse. Reclass. Journal';
        }
        field(230; "Verify Whse. Phys. Invt. Journ"; Boolean)
        {
            Caption = 'Verify Whse. Phys. Invt. Journ';
        }
        field(300; "Verify Sales Order"; Boolean)
        {
            Caption = 'Verify Sales Order';
        }
        field(305; "Verify Sales Invoice"; Boolean)
        {
            Caption = 'Verify Sales Invoice';
        }
        field(310; "Verify Sales Return Order"; Boolean)
        {
            Caption = 'Verify Sales Return Order';
        }
        field(315; "Verify Sales Credit Memo"; Boolean)
        {
            Caption = 'Verify Sales Credit Memo';
        }
        field(400; "Verify Purchase Order"; Boolean)
        {
            Caption = 'Verify Purchase Order';
        }
        field(405; "Verify Purchase Invoice"; Boolean)
        {
            Caption = 'Verify Purchase Invoice';
        }
        field(410; "Verify Purchase Return Order"; Boolean)
        {
            Caption = 'Verify Purchase Return Order';
        }
        field(415; "Verify Purchase Credit Memo"; Boolean)
        {
            Caption = 'Verify Purchase Credit Memo';
        }
        field(500; "Verify Consumption Journal"; Boolean)
        {
            Caption = 'Verify Consumption Journal';
        }
        field(505; "Verify Output Journal"; Boolean)
        {
            Caption = 'Verify Output Journal';
        }
        field(520; "Verify Other Item in Cons.Jnl."; Boolean)
        {
            Caption = 'Verify Other Item in Consumption Jnl.';
        }
        field(525; "Verify Other MCenter in Out-J."; Boolean)
        {
            Caption = 'Verify Other MCenter in Output Jnl.';
        }
        field(705; "Verify Certify Prod. BOM"; Boolean)
        {
            Caption = 'Verify Certify Prod. BOM';
        }
        field(710; "Verify Reset Prod. BOM Status"; Boolean)
        {
            Caption = 'Verify Reset Prod. BOM Status';
        }
        field(715; "Verify Certify Routing"; Boolean)
        {
            Caption = 'Verify Certify Routing';
        }
        field(720; "Verify Reset Routing Status"; Boolean)
        {
            Caption = 'Verify Reset Routing Status';
        }
        field(725; "Verify Insert PO Routing"; Boolean)
        {
            Caption = 'Verify Insert PO Routing';
        }
        field(727; "Verify Delete PO Routing"; Boolean)
        {
            Caption = 'Verify Delete PO Routing';
        }
        field(730; "Verify Replace PO Routing"; Boolean)
        {
            Caption = 'Verify Replace PO Routing';
        }
        field(731; "Verify Change PO Routing"; Boolean)
        {
            Caption = 'Verify Change PO Routing';
        }
        field(735; "Verify Insert PO Component"; Boolean)
        {
            Caption = 'Verify Insert PO Component';
        }
        field(740; "Verify Delete PO Component"; Boolean)
        {
            Caption = 'Verify Delete PO Component';
        }
        field(745; "Verify Replace PO Component"; Boolean)
        {
            Caption = 'Verify Replace PO Component';
        }
        field(750; "Verify Change PO Component"; Boolean)
        {
            Caption = 'Verify Change PO Component';
        }
        field(820; "Verify Certify Prod. Structure"; Boolean)
        {
            Caption = 'Verify Certify Prod. Structure';
            Description = '#PMW16.00.03:T200';
        }
        field(830; "Verify Reset Prod. Str. Stat."; Boolean)
        {
            Caption = 'Verify Reset Prod. Structure Status';
            Description = '#PMW16.00.03:T200';
        }
        field(840; "Verify Certify By-Production"; Boolean)
        {
            Caption = 'Verify Certify By-Production';
            Description = '#PMW16.00.03:T200';
        }
        field(841; "Verify Reset By-Production"; Boolean)
        {
            Caption = 'Verify Reset By-Production';
            Description = '#PMW16.00.03:T200';
        }
        field(950; Password; Text[32])
        {
            Caption = 'Password';
        }
        field(951; "Password 1"; Text[32])
        {
            Caption = 'Password 1';
        }
        field(952; "Password 2"; Text[32])
        {
            Caption = 'Password 2';
        }
        field(953; "Password 3"; Text[32])
        {
            Caption = 'Password 3';
        }
        field(954; "Password 4"; Text[32])
        {
            Caption = 'Password 4';
        }
        field(955; "Password 5"; Text[32])
        {
            Caption = 'Password 5';
        }
        field(960; "Last Password Change Date"; Date)
        {
            Caption = 'Last Password Change Date';
        }
        field(5034550; "Verify Status Change"; Boolean)
        {
            Caption = 'Verify Status Change';
            Description = '#QMW16.00.03:T380';
        }
        field(5034551; "Verify Certify Test Plan"; Boolean)
        {
            Caption = 'Verify Certify Test Plan';
            Description = '#QMW16.00.03:T380';
        }
        field(5034552; "Verify Reset Test Plan Status"; Boolean)
        {
            Caption = 'Verify Reset Test Plan Status';
            Description = '#QMW16.00.03:T380';
        }
        field(5034553; "Verify Change Fin. Test Order"; Boolean)
        {
            Caption = 'Verify Change Fin. Test Order';
            Description = '#QMW16.00.03:T380';
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

