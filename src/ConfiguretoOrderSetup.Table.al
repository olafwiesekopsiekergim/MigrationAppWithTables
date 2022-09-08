table 5013400 "Configure to Order Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:26:01 #Chanegd field name: "Vers./Variant Manufac." -> "New Varaint Manufac.
    //                 #new fields 510 and 520: No. Series for automatic generated Routings and Prod. BOMs
    // :DMW15.01.00.01:6:01 #Deleted unused field 690
    // KANBAN:DMW15.02:28:01 #New Fields: 780; 790; 800; 810; 820; 830
    // :DMW15.02:69:01 #New fields 840, 850 to manage type of creating Prod. Orders
    // :DMW16.00:6:01 #Translated the option string to English in fields 550, 650
    // :DMW16.00.00.01:6:01 #Changes field name and caption
    // :DMW16.00.01:21:01 #Newfield for No. Series: 860 "Decision Table"
    // :DMW16.00.01:31:01 #New field 765 "Variable for Specific Weight" (Base Material)
    // :DMW16.00.01:74:01 #New field 870 "Select Checklist to copy"
    // :DMW16.00.01:79:01 #Deleted all field from Extended Text Box
    // #DMW16.00.03:A002 29.08.11 DEMSR.SSZ
    //   #developed the OnLookUp trigger because table relation didn't worked correct when trying to open the LookUp
    //   #Corrected some English field names and caption
    // 
    // #DMW16.00.03:T010 26.09.11 DEMSR.KHS
    //   Improve Warehouse Mgt. for Subcontracting
    //   New Field: "Create Enclosure Whse. Shpt."
    // #DMW16.00.03.01:A010 06.12.11 DEMSR.SSZ
    //   #"Enclosure Transfer Journal Name" couldn't be selected. LookUp developed.
    // #DMW17.00:T003 17.09.12 DEMSR.SSZ
    //   #New fields: 880 "New Translation"; 890 "Alternative Language"
    //   #Fields 85211 "Document Calculation", 85212 "Calculation Template" and 85364 "Calculationscheme" were no longer used
    // #DMW17.10.00.02:T503 17.02.14 DEMSR.SSZ
    //   #Rename "Saw List" to "Work Package"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders: new field 900
    // #DMW17.10.01:T102 26.09.14 DEMSR.SSZ
    //   #Changed length of variable codes: 10 -> 30
    // #DMW18.00.01:T101 12.05.15 DEMSR.SSZ
    //   #deleted fields 620 "Only free Constr.-Lines" and 640 "Only free Doc.-BOM-Lines"
    // #DMW18.00.01:T104 02.06.15 DEMSR.SSZ
    //   #deleted field 680 "Cost from (Posting Cons.)" because no consumption could be posted in construction order anymore

    Caption = 'Configure to Order Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(20; "Item Description Catalog"; Boolean)
        {
            Caption = 'Item Description Catalog';
        }
        field(500; "New Variant Manufac."; Code[10])
        {
            Caption = 'New Variant Manufac.';
            TableRelation = "No. Series";
        }
        field(510; "New Routing Manufac."; Code[10])
        {
            Caption = 'New Routing Manufac.';
            Description = ':DMW15.01:26:01';
            TableRelation = "No. Series";
        }
        field(520; "New Prod. BOM Manufac."; Code[10])
        {
            Caption = 'New Prod. BOM Manufac.';
            Description = ':DMW15.01:26:01';
            TableRelation = "No. Series";
        }
        field(530; "Variable for Wait Time"; Code[30])
        {
            Caption = 'Variable for Wait Time';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(540; "Variable for Move Time"; Code[30])
        {
            Caption = 'Variable for Move Time';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(550; "Enclosure by"; Option)
        {
            Caption = 'Enclosure by';
            OptionCaption = 'Reclass. Journal,Transfer Order';
            OptionMembers = "Reclass. Journal","Transfer Order";
        }
        field(560; "Enclosure Transf. Journ. Templ"; Code[10])
        {
            Caption = 'Enclosure Transfer Journal Template';
            TableRelation = "Item Journal Template".Name WHERE (Type = CONST (Transfer));
        }
        field(570; "Enclosure Transf. Jorn. Name"; Code[10])
        {
            Caption = 'Enclosure Transfer Journal Name';
            TableRelation = "Item Journal Batch".Name WHERE ("Journal Template Name" = FIELD ("Enclosure Transf. Journ. Templ"));
        }
        field(580; "Per Purchase New Journal Name"; Boolean)
        {
            Caption = 'Per Purchase New Journal Name';
        }
        field(590; "Last Journal Name"; Code[10])
        {
            Caption = 'Last Journal Name';
        }
        field(600; "In-Transit Code"; Code[10])
        {
            Caption = 'In-Transit Code';
            TableRelation = Location WHERE ("Use As In-Transit" = CONST (true));
        }
        field(605; "Create Enclosure Whse. Shpt."; Option)
        {
            Caption = 'Create Enclosure Whse. Shpt.';
            Description = '#DMW16.00.03:T010';
            OptionCaption = ' ,Create Whse. Shpt. Open,Create Whse. Shpt. Released';
            OptionMembers = " ","Create Whse. Shpt. Open","Create Whse. Shpt. Released";
        }
        field(610; "Document BOM"; Code[10])
        {
            Caption = 'Document BOM';
            TableRelation = "No. Series";
        }
        field(630; "Doc.-BOM-Line releases need"; Boolean)
        {
            Caption = 'Doc.-BOM-Line releases need';
        }
        field(650; "Due Date from"; Option)
        {
            Caption = 'Due Date from';
            Description = 'DMW13.71';
            OptionCaption = 'Order Header,Order Line';
            OptionMembers = "Order Header","Order Line";
        }
        field(660; "Dummy Routing Code"; Code[20])
        {
            Caption = 'Dummy Routing Code';
            Description = 'DMW14.00-02';
            TableRelation = "Routing Header";
        }
        field(670; "Cost from (Line)"; Option)
        {
            Caption = 'Cost from (Line)';
            Description = ':DMW14.02:1:01';
            OptionCaption = 'Unit Cost,Standard Cost,Last Direct Cost';
            OptionMembers = "Unit Cost","Standard Cost","Last Direct Cost";
        }
        field(700; "Work Package"; Code[10])
        {
            Caption = 'Work Package';
            Description = 'DMW14.03-03';
            TableRelation = "No. Series";
        }
        field(710; "Service BOM"; Code[10])
        {
            Caption = 'Service BOM';
            Description = 'DMW14.04-01';
            TableRelation = "No. Series";
        }
        field(720; "Variable for Length"; Code[30])
        {
            Caption = 'Variable for Length';
            Description = 'DMW14.04-02';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(730; "Variable for Width"; Code[30])
        {
            Caption = 'Variable for Width';
            Description = 'DMW14.04-02';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(740; "Variable for Depth"; Code[30])
        {
            Caption = 'Variable for Depth';
            Description = 'DMW14.04-02';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(750; "Variable for Weight"; Code[30])
        {
            Caption = 'Variable for Weight';
            Description = 'DMW14.04-02';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(760; "Variable for Net Weight (Item)"; Code[30])
        {
            Caption = 'Variable for Net Weight (Item)';
            Description = 'DMW14.04-02';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(765; "Variable for Specific Weight"; Code[30])
        {
            Caption = 'Variable for Specific Weight';
            Description = ':DMW16.00.01:31:01';
            TableRelation = "Variable/Attribute Type";
        }
        field(770; "Variable for Extended Text"; Code[30])
        {
            Caption = 'Variable for Extended Text';
            Description = 'DMW14.04-03';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(780; "KANBAN Purchase"; Option)
        {
            Caption = 'KANBAN Purchase';
            Description = 'KANBAN:DMW15.02:28:01';
            OptionCaption = 'Make Req. Wksh,Make Purch. Orders';
            OptionMembers = "Copy to Req. Wksh","Make Purch. Orders";
        }
        field(790; "KANBAN Prod. Order"; Option)
        {
            Caption = 'KANBAN Prod. Order';
            Description = 'KANBAN:DMW15.02:28:01';
            OptionCaption = 'Copy to Planning Wksh,Planned,Firm Planned,Released';
            OptionMembers = "Copy to Planning Wksh",Planned,"Firm Planned",Released;
        }
        field(800; "KANBAN Purch. Wksh. Temp. Name"; Code[10])
        {
            Caption = 'KANBAN Purch. Wksh. Temp. Name';
            Description = 'KANBAN:DMW15.02:28:01';
            TableRelation = "Req. Wksh. Template".Name WHERE (Type = FILTER (<> "For. Labor"),
                                                              Recurring = CONST (false));
        }
        field(810; "KANBAN Purch. Jnl. Batch Name"; Code[10])
        {
            Caption = 'KANBAN Purch. Jnl. Batch Name';
            Description = 'KANBAN:DMW15.02:28:01';
            TableRelation = "Requisition Wksh. Name".Name WHERE ("Worksheet Template Name" = FIELD ("KANBAN Purch. Wksh. Temp. Name"));
        }
        field(820; "KANBAN Prod. Wksh. Temp. Name"; Code[10])
        {
            Caption = 'KANBAN Prod. Wksh. Temp. Name';
            Description = 'KANBAN:DMW15.02:28:01';
            TableRelation = "Req. Wksh. Template".Name WHERE (Type = CONST (Planning),
                                                              Recurring = CONST (false));
        }
        field(830; "KANBAN Prod. Jnl. Batch Name"; Code[10])
        {
            Caption = 'KANBAN Prod. Jnl. Batch Name';
            Description = 'KANBAN:DMW15.02:28:01';
            TableRelation = "Requisition Wksh. Name".Name WHERE ("Worksheet Template Name" = FIELD ("KANBAN Prod. Wksh. Temp. Name"));
        }
        field(840; "Create Prod. Order Dialog"; Boolean)
        {
            Caption = 'Create Prod. Order Dialog';
            Description = ':DMW15.02:69:01';
            InitValue = true;
        }
        field(850; "Create Prod. Order Default"; Option)
        {
            Caption = 'Create Prod. Order Default';
            Description = ':DMW15.02:69:01';
            OptionCaption = 'Without Variants,With Variants';
            OptionMembers = "Without Variants","With Variants";
        }
        field(860; "Decision Table"; Code[10])
        {
            Caption = 'Decision Table';
            Description = ':DMW16.00.01:21:01';
            TableRelation = "No. Series";
        }
        field(870; "Select Checklist to Copy"; Boolean)
        {
            Caption = 'Select Checklist to Copy';
            Description = ':DMW16.00.01:74:01';
        }
        field(880; "New Translation"; Code[10])
        {
            Caption = 'New Translation';
            Description = '#DMW17.00:T003';
            TableRelation = "No. Series";
        }
        field(890; "Alternative Language"; Code[10])
        {
            Caption = 'Alternative Language';
            Description = '#DMW17.00:T003';
            TableRelation = Language;
        }
        field(900; "Change Order"; Code[10])
        {
            Caption = 'Change Order';
            Description = '#DMW17.10.01:T107';
            TableRelation = "No. Series";
        }
        field(85020; Checklist; Code[10])
        {
            Caption = 'Checklist';
            TableRelation = "No. Series";
        }
        field(85021; "Checklist Template"; Code[10])
        {
            Caption = 'Checklist Template';
            TableRelation = "No. Series";
        }
        field(85022; "Checklist Version"; Code[10])
        {
            Caption = 'Checklist Version';
            TableRelation = "No. Series";
        }
        field(85023; "Variable for Component"; Code[30])
        {
            Caption = 'Variable for Component';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(85024; "Variable for Unit Cost"; Code[30])
        {
            Caption = 'Variable for Unit Cost';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(85051; "BOM Template"; Code[10])
        {
            Caption = 'BOM Template';
            TableRelation = "No. Series";
        }
        field(85052; "BOM Version"; Code[10])
        {
            Caption = 'BOM Version';
            TableRelation = "No. Series";
        }
        field(85090; "Sp. Charact. border ov. Var."; Boolean)
        {
            Caption = 'Special Characteristic Search with Variables';
        }
        field(85350; "Construction Order"; Code[10])
        {
            Caption = 'Construction Order';
            TableRelation = "No. Series";
        }
        field(85360; "Constr. Line releases need"; Boolean)
        {
            Caption = 'Constr. Line releases need';
        }
        field(85361; "Std. Schedule Versions"; Code[10])
        {
            Caption = 'Std. Schedule Versions';
            TableRelation = "No. Series";
        }
        field(85362; "Checklist Questions"; Code[10])
        {
            Caption = 'Checklist Questions';
            TableRelation = "No. Series";
        }
        field(85363; "Checklist Answers"; Code[10])
        {
            Caption = 'Checklist Answers';
            TableRelation = "No. Series";
        }
        field(85370; "Directory PDB"; Text[30])
        {
            Caption = 'Directory PDB';
        }
        field(85380; "Product Posting Group PDB"; Code[10])
        {
            Caption = 'Product Posting Group PDB';
            TableRelation = "Gen. Product Posting Group".Code WHERE (Code = FIELD ("Product Posting Group PDB"));
        }
        field(85390; "Inventory Posting Group PDB"; Code[10])
        {
            Caption = 'Inventory Posting Group PDB';
            TableRelation = "Inventory Posting Group".Code WHERE (Code = FIELD ("Inventory Posting Group PDB"));
        }
        field(85400; "PDB Variable Length"; Code[30])
        {
            Caption = 'PDB Variable Length';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(85410; "PDB Variable Width"; Code[30])
        {
            Caption = 'PDB Variable Width';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(85420; "PDB Variable Hight"; Code[30])
        {
            Caption = 'PDB Variable Hight';
            TableRelation = "Variable/Attribute Type".Code;
        }
        field(85430; "PDB Master BOM Type"; Code[20])
        {
            Caption = 'PDB Master BOM Type';
        }
        field(88000; "BOM Type for Structure Rep."; Code[20])
        {
            Caption = 'BOM Type for Structure Representation';
            TableRelation = "BOM Type".Type;
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

