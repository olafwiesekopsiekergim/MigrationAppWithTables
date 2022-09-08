table 5013802 Change
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // CHANGETR:DMW15.01:13:01 #Created new Table
    // PRODVIEW:DMW15.01:14:01 #New fields for Production View
    // #DMW16.00.03:T005 12.08.11 DEMSR.SSZ
    //   #New field 85115 "Enclosure Drop Shipment"
    // #DMW16.00.03.03:A004 11.07.12 DEMSR.SSZ
    //   #Field "Bin Code" changed to Code 20
    // #DMW17.00:A001 23.05.12 DEMSR.SSZ
    //   #Deleted unused fields; enlarged user fields
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW18.00.00.01:T502 24.02.15 DEMSR.SSZ
    //   #Field "Decription 2" changed from Text30 to Text50
    // #DMW18.00.01:T103 20.05.15 DEMSR.SSZ
    //   #Parallel Routings: New fields: 1110, 1120, 1130, 2000150, 2000151, 2000152
    //   #Ensure that only whole routings get transferred or not. Because of operation no. could change.
    // #DMW18.00.01:T501 29.05.15 DEMSR.SSZ
    //   #Grammatical Issues

    Caption = 'Change';

    fields
    {
        field(40; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Editable = false;
        }
        field(50; "Belongs to Entry No."; Integer)
        {
            Caption = 'Belongs to Entry No.';
            Editable = false;
        }
        field(60; "Level Line No."; Integer)
        {
            Caption = 'Level Line No.';
            Editable = false;
        }
        field(70; Level; Integer)
        {
            Caption = 'Level';
            Editable = false;
        }
        field(80; "Entry No. Representation"; Integer)
        {
            Caption = 'Entry No. Representation';
            Editable = false;
        }
        field(100; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,Account(G/L),Item,Resource,Work Center,Machine Center';
            OptionMembers = " ","Account(G/L)",Item,Resource,"Work Center","Machine Center";
        }
        field(105; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(110; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(120; "Description 2"; Text[50])
        {
            Caption = 'Description 2';
        }
        field(130; "Description 3"; Text[50])
        {
            Caption = 'Description 3';
        }
        field(140; "Description 4"; Text[50])
        {
            Caption = 'Description 4';
        }
        field(150; "Description 5"; Text[50])
        {
            Caption = 'Description 5';
        }
        field(180; Variant; Code[20])
        {
            Caption = 'Variant';
        }
        field(190; "Exp. Quantity"; Decimal)
        {
            Caption = 'Exp. Quantity';
            DecimalPlaces = 2 : 5;
        }
        field(200; "Exp. Quantity Unit of Measure"; Code[10])
        {
            Caption = 'Exp. Quantity Unit of Measure';
        }
        field(220; "Exp. Quantity (Base)"; Decimal)
        {
            Caption = 'Exp. Quantity (Base)';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(225; "Quantity (Base, Father)"; Decimal)
        {
            Caption = 'Quantity (Base, Father)';
            DecimalPlaces = 2 : 5;
            Editable = false;
        }
        field(230; "Part Type"; Option)
        {
            Caption = 'Part Type';
            OptionCaption = 'Standard,Production';
            OptionMembers = Standard,Production;
        }
        field(240; "Spare Part"; Boolean)
        {
            Caption = 'Spare Part';
        }
        field(250; "Wear Part"; Boolean)
        {
            Caption = 'Wear Part';
        }
        field(260; "Separate Prod. Order"; Boolean)
        {
            Caption = 'Separate Prod. Order';
        }
        field(270; "Formula Quantity"; Text[250])
        {
            Caption = 'Formula Quantity';
        }
        field(290; "Formula Setup Time"; Text[250])
        {
            Caption = 'Formula Setup Time';
        }
        field(291; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
        }
        field(292; "Setup Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
        }
        field(293; "Formula Run Time"; Text[250])
        {
            Caption = 'Formula Run Time';
        }
        field(294; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
        }
        field(295; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
        }
        field(296; "Lot Size"; Decimal)
        {
            Caption = 'Lot Size';
        }
        field(300; "Information Line"; Boolean)
        {
            Caption = 'Information Line';
            Editable = false;
        }
        field(320; "Assembly Date"; Date)
        {
            Caption = 'Assembly Date';
        }
        field(330; "Shortcut Dimension 1 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 1 Code';
        }
        field(340; "Shortcut Dimension 2 Code"; Code[20])
        {
            Caption = 'Shortcut Dimension 2 Code';
        }
        field(390; "Location Code"; Code[10])
        {
            Caption = 'Location Code';
        }
        field(400; Position; Code[10])
        {
            Caption = 'Position';
        }
        field(410; "Bin Code"; Code[20])
        {
            Caption = 'Bin Code';
        }
        field(420; "Outstanding Qty."; Decimal)
        {
            Caption = 'Outstanding Qty.';
        }
        field(430; "Outstanding Qty. (Base)"; Decimal)
        {
            Caption = 'Outstanding Qty. (Base)';
        }
        field(500; Herkunft; Code[20])
        {
            Caption = 'Source';
        }
        field(510; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Open,Released,Closed';
            OptionMembers = Open,Released,Closed;
        }
        field(520; "Released of"; Code[50])
        {
            Caption = 'Released of';
            Editable = false;
        }
        field(530; "Released to"; Date)
        {
            Caption = 'Released to';
            Editable = false;
        }
        field(540; "New calcuate"; Boolean)
        {
            Caption = 'New calcuate';
        }
        field(600; "Unit Cost (CC)"; Decimal)
        {
            Caption = 'Unit Cost (CC)';
        }
        field(610; "Unit Ammount (CC)"; Decimal)
        {
            Caption = 'Unit Ammount (CC)';
            Editable = false;
        }
        field(620; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
        }
        field(630; "Order Tracking Relevant"; Boolean)
        {
            Caption = 'Order Tracking Relevant';
        }
        field(1110; "Operation No."; Code[10])
        {
            Caption = 'Operation No.';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(1120; "Next Operation No."; Code[30])
        {
            Caption = 'Next Operation No.';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(1130; "Previous Operation No."; Code[30])
        {
            Caption = 'Previous Operation No.';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(5703; "Originally Ordered No."; Code[20])
        {
            Caption = 'Originally Ordered No.';
        }
        field(5704; "Originally Ordered Var. Code"; Code[10])
        {
            Caption = 'Originally Ordered Var. Code';
        }
        field(85000; Drawing; Code[250])
        {
            Caption = 'Drawing';
        }
        field(85050; "Unit Ammount"; Decimal)
        {
            Caption = 'Unit Ammount';
            Editable = false;
        }
        field(85100; "Routing Link Code"; Code[10])
        {
            Caption = 'Routing Link Code';
        }
        field(85110; Enclosure; Boolean)
        {
            Caption = 'Enclosure';
        }
        field(85115; "Enclosure Drop Shipment"; Boolean)
        {
            Caption = 'Enclosure Drop Shipment';
            Description = '#DMW16.00.03:T005';
        }
        field(85160; "Formula Valid"; Text[250])
        {
            Caption = 'Formula Valid';
        }
        field(85250; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
        }
        field(85280; Reserve; Option)
        {
            Caption = 'Reserve';
            OptionCaption = 'Never,Optional,Always';
            OptionMembers = Never,Optional,Always;
        }
        field(85300; "Shipment Date"; Date)
        {
            Caption = 'Shipment Date';
        }
        field(85600; "Entry No. PDB"; Integer)
        {
            Caption = 'Entry No. PDB';
        }
        field(85610; "Last date modified"; Date)
        {
            Caption = 'Last date modified';
        }
        field(85620; "Last change by"; Code[50])
        {
            Caption = 'Change by';
        }
        field(85630; "Delete Status"; Boolean)
        {
            Caption = 'Delete Status';
        }
        field(2000000; "Source Table"; Integer)
        {
            Caption = 'Source Table';
        }
        field(2000010; "Source Code"; Code[20])
        {
            Caption = 'Source Code';
        }
        field(2000020; "Source Code 2"; Code[20])
        {
            Caption = 'Source Code 2';
        }
        field(2000030; "Source Entry No."; Integer)
        {
            Caption = 'Source Entry No.';
        }
        field(2000040; "Source Entry No. 2"; Integer)
        {
            Caption = 'Source Entry No. 2';
        }
        field(2000050; "Source Status"; Option)
        {
            Caption = 'Source Status';
            OptionCaption = 'Simulated,Planned,Firm Planned,Released,Finished';
            OptionMembers = Simulated,Planned,"Firm Planned",Released,Finished;
        }
        field(2000060; "Source Code 3"; Code[20])
        {
            Caption = 'Source Code 3';
        }
        field(2000100; "New Entry No."; Integer)
        {
            Caption = 'New Entry No.';
        }
        field(2000110; "Type changed"; Boolean)
        {
            Caption = 'Type changed';
        }
        field(2000111; "No. changed"; Boolean)
        {
            Caption = 'No. changed';
        }
        field(2000112; "Variant changed"; Boolean)
        {
            Caption = 'Variant changed';
        }
        field(2000113; "Exp. Quantity changed"; Boolean)
        {
            Caption = 'Exp. Quantity changed';
        }
        field(2000114; "Unit of Measure changed"; Boolean)
        {
            Caption = 'Unit of Measure changed';
        }
        field(2000115; "Setup Time changed"; Boolean)
        {
            Caption = 'Setup Time changed';
        }
        field(2000116; "Run Time changed"; Boolean)
        {
            Caption = 'Run Time changed';
        }
        field(2000117; "Setup Time UoM changed"; Boolean)
        {
            Caption = 'Setup Time UoM changed';
        }
        field(2000118; "Run Time UoM changed"; Boolean)
        {
            Caption = 'Run Time UoM changed';
        }
        field(2000120; "Transfer Change"; Boolean)
        {
            Caption = 'Transfer Change';
        }
        field(2000130; "Line Deleted"; Boolean)
        {
            Caption = 'Line Deleted';
        }
        field(2000140; "Line Inserted"; Boolean)
        {
            Caption = 'Line Inserted';
        }
        field(2000150; "Operation No. changed"; Boolean)
        {
            Caption = 'Operation No. changed';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(2000151; "Next Operation No. changed"; Boolean)
        {
            Caption = 'Next Operation No. changed';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
        field(2000152; "Previous Operation No. changed"; Boolean)
        {
            Caption = 'Previous Operation No. changed';
            Description = '#DMW18.00.01:T103';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Source Table", "Source Status", "Source Code", "Source Code 2", "Source Code 3", "Source Entry No.", "Source Entry No. 2")
        {
            Clustered = true;
            SQLIndex = "Source Status", "Source Code", "Source Code 2", "Source Code 3", "Source Entry No.", "Source Entry No. 2", "Source Table";
        }
        key(Key2; "Entry No. Representation")
        {
        }
    }

    fieldgroups
    {
    }
}

