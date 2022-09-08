table 5060460 "Verification Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW16.00.00.01:T505 25.07.12 DEMSR.BKR
    //   Smaller Misc. Issues.
    //   Remove Prod. Journal Fields: "Verify Other MCenter in Prod-J", "Verify Production Journal"
    // 
    // #RAW17.00:T103 10.04.12 DEMSR.BKR
    //   Add Version Information
    // 
    // #RAW17.00:T104 10.04.12 DEMSR.BKR
    //   Set InitValue of Reset Verify Values if Modify to true
    // 
    // #RAW17.00:T105 10.04.12 DEMSR.BKR
    //   Add request if option is disabled / set to none
    // 
    // #RAW17.00:T106 10.04.12 DEMSR.BKR
    //   Change captions due to suggestions from native speakers
    //   "Verify Other Item in Cons.Jnl." to "Verify Other Item in Consumption Jnl."
    //   "Verify Other MCenter in Out-J." to "Verify Other MCenter in Output Jnl."
    //   "Verify Change PO Comp." to "Verify Change PO Component"
    //   "Verify Rename PO Component" to "Verify Replace PO Component"
    //   "Verify Rename PO Routing" to "Verify Replace PO Routing"
    // 
    // #RAW17.00:T112 24.09.12 DEMSR.BKR
    //   Redesign 4-Eye Verification
    //   Deleted field "Verification Nos."
    // 
    // #RAW17.00:T115 05.12.12 DEMSR.BKR
    //   Changes due to new Change Log
    //   Adding tables and fields to changelog no more necessary
    //   Removed functions UpdateChangeLogTable, UpdateItemJnl, UpdateWhseRcptLine, UpdateWhseShptLine, UpdateWhseActLine,
    //     UpdateWhseJnlLine, UpdateSalesLine, UpdatePurchaseLine, UpdateTransferLine
    // 
    // #RAW17.00:T506 11.12.12 DEMSR.BKR
    //   Reremove Prod. Journal fields.
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW17.00.00.01:T504 07.05.13 DEMSR.BKR
    //   Adjustment of Version Information to 2013 HF1
    // 
    // #RAW17.00.00.02:T500 31.07.13 DEMSR.BKR
    //   Update Version Information
    // 
    // #RAW17.10:T500 05.11.13 DEMSR.BKR
    //   Update Version Information
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding/Update Version Information
    // 
    // #RAW17.10.01:T500 30.06.14 DEMSR.BKR
    //   Update Version Information
    // 
    // #RAW17.10.01:T502 30.06.14 DEMSR.BKR
    //   Password Expire and Warning Date. No Warning is done if passowrd change has to be warned.
    //   Added Testfield on field "Password Change Warning Period" for testing if "Password Change Interval" is set
    // 
    // #RAW18.00.00.01:T100 11.06.15 DEMSR.BKR
    //   Update Version Information
    // 
    // #RAW18.00.00.02:T100 10.08.15 DEMSR.BKR
    //   Update Version Information
    // 
    // #RAW19.00:T100 21.10.15 DEMSR.BKR
    //   Update Version Information
    // 
    // #RAW19.00.00.01:T500 13.11.15 DEMSR.BKR
    //   Update Version Information
    // 
    // #QMW16.00.03:T380 23.08.11 DEMSR.BKR
    //   Integration RA into QM
    // 
    // #QMW16.00.03.01:T514 25.01.12 DEMSR.KHS
    //   Captions added
    // 
    // #QMW17.00:213 20.06.12 DEMSR.KHS
    //   Add Confirmation for Reset of QM Options fields
    // 
    // #QMW17.00.00.02 14.05.13 DEMSR.KHS
    //   Update function control ID
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // #QMW18.00.00.03:T503 20.05.15 DEMSR.KHS
    //   Add Missing Option Caption
    // 
    // #PMW16.00.03:T200 18.10.11 DEMSR.BKR
    //   Integration RA

    Caption = 'Verification Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(5; "Max. Qty. Failed Logins"; Integer)
        {
            Caption = 'Max. Qty. Failed Logins';
            MinValue = 0;
        }
        field(10; "Verification Activated"; Boolean)
        {
            Caption = 'Verification Activated';
        }
        field(100; "Verify Item Journal"; Option)
        {
            Caption = 'Verify Item Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(105; "Verify Reclass. Journal"; Option)
        {
            Caption = 'Verify Reclass. Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(110; "Verify Phys. Inventory Journal"; Option)
        {
            Caption = 'Verify Phys. Inventory Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(115; "Verify Revaluation Journal"; Option)
        {
            Caption = 'Verify Revaluation Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(120; "Verify Transfer Order"; Option)
        {
            Caption = 'Verify Transfer Order';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(200; "Verify Whse. Receipt"; Option)
        {
            Caption = 'Verify Whse. Receipt';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(205; "Verify Whse. Put Away"; Option)
        {
            Caption = 'Verify Whse. Put Away';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(207; "Verify Whse. Shipment"; Option)
        {
            Caption = 'Verify Whse. Shipment';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(210; "Verify Whse. Pick"; Option)
        {
            Caption = 'Verify Whse. Pick';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(215; "Verify Whse. Movements"; Option)
        {
            Caption = 'Verify Whse. Movements';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(220; "Verify Whse. Item Journal"; Option)
        {
            Caption = 'Verify Whse. Item Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(225; "Verify Whse. Reclass. Journal"; Option)
        {
            Caption = 'Verify Whse. Reclass. Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(230; "Verify Whse. Phys. Invt. Jnl."; Option)
        {
            Caption = 'Verify Whse. Phys. Invt. Jnl.';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(300; "Verify Sales Order"; Option)
        {
            Caption = 'Verify Sales Order';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(305; "Verify Sales Invoice"; Option)
        {
            Caption = 'Verify Sales Invoice';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(310; "Verify Sales Return Order"; Option)
        {
            Caption = 'Verify Sales Return Order';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(315; "Verify Sales Credit Memo"; Option)
        {
            Caption = 'Verify Sales Credit Memo';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(400; "Verify Purchase Order"; Option)
        {
            Caption = 'Verify Purchase Order';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(405; "Verify Purchase Invoice"; Option)
        {
            Caption = 'Verify Purchase Invoice';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(410; "Verify Purchase Return Order"; Option)
        {
            Caption = 'Verify Purchase Return Order';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(415; "Verify Purchase Credit Memo"; Option)
        {
            Caption = 'Verify Purchase Credit Memo';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(500; "Verify Consumption Journal"; Option)
        {
            Caption = 'Verify Consumption Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(505; "Verify Output Journal"; Option)
        {
            Caption = 'Verify Output Journal';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(520; "Verify Other Item in Cons.Jnl."; Option)
        {
            Caption = 'Verify Other Item in Consumption Jnl.';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(525; "Verify Other MCenter in Out-J."; Option)
        {
            Caption = 'Verify Other MCenter in Output Jnl.';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(705; "Verify Certify Prod. BOM"; Option)
        {
            Caption = 'Verify Certify Prod. BOM';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(710; "Verify Reset Prod. BOM Status"; Option)
        {
            Caption = 'Verify Reset Prod. BOM Status';
            OptionCaption = 'None,Password Check,Password Check+Documentation';
            OptionMembers = "None","Password Check","Password Check+Documentation";
        }
        field(715; "Verify Certify Routing"; Option)
        {
            Caption = 'Verify Certify Routing';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(720; "Verify Reset Routing Status"; Option)
        {
            Caption = 'Verify Reset Routing Status';
            OptionCaption = 'None,Password Check,Password Check+Documentation';
            OptionMembers = "None","Password Check","Password Check+Documentation";
        }
        field(725; "Verify Insert PO Routing"; Option)
        {
            Caption = 'Verify Insert PO Routing';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(727; "Verify Delete PO Routing"; Option)
        {
            Caption = 'Verify Delete PO Routing';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(730; "Verify Replace PO Routing"; Option)
        {
            Caption = 'Verify Replace PO Routing';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(731; "Verify Change PO Routing"; Option)
        {
            Caption = 'Verify Change PO Routing';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(735; "Verify Insert PO Component"; Option)
        {
            Caption = 'Verify Insert PO Component';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(740; "Verify Delete PO Component"; Option)
        {
            Caption = 'Verify Delete PO Component';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(745; "Verify Replace PO Component"; Option)
        {
            Caption = 'Verify Replace PO Component';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(750; "Verify Change PO Component"; Option)
        {
            Caption = 'Verify Change PO Component';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(820; "Verify Certify Prod. Structure"; Option)
        {
            Caption = 'Verify Certify Prod. Structure';
            Description = '#PMW16.00.03:T200';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(830; "Verify Reset Prod. Str. Status"; Option)
        {
            Caption = 'Verify Reset Prod. Structure Status';
            Description = '#PMW16.00.03:T200';
            OptionCaption = 'None,Password Check,Password Check+Documentation';
            OptionMembers = "None","Password Check","Password Check+Documentation";
        }
        field(840; "Verify Certify By-Production"; Option)
        {
            Caption = 'Verify Certify By-Production';
            Description = '#PMW16.00.03:T200';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(841; "Verify Reset By-Production"; Option)
        {
            Caption = 'Verify Reset By-Production';
            Description = '#PMW16.00.03:T200';
            OptionCaption = 'None,Password Check,Password Check+Documentation';
            OptionMembers = "None","Password Check","Password Check+Documentation";
        }
        field(950; "Minimum Password Length"; Integer)
        {
            Caption = 'Minimum Password Length';
            MinValue = 0;
        }
        field(955; "Password Change Interval"; DateFormula)
        {
            Caption = 'Password Change Interval';
        }
        field(956; "Password Change Warning Period"; DateFormula)
        {
            Caption = 'Password Change Warning Period';
        }
        field(960; "Prevent Use of Prev. Passwords"; Integer)
        {
            Caption = 'Prevent Use of Prev. Passwords';
            MaxValue = 6;
            MinValue = 0;
        }
        field(975; "Min. No. of Uppercase Letters"; Integer)
        {
            Caption = 'Min. No. of Uppercase Letters';
            MinValue = 0;
        }
        field(976; "Min. No. of Lowercase Letters"; Integer)
        {
            Caption = 'Min. No. of Lowercase Letters';
            MinValue = 0;
        }
        field(977; "Min. No. of Numbers"; Integer)
        {
            Caption = 'Min. No. of Numbers';
            MinValue = 0;
        }
        field(978; "Min. No. of Non-Alphan. Chars"; Integer)
        {
            Caption = 'Min. No. of Non-Alphanumeric Characters';
            MinValue = 0;
        }
        field(5034550; "Verify Status Change"; Option)
        {
            Caption = 'Verify Status Change';
            Description = '#QMW16.00.03:T380,#QMW17.00:213';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(5034551; "Verify Certify Test Plan"; Option)
        {
            Caption = 'Verify Certify Test Plan';
            Description = '#QMW16.00.03:T380,#QMW17.00:213,#QMW18.00.00.03:T503';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
        }
        field(5034552; "Verify Reset Test Plan Status"; Option)
        {
            Caption = 'Verify Reset Test Plan Status';
            Description = '#QMW16.00.03:T380,#QMW17.00:213,#QMW18.00.00.03:T503';
            OptionCaption = 'None,Password Check,Password Check+Documentation';
            OptionMembers = "None","Password Check","Password Check+Documentation";
        }
        field(5034553; "Verify Change Fin. Test Order"; Option)
        {
            Caption = 'Verify Change Fin. Test Order';
            Description = '#QMW16.00.03:T380,#QMW17.00:213,#QMW18.00.00.03:T503';
            OptionCaption = 'None,Password Check,Password Check+Documentation,Password Check+Diff. User,Password Check+Documentation+Diff. User';
            OptionMembers = "None","Password Check","Password Check+Documentation","Password Check+Diff. User","Password Check+Documentation+Diff. User";
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

