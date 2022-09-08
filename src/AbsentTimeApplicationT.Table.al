table 5056321 "Absent Time Application/T"
{
    Caption = 'Absent Time Application';
    Description = 'GrATAppl';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; "From Date"; Date)
        {
            Caption = 'From Date';
            NotBlank = true;
        }
        field(3; "To Date"; Date)
        {
            Caption = 'To Date';
            NotBlank = true;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(5; Name; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Process No."; Integer)
        {
            Caption = 'Process No.';
        }
        field(7; "Division No."; Code[10])
        {
            Caption = 'Division No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(10; "TA No. Absent Day 1"; Code[10])
        {
            Caption = 'TA No. Absent Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (Absent Days)" = CONST (Application));
        }
        field(11; "TA Descr. Absent Day 1"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("TA No. Absent Day 1")));
            Caption = 'TA Descr. Absent Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "TA No. Absent Day 2"; Code[10])
        {
            Caption = 'TA No. Absent Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (Absent Days)" = CONST (Application));
        }
        field(13; "TA Descr. Absent Day 2"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("TA No. Absent Day 2")));
            Caption = 'TA Descr. Absent Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Stand-In No. 1"; Code[20])
        {
            Caption = 'Stand-In No. 1';
            TableRelation = "Employee/T"."No.";
        }
        field(21; "Stand-In Name 1"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 1")));
            Caption = 'Stand-In Name 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Stand-In Confirmation y 1"; Boolean)
        {
            Caption = 'Stand-In Confirmation y 1';
        }
        field(23; "Stand-In Confirmation n 1"; Boolean)
        {
            Caption = 'Stand-In Confirmation n 1';
        }
        field(24; "Comment on Stand-In 1"; Text[80])
        {
            Caption = 'Comment on Stand-In 1';
        }
        field(25; "Stand-In Date 1"; Date)
        {
            Caption = 'Stand-In Date 1';
            Editable = false;
        }
        field(26; "Stand-In No. 2"; Code[20])
        {
            Caption = 'Stand-In No. 2';
            TableRelation = "Employee/T"."No.";
        }
        field(27; "Stand-In Name 2"; Text[30])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 2")));
            Caption = 'Stand-In Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Stand-In Confirmation y 2"; Boolean)
        {
            Caption = 'Stand-In Confirmation y 2';
        }
        field(29; "Stand-In Confirmation n 2"; Boolean)
        {
            Caption = 'Stand-In Confirmation n 2';
        }
        field(30; "Comment on Stand-In 2"; Text[80])
        {
            Caption = 'Comment on Stand-In 2';
        }
        field(31; "Stand-In Date 2"; Date)
        {
            Caption = 'Stand-In Date 2';
            Editable = false;
        }
        field(32; "Superior No. 1"; Code[20])
        {
            Caption = 'Superior No. 1';
            TableRelation = "Employee/T"."No.";
        }
        field(33; "Superior Name 1"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 1")));
            Caption = 'Superior Name 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "Superior Confirmation y 1"; Boolean)
        {
            Caption = 'Superior Confirmation y 1';
        }
        field(35; "Superior Confirmation n 1"; Boolean)
        {
            Caption = 'Superior Confirmation n 1';
        }
        field(36; "Comment on Superior 1"; Text[80])
        {
            Caption = 'Comment on Superior 1';
        }
        field(37; "Superior Date 1"; Date)
        {
            Caption = 'Superior Date 1';
            Editable = false;
        }
        field(38; "Superior No. 2"; Code[20])
        {
            Caption = 'Superior No. 2';
            TableRelation = "Employee/T"."No.";
        }
        field(39; "Superior Name 2"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 2")));
            Caption = 'Superior Name 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Superior Confirmation y 2"; Boolean)
        {
            Caption = 'Superior Confirmation y 2';
        }
        field(41; "Superior Confirmation n 2"; Boolean)
        {
            Caption = 'Superior Confirmation n 2';
        }
        field(42; "Comment on Superior 2"; Text[80])
        {
            Caption = 'Comment on Superior 2';
        }
        field(43; "Superior Date 2"; Date)
        {
            Caption = 'Superior Date 2';
            Editable = false;
        }
        field(44; "Status Appl. Management"; Option)
        {
            Caption = 'Status Appl. Management';
            OptionCaption = ' ,Open,Rejected,Approved,Cancelled,Info';
            OptionMembers = " ",Open,Rejected,Approved,Cancelled,Info;
        }
        field(45; "Source Employee Planning"; Option)
        {
            Caption = 'Source Employee Planning';
            OptionCaption = ' ,Inserted,Deleted,Modified,Compressed';
            OptionMembers = " ",Inserted,Deleted,Modified,Compressed;
        }
        field(46; "Entry Date"; Date)
        {
            Caption = 'Entry Date';
            Editable = false;
        }
        field(47; "Entry Time"; Time)
        {
            Caption = 'Entry Time';
            Editable = false;
        }
        field(48; "Created by User No."; Code[50])
        {
            Caption = 'Created by User No.';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(50; Comment; Text[80])
        {
            Caption = 'Comment';
        }
        field(60; "Stand-In No. 1 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 1 mandatory';
        }
        field(61; "Stand-In No. 1 optional"; Boolean)
        {
            Caption = 'Stand-In No. 1 optional';
        }
        field(62; "Stand-In No. 2 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 2 mandatory';
        }
        field(63; "Stand-In No. 2 optional"; Boolean)
        {
            Caption = 'Stand-In No. 2 optional';
        }
        field(64; "Superior No. 1 mandatory"; Boolean)
        {
            Caption = 'Superior No. 1 mandatory';
        }
        field(65; "Superior No. 1 optional"; Boolean)
        {
            Caption = 'Superior No. 1 optional';
        }
        field(66; "Superior No. 2 mandatory"; Boolean)
        {
            Caption = 'Superior No. 2 mandatory';
        }
        field(67; "Superior No. 2 optional"; Boolean)
        {
            Caption = 'Superior No. 2 optional';
        }
        field(80; "Status Integration"; Option)
        {
            Caption = 'Status Integration';
            OptionCaption = ' ,Integrated,Buffered,Cancelled';
            OptionMembers = " ",Integrated,Buffered,Cancelled;
        }
        field(81; "From Date Integration"; Date)
        {
            Caption = 'From Date Integration';
            Editable = false;
        }
        field(82; "To Date Integration"; Date)
        {
            Caption = 'To Date Integration';
        }
        field(83; "From Period Date Integration"; Date)
        {
            Caption = 'From Period Date Integration';
            Editable = false;
        }
        field(84; "To Period Date Integration"; Date)
        {
            Caption = 'To Period Date Integration';
        }
        field(200; "Stand-In No. 3"; Code[20])
        {
            Caption = 'Stand-In No. 3';
            TableRelation = "Employee/T"."No.";
        }
        field(201; "Stand-In Name 3"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 3")));
            Caption = 'Stand-In Name 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(202; "Stand-In Confirmation y 3"; Boolean)
        {
            Caption = 'Stand-In Confirmation y 3';
        }
        field(203; "Stand-In Confirmation n 3"; Boolean)
        {
            Caption = 'Stand-In Confirmation n 3';
        }
        field(204; "Comment on Stand-In 3"; Text[80])
        {
            Caption = 'Comment on Stand-In 3';
        }
        field(205; "Stand-In Date 3"; Date)
        {
            Caption = 'Stand-In Date 3';
            Editable = false;
        }
        field(206; "Stand-In No. 3 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 3 mandatory';
        }
        field(207; "Stand-In No. 3 optional"; Boolean)
        {
            Caption = 'Stand-In No. 3 optional';
        }
        field(210; "Superior No. 3"; Code[20])
        {
            Caption = 'Superior No. 3';
            TableRelation = "Employee/T"."No.";
        }
        field(211; "Superior Name 3"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 3")));
            Caption = 'Superior Name 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(212; "Superior Confirmation y 3"; Boolean)
        {
            Caption = 'Superior Confirmation y 3';
        }
        field(213; "Superior Confirmation n 3"; Boolean)
        {
            Caption = 'Superior Confirmation n 3';
        }
        field(214; "Comment on Superior 3"; Text[80])
        {
            Caption = 'Comment on Superior 3';
        }
        field(215; "Superior Date 3"; Date)
        {
            Caption = 'Superior Date 3';
            Editable = false;
        }
        field(216; "Superior No. 3 mandatory"; Boolean)
        {
            Caption = 'Superior No. 3 mandatory';
        }
        field(217; "Superior No. 3 optional"; Boolean)
        {
            Caption = 'Superior No. 3 optional';
        }
        field(220; "Stand-In No. 4"; Code[20])
        {
            Caption = 'Stand-In No. 4';
            TableRelation = "Employee/T"."No.";
        }
        field(221; "Stand-In Name 4"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 4")));
            Caption = 'Stand-In Name 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(222; "Stand-In Confirmation y 4"; Boolean)
        {
            Caption = 'Stand-In Confirmation y 4';
        }
        field(223; "Stand-In Confirmation n 4"; Boolean)
        {
            Caption = 'Stand-In Confirmation n 4';
        }
        field(224; "Comment on Stand-In 4"; Text[80])
        {
            Caption = 'Comment on Stand-In 4';
        }
        field(225; "Stand-In Date 4"; Date)
        {
            Caption = 'Stand-In Date 4';
            Editable = false;
        }
        field(226; "Stand-In No. 4 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 4 mandatory';
        }
        field(227; "Stand-In No. 4 optional"; Boolean)
        {
            Caption = 'Stand-In No. 4 optional';
        }
        field(230; "Superior No. 4"; Code[20])
        {
            Caption = 'Superior No. 4';
            TableRelation = "Employee/T"."No.";
        }
        field(231; "Superior Name 4"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 4")));
            Caption = 'Superior Name 4';
            Editable = false;
            FieldClass = FlowField;
        }
        field(232; "Superior Confirmation y 4"; Boolean)
        {
            Caption = 'Superior Confirmation y 4';
        }
        field(233; "Superior Confirmation n 4"; Boolean)
        {
            Caption = 'Superior Confirmation n 4';
        }
        field(234; "Comment on Superior 4"; Text[80])
        {
            Caption = 'Comment on Superior 4';
        }
        field(235; "Superior Date 4"; Date)
        {
            Caption = 'Superior Date 4';
            Editable = false;
        }
        field(236; "Superior No. 4 mandatory"; Boolean)
        {
            Caption = 'Superior No. 4 mandatory';
        }
        field(237; "Superior No. 4 optional"; Boolean)
        {
            Caption = 'Superior No. 4 optional';
        }
        field(240; "Stand-In No. 5"; Code[20])
        {
            Caption = 'Stand-In No. 5';
            TableRelation = "Employee/T"."No.";
        }
        field(241; "Stand-In Name 5"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 5")));
            Caption = 'Stand-In Name 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(242; "Stand-In Confirmation y 5"; Boolean)
        {
            Caption = 'Stand-In Confirmation y 5';
        }
        field(243; "Stand-In Confirmation n 5"; Boolean)
        {
            Caption = 'Stand-In Confirmation n 5';
        }
        field(244; "Comment on Stand-In 5"; Text[80])
        {
            Caption = 'Comment on Stand-In 5';
        }
        field(245; "Stand-In Date 5"; Date)
        {
            Caption = 'Stand-In Date 5';
            Editable = false;
        }
        field(246; "Stand-In No. 5 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 5 mandatory';
        }
        field(247; "Stand-In No. 5 optional"; Boolean)
        {
            Caption = 'Stand-In No. 5 optional';
        }
        field(250; "Superior No. 5"; Code[20])
        {
            Caption = 'Superior No. 5';
            TableRelation = "Employee/T"."No.";
        }
        field(251; "Superior Name 5"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 5")));
            Caption = 'Superior Name 5';
            Editable = false;
            FieldClass = FlowField;
        }
        field(252; "Superior Confirmation y 5"; Boolean)
        {
            Caption = 'Superior Confirmation y 5';
        }
        field(253; "Superior Confirmation n 5"; Boolean)
        {
            Caption = 'Superior Confirmation n 5';
        }
        field(254; "Comment on Superior 5"; Text[80])
        {
            Caption = 'Comment on Superior 5';
        }
        field(255; "Superior Date 5"; Date)
        {
            Caption = 'Superior Date 5';
            Editable = false;
        }
        field(256; "Superior No. 5 mandatory"; Boolean)
        {
            Caption = 'Superior No. 5 mandatory';
        }
        field(257; "Superior No. 5 optional"; Boolean)
        {
            Caption = 'Superior No. 5 optional';
        }
        field(260; "Stand-In No. 6"; Code[20])
        {
            Caption = 'Stand-In No. 6';
            TableRelation = "Employee/T"."No.";
        }
        field(261; "Stand-In Name 6"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Stand-In No. 6")));
            Caption = 'Stand-In Name 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(262; "Stand-In Confirmation y 6"; Boolean)
        {
            Caption = 'Stand-In Confirmation y 6';
        }
        field(263; "Stand-In Confirmation n 6"; Boolean)
        {
            Caption = 'Stand-In Confirmation n 6';
        }
        field(264; "Comment on Stand-In 6"; Text[80])
        {
            Caption = 'Comment on Stand-In 6';
        }
        field(265; "Stand-In Date 6"; Date)
        {
            Caption = 'Stand-In Date 6';
            Editable = false;
        }
        field(266; "Stand-In No. 6 mandatory"; Boolean)
        {
            Caption = 'Stand-In No. 6 mandatory';
        }
        field(267; "Stand-In No. 6 optional"; Boolean)
        {
            Caption = 'Stand-In No. 6 optional';
        }
        field(270; "Superior No. 6"; Code[20])
        {
            Caption = 'Superior No. 6';
            TableRelation = "Employee/T"."No.";
        }
        field(271; "Superior Name 6"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Superior No. 6")));
            Caption = 'Superior Name 6';
            Editable = false;
            FieldClass = FlowField;
        }
        field(272; "Superior Confirmation y 6"; Boolean)
        {
            Caption = 'Superior Confirmation y 6';
        }
        field(273; "Superior Confirmation n 6"; Boolean)
        {
            Caption = 'Superior Confirmation n 6';
        }
        field(274; "Comment on Superior 6"; Text[80])
        {
            Caption = 'Comment on Superior 6';
        }
        field(275; "Superior Date 6"; Date)
        {
            Caption = 'Superior Date 6';
            Editable = false;
        }
        field(276; "Superior No. 6 mandatory"; Boolean)
        {
            Caption = 'Superior No. 6 mandatory';
        }
        field(277; "Superior No. 6 optional"; Boolean)
        {
            Caption = 'Superior No. 6 optional';
        }
        field(280; "TA No. Balance Reduction"; Code[10])
        {
            Caption = 'TA No. Balance Reduction';
            TableRelation = "Time Account/T"."No.";
        }
        field(281; "TA Value Balance Reduction"; Decimal)
        {
            Caption = 'TA Value Balance Reduction';
        }
        field(290; "Old Clocking"; Time)
        {
            Caption = 'Old Clocking';
        }
        field(291; "Old Clocking Ref."; Code[1])
        {
            Caption = 'Old Clocking Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(292; "New Clocking"; Time)
        {
            Caption = 'New Clocking';
        }
        field(293; "New Clocking Ref."; Code[1])
        {
            Caption = 'New Clocking Ref.';
            CharAllowed = 'VVFFvvff';
        }
        field(294; "Clocking Type"; Option)
        {
            Caption = 'Clocking Type';
            OptionCaption = ' ,Coming,Leaving,Errand,Department,Break,Access,Inquiry,Info,Order Begin Serial';
            OptionMembers = " ",Coming,Leaving,Errand,Department,"Break",Access,Inquiry,Info,"Order Begin Serial";
        }
        field(295; "Clocking Function"; Option)
        {
            Caption = 'Clocking Function';
            OptionCaption = ' ,Insert,Change,Delete';
            OptionMembers = " ",Insert,Change,Delete;
        }
        field(300; "Old Input"; Code[20])
        {
            Caption = 'Old Input';
        }
        field(301; "New Input"; Code[20])
        {
            Caption = 'New Input';
        }
        field(310; "Old Order No."; Code[20])
        {
            Caption = 'Old Order No.';
        }
        field(311; "Old Task No."; Code[20])
        {
            Caption = 'Old Task No.';
        }
        field(312; "Old Dim.1"; Code[20])
        {
            Caption = 'Old Dim.1';
        }
        field(313; "Old Dim.2"; Code[20])
        {
            Caption = 'Old Dim.2';
        }
        field(314; "Old Dim.3"; Code[20])
        {
            Caption = 'Old Dim.3';
        }
        field(315; "Old Dim.4"; Code[20])
        {
            Caption = 'Old Dim.4';
        }
        field(320; "New Order No."; Code[20])
        {
            Caption = 'New Order No.';
        }
        field(321; "New Task No."; Code[20])
        {
            Caption = 'New Task No.';
        }
        field(322; "New Dim.1"; Code[20])
        {
            Caption = 'New Dim.1';
        }
        field(323; "New Dim.2"; Code[20])
        {
            Caption = 'New Dim.2';
        }
        field(324; "New Dim.3"; Code[20])
        {
            Caption = 'New Dim.3';
        }
        field(325; "New Dim.4"; Code[20])
        {
            Caption = 'New Dim.4';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "From Date", "To Date", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Process No.")
        {
        }
        key(Key3; "Employee No.", "Status Appl. Management", "From Date", "To Date", "Line No.")
        {
        }
        key(Key4; "From Date")
        {
        }
    }

    fieldgroups
    {
    }
}

