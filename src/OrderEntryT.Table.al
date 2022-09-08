table 5056332 "Order Entry/T"
{
    Caption = 'Order Entry';
    Description = 'GrOrderEntry';

    fields
    {
        field(1; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
            NotBlank = true;
            TableRelation = "Employee/T"."No.";
        }
        field(2; "Current Date"; Date)
        {
            Caption = 'Current Date';
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; Name; Text[50])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(5; "ID No."; Code[20])
        {
            Caption = 'ID No.';
        }
        field(6; Weekday; Text[30])
        {
            Caption = 'Weekday';
            Editable = false;
        }
        field(100; "TP/Coming Clocking"; Time)
        {
            Caption = 'TP/Coming Clocking';
        }
        field(101; "TP/Coming Reference"; Code[1])
        {
            Caption = 'TP/Coming Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(102; "TP/Leaving Clocking"; Time)
        {
            Caption = 'TP/Leaving Clocking';
        }
        field(103; "TP/Leaving Reference"; Code[1])
        {
            Caption = 'TP/Leaving Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(104; "TP/Break Begin Clocking"; Time)
        {
            Caption = 'TP/Break Begin Clocking';
        }
        field(105; "TP/Break Begin Reference"; Code[1])
        {
            Caption = 'TP/Break Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(106; "TP/Break End Clocking"; Time)
        {
            Caption = 'TP/Break End Clocking';
        }
        field(107; "TP/Break End Reference"; Code[1])
        {
            Caption = 'TP/Break End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(108; "TP/Department Clocking"; Time)
        {
            Caption = 'TP/Department Clocking';
        }
        field(109; "TP/Department Reference"; Code[1])
        {
            Caption = 'TP/Department Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(110; "TP/Dept. Entry"; Code[10])
        {
            Caption = 'TP/Dept. Entry';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(111; "TP/Errand Begin Clocking"; Time)
        {
            Caption = 'TP/Errand Begin Clocking';
        }
        field(112; "TP/Errand Begin Reference"; Code[1])
        {
            Caption = 'TP/Errand Begin Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(113; "TP/Errand End Clocking"; Time)
        {
            Caption = 'TP/Errand End Clocking';
        }
        field(114; "TP/Errand End Reference"; Code[1])
        {
            Caption = 'TP/Errand End Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(120; "TP/Department No."; Code[10])
        {
            Caption = 'TP/Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(121; "TP/Department Descr."; Text[10])
        {
            CalcFormula = Lookup ("Org-Form/T"."Description 2" WHERE ("Org-Form Code" = FIELD ("TP/Department No."),
                                                                     "Org-Form Type" = CONST (Department)));
            Caption = 'TP/Department Descr.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(122; "TP/Time Acc. No. - Miss. Day"; Code[10])
        {
            Caption = 'TP/Time Acc. No. Miss. Day';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(123; "TP/Time Acc. Des. - Miss. Day"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TP/Time Acc. No. - Miss. Day")));
            Caption = 'TP/Time Acc. Des. - Miss. Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(124; "TP/Present Time"; Decimal)
        {
            Caption = 'TP/Present Time';
        }
        field(130; "TP/Current Date"; Date)
        {
            Caption = 'TP/Current Date';
        }
        field(131; "TP/User No."; Code[50])
        {
            Caption = 'TP/User No.';
            TableRelation = "User Line/T"."User No.";
        }
        field(132; "TP/Clocking Status"; Option)
        {
            Caption = 'TP/Clocking Status';
            OptionCaption = ' ,Created,Posted';
            OptionMembers = " ",Created,Posted;
        }
        field(201; "JO/From Date"; Date)
        {
            Caption = 'JO/From Date';
        }
        field(202; "JO/To Date"; Date)
        {
            Caption = 'JO/To Date';
        }
        field(203; "JO/Name"; Text[50])
        {
            CalcFormula = Lookup ("Employee/T".Name WHERE ("No." = FIELD ("Employee No.")));
            Caption = 'JO/Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(204; "JO/TA No. Absent Day 1"; Code[10])
        {
            Caption = 'JO/TA No. Absent Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(205; "JO/TA Descr. Absent Day 1"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("JO/TA No. Absent Day 1")));
            Caption = 'JO/TA No. Absent Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(206; "JO/TA No. Absent Day 2"; Code[10])
        {
            Caption = 'JO/TA No. Absent Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(207; "JO/TA Descr. Absent Day 2"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("JO/TA No. Absent Day 2")));
            Caption = 'JO/TA Descr. Absent Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(208; "JO/TA No. Absent Day"; Code[10])
        {
            Caption = 'JO/TA No. Absent Day';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"),
                                                          "Time Manager: insert allowed" = CONST (true));
        }
        field(209; "JO/TA Descr. Absent Day"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("JO/TA No. Absent Day")));
            Caption = 'JO/TA Descr. Absent Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(210; "JO/Current Date"; Date)
        {
            Caption = 'JO/Current Date';
        }
        field(211; "JO/Time Account No."; Code[10])
        {
            Caption = 'JO/Time Account No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(212; "JO/Time Account Description"; Text[50])
        {
            CalcFormula = Lookup ("Time Account/T".Description WHERE ("No." = FIELD ("JO/Time Account No.")));
            Caption = 'JO/Time Account Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(213; "JO/Time Account Value"; Decimal)
        {
            Caption = 'JO/Time Account Value';
        }
        field(220; "JO/Order Begin Clock. Orig."; Time)
        {
            Caption = 'JO/Order Begin Clock. Orig.';
        }
        field(221; "JO/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'JO/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(222; "JO/Order End Clock. Orig."; Time)
        {
            Caption = 'JO/Order End Clock. Orig.';
        }
        field(223; "JO/Order End Ref. Orig."; Code[1])
        {
            Caption = 'JO/Order End Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(224; "JO/Order No."; Code[20])
        {
            Caption = 'JO/Order No.';
        }
        field(225; "JO/Task No."; Code[20])
        {
            Caption = 'JO/Task No.';
        }
        field(230; "JO/User No."; Code[50])
        {
            Caption = 'JO/User No.';
            TableRelation = "User Setup"."User ID";
        }
        field(240; "JO/Clocking Status"; Option)
        {
            Caption = 'JO/Clocking Status';
            OptionCaption = ' ,Created,Posted,Integrated';
            OptionMembers = " ",Created,Posted,Integrated;
        }
        field(350; "FDC/Order Begin Clock. Orig."; Time)
        {
            Caption = 'FDC/Order Begin Clock. Orig.';
        }
        field(351; "FDC/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'FDC/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(352; "FDC/Order Begin Entry"; Code[20])
        {
            Caption = 'FDC/Order Begin Entry';
        }
        field(353; "FDC/Task Begin Entry"; Code[20])
        {
            Caption = 'FDC/Task Begin Entry';
        }
        field(354; "FDC/Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'FDC/Dimension 1 Begin Entry';
        }
        field(355; "FDC/Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'FDC/Dimension 2 Begin Entry';
        }
        field(356; "FDC/Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'FDC/Dimension 3 Begin Entry';
        }
        field(357; "FDC/Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'FDC/Dimension 4 Begin Entry';
        }
        field(360; "FDC/Order Begin Error"; Boolean)
        {
            Caption = 'FDC/Order Begin Error';
        }
        field(361; "FDC/Task Begin Error"; Boolean)
        {
            Caption = 'FDC/Task Begin Error';
        }
        field(362; "FDC/Dimension 1 Begin Error"; Boolean)
        {
            Caption = 'FDC/Dimension 1 Begin Error';
        }
        field(363; "FDC/Dimension 2 Begin Error"; Boolean)
        {
            Caption = 'FDC/Dimension 2 Begin Error';
        }
        field(364; "FDC/Dimension 3 Begin Error"; Boolean)
        {
            Caption = 'FDC/Dimension 3 Begin Error';
        }
        field(365; "FDC/Dimension 4 Begin Error"; Boolean)
        {
            Caption = 'FDC/Dimension 4 Begin Error';
        }
        field(370; "PAR/Order Begin Clock. Orig."; Time)
        {
            Caption = 'PAR/Order Begin Clock. Orig.';
        }
        field(371; "PAR/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'PAR/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(372; "PAR/Order Begin Entry"; Code[20])
        {
            Caption = 'PAR/Order Begin Entry';
        }
        field(373; "PAR/Task Begin Entry"; Code[20])
        {
            Caption = 'PAR/Task Begin Entry';
        }
        field(374; "PAR/Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 1 Begin Entry';
        }
        field(375; "PAR/Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 2 Begin Entry';
        }
        field(376; "PAR/Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 3 Begin Entry';
        }
        field(377; "PAR/Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 4 Begin Entry';
        }
        field(380; "PAR/Order Begin Error"; Boolean)
        {
            Caption = 'PAR/Order Begin Error';
        }
        field(381; "PAR/Task Begin Error"; Boolean)
        {
            Caption = 'PAR/Task Begin Error';
        }
        field(382; "PAR/Dimension 1 Begin Error"; Boolean)
        {
            Caption = 'PAR/Dimension 1 Begin Error';
        }
        field(383; "PAR/Dimension 2 Begin Error"; Boolean)
        {
            Caption = 'PAR/Dimension 2 Begin Error';
        }
        field(384; "PAR/Dimension 3 Begin Error"; Boolean)
        {
            Caption = 'PAR/Dimension 3 Begin Error';
        }
        field(385; "PAR/Dimension 4 Begin Error"; Boolean)
        {
            Caption = 'PAR/Dimension 4 Begin Error';
        }
        field(390; "PAR/Order End Clock. Orig."; Time)
        {
            Caption = 'PAR/Order End Clock. Orig.';
        }
        field(391; "PAR/Order End Ref. Orig."; Code[1])
        {
            Caption = 'PAR/Order End Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(392; "PAR/Order End Entry"; Code[20])
        {
            Caption = 'PAR/Order End Entry';
        }
        field(393; "PAR/Task End Entry"; Code[20])
        {
            Caption = 'PAR/Task End Entry';
        }
        field(394; "PAR/Dimension 1 End Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 1 End Entry';
        }
        field(395; "PAR/Dimension 2 End Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 2 End Entry';
        }
        field(396; "PAR/Dimension 3 End Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 3 End Entry';
        }
        field(397; "PAR/Dimension 4 End Entry"; Code[20])
        {
            Caption = 'PAR/Dimension 4 End Entry';
        }
        field(400; "PAR/Order End Error"; Boolean)
        {
            Caption = 'PAR/Order End Error';
        }
        field(401; "PAR/Task End Error"; Boolean)
        {
            Caption = 'PAR/Task End Error';
        }
        field(402; "PAR/Dimension 1 End Error"; Boolean)
        {
            Caption = 'PAR/Dimension 1 End Error';
        }
        field(403; "PAR/Dimension 2 End Error"; Boolean)
        {
            Caption = 'PAR/Dimension 2 End Error';
        }
        field(404; "PAR/Dimension 3 End Error"; Boolean)
        {
            Caption = 'PAR/Dimension 3 End Error';
        }
        field(405; "PAR/Dimension 4 End Error"; Boolean)
        {
            Caption = 'PAR/Dimension 4 End Error';
        }
        field(410; "QTY/Order Begin Clock. Orig."; Time)
        {
            Caption = 'QTY/Order Begin Clock. Orig.';
        }
        field(411; "QTY/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'QTY/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(412; "QTY/Order Begin Entry"; Code[20])
        {
            Caption = 'QTY/Order Begin Entry';
        }
        field(413; "QTY/Task Begin Entry"; Code[20])
        {
            Caption = 'QTY/Task Begin Entry';
        }
        field(414; "QTY/Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'QTY/Dimension 1 Begin Entry';
        }
        field(415; "QTY/Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'QTY/Dimension 2 Begin Entry';
        }
        field(416; "QTY/Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'QTY/Dimension 3 Begin Entry';
        }
        field(417; "QTY/Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'QTY/Dimension 4 Begin Entry';
        }
        field(418; "QTY/Quantity"; Decimal)
        {
            Caption = 'QTY/Quantity';
        }
        field(420; "QTY/Order Begin Error"; Boolean)
        {
            Caption = 'QTY/Order Begin Error';
        }
        field(421; "QTY/Task Begin Error"; Boolean)
        {
            Caption = 'QTY/Task Begin Error';
        }
        field(422; "QTY/Dimension 1 Begin Error"; Boolean)
        {
            Caption = 'QTY/Dimension 1 Begin Error';
        }
        field(423; "QTY/Dimension 2 Begin Error"; Boolean)
        {
            Caption = 'QTY/Dimension 2 Begin Error';
        }
        field(424; "QTY/Dimension 3 Begin Error"; Boolean)
        {
            Caption = 'QTY/Dimension 3 Begin Error';
        }
        field(425; "QTY/Dimension 4 Begin Error"; Boolean)
        {
            Caption = 'QTY/Dimension 4 Begin Error';
        }
        field(430; "SCR/Order Begin Clock. Orig."; Time)
        {
            Caption = 'SCR/Order Begin Clock. Orig.';
        }
        field(431; "SCR/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'SCR/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(432; "SCR/Order Begin Entry"; Code[20])
        {
            Caption = 'SCR/Order Begin Entry';
        }
        field(433; "SCR/Task Begin Entry"; Code[20])
        {
            Caption = 'SCR/Task Begin Entry';
        }
        field(434; "SCR/Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'SCR/Dimension 1 Begin Entry';
        }
        field(435; "SCR/Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'SCR/Dimension 2 Begin Entry';
        }
        field(436; "SCR/Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'SCR/Dimension 3 Begin Entry';
        }
        field(437; "SCR/Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'SCR/Dimension 4 Begin Entry';
        }
        field(438; "SCR/Quantity Scrap"; Decimal)
        {
            Caption = 'SCR/Quantity Scrap';
        }
        field(439; "SCR/Code Scrap"; Code[10])
        {
            Caption = 'SCR/Code Scrap';
        }
        field(440; "SCR/Order Begin Error"; Boolean)
        {
            Caption = 'SCR/Order Begin Error';
        }
        field(441; "SCR/Task Begin Error"; Boolean)
        {
            Caption = 'SCR/Task Begin Error';
        }
        field(442; "SCR/Dimension 1 Begin Error"; Boolean)
        {
            Caption = 'SCR/Dimension 1 Begin Error';
        }
        field(443; "SCR/Dimension 2 Begin Error"; Boolean)
        {
            Caption = 'SCR/Dimension 2 Begin Error';
        }
        field(444; "SCR/Dimension 3 Begin Error"; Boolean)
        {
            Caption = 'SCR/Dimension 3 Begin Error';
        }
        field(445; "SCR/Dimension 4 Begin Error"; Boolean)
        {
            Caption = 'SCR/Dimension 4 Begin Error';
        }
        field(450; "END/Order Begin Clock. Orig."; Time)
        {
            Caption = 'END/Order Begin Clock. Orig.';
        }
        field(451; "END/Order Begin Ref. Orig."; Code[1])
        {
            Caption = 'END/Order Begin Ref. Orig.';
            CharAllowed = 'VVFFvvff';
        }
        field(452; "END/Order Begin Entry"; Code[20])
        {
            Caption = 'END/Order Begin Entry';
        }
        field(453; "END/Task Begin Entry"; Code[20])
        {
            Caption = 'END/Task Begin Entry';
        }
        field(454; "END/Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'END/Dimension 1 Begin Entry';
        }
        field(455; "END/Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'END/Dimension 2 Begin Entry';
        }
        field(456; "END/Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'END/Dimension 3 Begin Entry';
        }
        field(457; "END/Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'END/Dimension 4 Begin Entry';
        }
        field(458; "END/Status Finished"; Code[1])
        {
            Caption = 'END/Status Finished';
        }
        field(460; "END/Order Begin Error"; Boolean)
        {
            Caption = 'END/Order Begin Error';
        }
        field(461; "END/Task Begin Error"; Boolean)
        {
            Caption = 'END/Task Begin Error';
        }
        field(462; "END/Dimension 1 Begin Error"; Boolean)
        {
            Caption = 'END/Dimension 1 Begin Error';
        }
        field(463; "END/Dimension 2 Begin Error"; Boolean)
        {
            Caption = 'END/Dimension 2 Begin Error';
        }
        field(464; "END/Dimension 3 Begin Error"; Boolean)
        {
            Caption = 'END/Dimension 3 Begin Error';
        }
        field(465; "END/Dimension 4 Begin Error"; Boolean)
        {
            Caption = 'END/Dimension 4 Begin Error';
        }
        field(600; Street; Text[30])
        {
            Caption = 'Street';
        }
        field(601; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            TableRelation = "Post Code".Code;
            ValidateTableRelation = false;
        }
        field(602; City; Text[30])
        {
            Caption = 'City';
        }
        field(603; "Business Phone No."; Text[30])
        {
            Caption = 'Business Phone No.';
        }
        field(604; "Private Business Phone No."; Text[30])
        {
            Caption = 'Private Business Phone No.';
        }
        field(605; Fax; Text[30])
        {
            Caption = 'Fax';
        }
        field(606; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
        }
        field(607; Homepage; Text[80])
        {
            Caption = 'Homepage';
        }
        field(608; Sex; Option)
        {
            Caption = 'Sex';
            OptionCaption = ' ,female,male';
            OptionMembers = " ",female,male;
        }
        field(609; "Employment Date"; Date)
        {
            Caption = 'Employment Date';
        }
        field(610; "Leaving Date"; Date)
        {
            Caption = 'Leaving Date';
        }
        field(611; "Department No."; Code[10])
        {
            Caption = 'Department No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(612; "Division No."; Code[10])
        {
            Caption = 'Division No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(613; "Activity No."; Code[10])
        {
            Caption = 'Activity No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(614; "Company No."; Code[10])
        {
            Caption = 'Company No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(615; "Pay Group No."; Code[10])
        {
            Caption = 'Pay Group No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(616; "Group No. 1"; Code[10])
        {
            Caption = 'Group No. 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(617; "Group No. 2"; Code[10])
        {
            Caption = 'Group No. 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(618; "Group No. 3"; Code[10])
        {
            Caption = 'Group No. 3';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(619; "Time Object No."; Code[10])
        {
            Caption = 'Time Object No.';
            TableRelation = "Time Object/T"."No.";
        }
        field(1010; "Coming Clocking Original"; Time)
        {
            Caption = 'Coming Clocking Original';
        }
        field(1011; "Coming Ref. Original"; Code[1])
        {
            Caption = 'Coming Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(1012; "Coming Clocking Actual"; Time)
        {
            Caption = 'Coming Clocking Actual';
        }
        field(1013; "Coming Ref. Actual"; Code[1])
        {
            Caption = 'Coming Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(1014; "Coming Clocking Target"; Time)
        {
            Caption = 'Coming Clocking Target';
        }
        field(1015; "Coming Ref. Target"; Code[1])
        {
            Caption = 'Coming Ref. Target';
            CharAllowed = 'VVFFvvff';
        }
        field(1016; "Coming Source"; Option)
        {
            Caption = 'Coming Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1017; "Coming Terminal No."; Code[10])
        {
            Caption = 'Coming Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1018; "Coming Clocking Manual"; Time)
        {
            Caption = 'Coming Clocking Manual';
        }
        field(1019; "Coming Ref. Manual"; Code[1])
        {
            Caption = 'Coming Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(1020; "Leaving Clocking Original"; Time)
        {
            Caption = 'Leaving Clocking Original';
        }
        field(1021; "Leaving Ref. Original"; Code[1])
        {
            Caption = 'Leaving Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(1022; "Leaving Clocking Actual"; Time)
        {
            Caption = 'Leaving Clocking Actual';
        }
        field(1023; "Leaving Ref. Actual"; Code[1])
        {
            Caption = 'Leaving Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(1024; "Leaving Clocking Target"; Time)
        {
            Caption = 'Leaving Clocking Target';
        }
        field(1025; "Leaving Ref. Target"; Code[1])
        {
            Caption = 'Leaving Ref. Target';
            CharAllowed = 'VVFFvvff';
        }
        field(1026; "Leaving Source"; Option)
        {
            Caption = 'Leaving Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1027; "Leaving Terminal No."; Code[10])
        {
            Caption = 'Leaving Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1028; "Leaving Clocking Manual"; Time)
        {
            Caption = 'Leaving Clocking Manual';
        }
        field(1029; "Leaving Ref. Manual"; Code[1])
        {
            Caption = 'Leaving Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(1030; "Errand Clocking Original 1"; Time)
        {
            Caption = 'Errand Clocking Original 1';
        }
        field(1031; "Errand Ref. Original 1"; Code[1])
        {
            Caption = 'Errand Ref. Original 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1032; "Errand Clocking Actual 1"; Time)
        {
            Caption = 'Errand Clocking Actual 1';
        }
        field(1033; "Errand Ref. Actual 1"; Code[1])
        {
            Caption = 'Errand Ref. Actual 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1034; "Errand Source 1"; Option)
        {
            Caption = 'Errand Source 1';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1035; "Errand Terminal No. 1"; Code[10])
        {
            Caption = 'Errand Terminal No. 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1036; "Errand Clocking Manual 1"; Time)
        {
            Caption = 'Errand Clocking Manual 1';
        }
        field(1037; "Errand Ref. Manual 1"; Code[1])
        {
            Caption = 'Errand Ref. Manual 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1040; "Errand Clocking Original 2"; Time)
        {
            Caption = 'Errand Clocking Original 2';
        }
        field(1041; "Errand Ref. Original 2"; Code[1])
        {
            Caption = 'Errand Ref. Original 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1042; "Errand Clocking Actual 2"; Time)
        {
            Caption = 'Errand Clocking Actual 2';
        }
        field(1043; "Errand Ref. Actual 2"; Code[1])
        {
            Caption = 'Errand Ref. Actual 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1044; "Errand Source 2"; Option)
        {
            Caption = 'Errand Source 2';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1045; "Errand Terminal No. 2"; Code[10])
        {
            Caption = 'Errand Terminal No. 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1046; "Errand Clocking Manual 2"; Time)
        {
            Caption = 'Errand Clocking Manual 2';
        }
        field(1047; "Errand Ref. Manual 2"; Code[1])
        {
            Caption = 'Errand Ref. Manual 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1050; "Department Clocking Original"; Time)
        {
            Caption = 'Department Clocking Original';
        }
        field(1051; "Department Ref. Original"; Code[1])
        {
            Caption = 'Department Ref. Original';
            CharAllowed = 'VVFFvvff';
        }
        field(1052; "Department Clocking Actual"; Time)
        {
            Caption = 'Department Clocking Actual';
        }
        field(1053; "Department Ref. Actual"; Code[1])
        {
            Caption = 'Department Ref. Actual';
            CharAllowed = 'VVFFvvff';
        }
        field(1054; "Department Source"; Option)
        {
            Caption = 'Department Source';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1055; "Department Terminal No."; Code[10])
        {
            Caption = 'Department Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1056; "Department Entry"; Code[10])
        {
            Caption = 'Department Entry';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(1057; "Department Clocking Manual"; Time)
        {
            Caption = 'Department Clocking Manual';
        }
        field(1058; "Department Ref. Manual"; Code[1])
        {
            Caption = 'Department Ref. Manual';
            CharAllowed = 'VVFFvvff';
        }
        field(1059; "Department Entry Manual"; Code[10])
        {
            Caption = 'Department Entry Manual';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(1060; "Break Clocking Original 1"; Time)
        {
            Caption = 'Break Clocking Original 1';
        }
        field(1061; "Break Ref. Original 1"; Code[1])
        {
            Caption = 'Break Ref. Original 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1062; "Break Clocking Actual 1"; Time)
        {
            Caption = 'Break Clocking Actual 1';
        }
        field(1063; "Break Ref. Actual 1"; Code[1])
        {
            Caption = 'Break Ref. Actual 1';
        }
        field(1064; "Break Entry 1"; Code[10])
        {
            Caption = 'Break Entry 1';
        }
        field(1065; "Break Source 1"; Option)
        {
            Caption = 'Break Source 1';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1066; "Break Terminal No. 1"; Code[10])
        {
            Caption = 'Break Terminal No. 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1067; "Break Clocking Manual 1"; Time)
        {
            Caption = 'Break Clocking Manual 1';
        }
        field(1068; "Break Ref. Manual 1"; Code[1])
        {
            Caption = 'Break Ref. Manual 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1070; "Break Clocking Original 2"; Time)
        {
            Caption = 'Break Clocking Original 2';
        }
        field(1071; "Break Ref. Original 2"; Code[1])
        {
            Caption = 'Break Ref. Original 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1072; "Break Clocking Actual 2"; Time)
        {
            Caption = 'Break Clocking Actual 2';
        }
        field(1073; "Break Ref. Actual 2"; Code[1])
        {
            Caption = 'Break Ref. Actual 2';
        }
        field(1074; "Break Entry 2"; Code[10])
        {
            Caption = 'Break Entry 2';
        }
        field(1075; "Break Source 2"; Option)
        {
            Caption = 'Break Source 2';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1076; "Break Terminal No. 2"; Code[10])
        {
            Caption = 'Break Terminal No. 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1077; "Break Clocking Manual 2"; Time)
        {
            Caption = 'Break Clocking Manual 2';
        }
        field(1078; "Break Ref. Manual 2"; Code[1])
        {
            Caption = 'Break Ref. Manual 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1080; "Info Clocking Original 1"; Time)
        {
            Caption = 'Info Clocking Original 1';
        }
        field(1081; "Info Ref. Original 1"; Code[1])
        {
            Caption = 'Info Ref. Original 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1082; "Info Clocking Actual 1"; Time)
        {
            Caption = 'Info Clocking Actual 1';
        }
        field(1083; "Info Ref. Actual 1"; Code[1])
        {
            Caption = 'Info Ref. Actual 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1084; "Info Source 1"; Option)
        {
            Caption = 'Info Source 1';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1085; "Info Terminal No. 1"; Code[10])
        {
            Caption = 'Info Terminal No. 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1086; "Info Entry 1"; Code[10])
        {
            Caption = 'Info Entry 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(1087; "Info Clocking Manual 1"; Time)
        {
            Caption = 'Info Clocking Manual 1';
        }
        field(1088; "Info Ref. Manual 1"; Code[1])
        {
            Caption = 'Info Ref. Manual 1';
            CharAllowed = 'VVFFvvff';
        }
        field(1089; "Info Entry Manual 1"; Code[10])
        {
            Caption = 'InfoEingMan1';
            TableRelation = "Time Account/T"."No.";
        }
        field(1090; "Info Clocking Original 2"; Time)
        {
            Caption = 'Info Clocking Original 2';
        }
        field(1091; "Info Ref. Original 2"; Code[1])
        {
            Caption = 'Info Ref. Original 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1092; "Info Clocking Actual 2"; Time)
        {
            Caption = 'Info Clocking Actual 2';
        }
        field(1093; "Info Ref. Actual 2"; Code[1])
        {
            Caption = 'Info Ref. Actual 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1094; "Info Source 2"; Option)
        {
            Caption = 'Info Source 2';
            OptionCaption = 'Terminal Clocking,Inserted Clocking,Deleted Clocking,Automatic Clocking';
            OptionMembers = "Terminal Clocking","Inserted Clocking","Deleted Clocking","Automatic Clocking";
        }
        field(1095; "Info Terminal No. 2"; Code[10])
        {
            Caption = 'Info Terminal No. 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(1096; "Info Entry 2"; Code[10])
        {
            Caption = 'Info Entry 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(1097; "Info Clocking Manual 2"; Time)
        {
            Caption = 'Info Clocking Manual 2';
        }
        field(1098; "Info Ref. Manual 2"; Code[1])
        {
            Caption = 'Info Ref. Manual 2';
            CharAllowed = 'VVFFvvff';
        }
        field(1099; "Info Entry Manual 2"; Code[10])
        {
            Caption = 'InfoEingMan2';
            TableRelation = "Time Account/T"."No.";
        }
        field(1200; "User No."; Code[50])
        {
            Caption = 'User No.';
            TableRelation = "User Line/T"."User No.";
        }
        field(1201; "Clocking Status"; Option)
        {
            Caption = 'Clocking Status';
            OptionCaption = 'Unfinished,Deviating,OK,Processed,Manual';
            OptionMembers = Unfinished,Deviating,OK,Processed,Manual;
        }
        field(1202; "Integration Status"; Option)
        {
            Caption = 'Integration Status';
            OptionCaption = 'Not Integrated,Integrated Pay,Pay,FDC,Integrated Pay/FDC';
            OptionMembers = "Not Integrated","Integrated Pay",Pay,FDC,"Integrated Pay/FDC";
        }
        field(1203; "Cause of Deviation"; Text[80])
        {
            Caption = 'Cause of Deviation';
        }
        field(1204; Remark; Text[80])
        {
            Caption = 'Remark';
        }
        field(1210; "Unpaired Coming/Leaving"; Boolean)
        {
            Caption = 'Unpaired Coming/Leaving';
        }
        field(1211; "Unpaired Errand"; Boolean)
        {
            Caption = 'Unpaired Errand';
        }
        field(1212; "Unpaired Break"; Boolean)
        {
            Caption = 'Unpaired Break';
        }
        field(1213; "Illogical Coming/Leaving"; Boolean)
        {
            Caption = 'Illogical Coming/Leaving';
        }
        field(1214; "Time Account Exceeded"; Boolean)
        {
            Caption = 'Time Account Exceeded';
        }
        field(1215; "Present on Absent Day"; Boolean)
        {
            Caption = 'Present on Absent Day';
        }
        field(1216; "Department invalid"; Boolean)
        {
            Caption = 'Department invalid';
        }
        field(1217; "FDC Clocking invalid"; Boolean)
        {
            Caption = 'FDC Clocking invalid';
        }
        field(1218; "FDC Clocking illogical"; Boolean)
        {
            Caption = 'FDC Clocking illogical';
        }
        field(1219; "CASE-Procedure"; Boolean)
        {
            Caption = 'CASE-Procedure';
        }
        field(1220; "Unpaired Info"; Boolean)
        {
            Caption = 'Unpaired Info';
        }
        field(1230; Correction; Boolean)
        {
            Caption = 'Correction';
            Editable = false;
        }
        field(1231; "Correction by"; Code[50])
        {
            Caption = 'Correction by';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(1232; "Correction Date"; Date)
        {
            Caption = 'Correction Date';
            Editable = false;
        }
        field(1233; "Correction Time"; Time)
        {
            Caption = 'Correction Time';
            Editable = false;
        }
        field(1240; Application; Boolean)
        {
            Caption = 'Application';
            Editable = false;
        }
        field(1241; "Application by"; Code[50])
        {
            Caption = 'Application by';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(1242; "Application Date"; Date)
        {
            Caption = 'Application Date';
            Editable = false;
        }
        field(1243; "Application Time"; Time)
        {
            Caption = 'Application Time';
            Editable = false;
        }
        field(1250; Approved; Boolean)
        {
            Caption = 'Approved';
        }
        field(1251; "Approved by"; Code[50])
        {
            Caption = 'Approved by';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(1252; "Approved Date"; Date)
        {
            Caption = 'Approved Date';
            Editable = false;
        }
        field(1253; "Approved Time"; Time)
        {
            Caption = 'Approved Time';
            Editable = false;
        }
        field(1260; Posted; Boolean)
        {
            Caption = 'Posted';
            Editable = false;
        }
        field(1261; "Posted by"; Code[50])
        {
            Caption = 'Posted by';
            Editable = false;
            TableRelation = "User Line/T"."User No.";
        }
        field(1262; "Posted Date"; Date)
        {
            Caption = 'Posted Date';
            Editable = false;
        }
        field(1263; "Posted Time"; Time)
        {
            Caption = 'Posted Time';
            Editable = false;
        }
        field(1264; "TA No. Evaluate 1"; Code[10])
        {
            Caption = 'TA No. Evaluate 1';
            TableRelation = "Time Account/T"."No.";
        }
        field(1265; "Value 1"; Decimal)
        {
            Caption = 'Value 1';
        }
        field(1266; "TA No. Evaluate 2"; Code[10])
        {
            Caption = 'TA No. Evaluate 2';
            TableRelation = "Time Account/T"."No.";
        }
        field(1267; "Value 2"; Decimal)
        {
            Caption = 'Value 2';
        }
        field(1268; "Time Grid No. Overtime"; Code[10])
        {
            Caption = 'Time Grid No. Overtime';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Overtime Object 2000-2999"));
        }
        field(1269; "Time Grid No. Absences"; Code[10])
        {
            Caption = 'Time Grid No. Absences';
            TableRelation = "Time Grid/T"."No." WHERE ("Object Class" = CONST ("Absent Time Object 3000-3999"));
        }
        field(1270; "TA No. Overtime"; Code[10])
        {
            Caption = 'TA No. Overtime';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Overtime));
        }
        field(1271; "TA No. Absences"; Code[10])
        {
            Caption = 'TA No. Absences';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Time"));
        }
        field(1273; "Day Object No."; Code[10])
        {
            Caption = 'Day Object No.';
            TableRelation = "Day Object/T"."No.";
        }
        field(1274; "Rounding Object Inactive 1"; Code[20])
        {
            Caption = 'Rounding Object Inactive 1';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(1275; "Rounding Object Inactive 2"; Code[20])
        {
            Caption = 'Rounding Object Inactive 2';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(1276; "Rounding Object Inactive 3"; Code[20])
        {
            Caption = 'Rounding Object Inactive 3';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(1277; "Rounding Object Inactive 4"; Code[20])
        {
            Caption = 'Rounding Object Inactive 4';
            TableRelation = "Rounding Object/T"."No.";
        }
        field(1278; "Rounding Group No."; Code[20])
        {
            Caption = 'Rounding Group No.';
            TableRelation = "Rounding Group/T"."No.";
        }
        field(1279; "Time Acc. No. - Absent Day 1"; Code[10])
        {
            Caption = 'Time Acc. No. - Absent Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(1280; "Time Acc. No. - Absent Day 2"; Code[10])
        {
            Caption = 'Time Acc. No. - Absent Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Absent Day"));
        }
        field(1281; "Day Object Description 2"; Text[10])
        {
            Caption = 'Day Object Description 2';
        }
        field(1282; "Day Object Symbol"; Text[10])
        {
            Caption = 'Day Object Symbol';
        }
        field(1290; "Department/Day"; Code[10])
        {
            Caption = 'Department/Day';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(1291; "Order/Day"; Code[20])
        {
            Caption = 'Order/Day';
        }
        field(1292; "Task/Day"; Code[20])
        {
            Caption = 'Task/Day';
        }
        field(1293; "Dimension 1/Day"; Code[20])
        {
            Caption = 'Dimension 1/Day';
        }
        field(1294; "Dimension 2/Day"; Code[20])
        {
            Caption = 'Dimension 2/Day';
        }
        field(1295; "Dimension 3/Day"; Code[20])
        {
            Caption = 'Dimension 3/Day';
        }
        field(1296; "Dimension 4/Day"; Code[20])
        {
            Caption = 'Dimension 4/Day';
        }
        field(1300; "Order Begin Clock. Orig."; Time)
        {
            Caption = 'Order Begin Clock. Orig.';
        }
        field(1301; "Order Begin Ref. Orig."; Code[20])
        {
            Caption = 'Order Begin Ref. Orig.';
        }
        field(1302; "Order Begin Entry"; Code[20])
        {
            Caption = 'Order Begin Entry';
        }
        field(1303; "Task Begin Entry"; Code[20])
        {
            Caption = 'Task Begin Entry';
        }
        field(1304; "Dimension 1 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 1 Begin Entry';
        }
        field(1305; "Dimension 2 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 2 Begin Entry';
        }
        field(1306; "Dimension 3 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 3 Begin Entry';
        }
        field(1307; "Dimension 4 Begin Entry"; Code[20])
        {
            Caption = 'Dimension 4 Begin Entry';
        }
        field(1310; "Order Begin Clock. Man."; Time)
        {
            Caption = 'Order Begin Clock. Man.';
        }
        field(1311; "Order Begin Ref. Man."; Code[20])
        {
            Caption = 'Order Begin Ref. Man.';
        }
        field(1312; "Order Begin Man."; Code[20])
        {
            Caption = 'Order Begin Man.';
        }
        field(1313; "Task Begin Man."; Code[20])
        {
            Caption = 'Task Begin Man.';
        }
        field(1314; "Dimension 1 Begin Man."; Code[20])
        {
            Caption = 'Dimension 1 Begin Man.';
        }
        field(1315; "Dimension 2 Begin Man."; Code[20])
        {
            Caption = 'Dimension 2 Begin Man.';
        }
        field(1316; "Dimension 3 Begin Man."; Code[20])
        {
            Caption = 'Dimension 3 Begin Man.';
        }
        field(1317; "Dimension 4 Begin Man."; Code[20])
        {
            Caption = 'Dimension 4 BeginMan.';
        }
    }

    keys
    {
        key(Key1; "Employee No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Line No.")
        {
        }
        key(Key3; "Employee No.", "Current Date", "Line No.")
        {
        }
        key(Key4; "Employee No.", "PAR/Order End Clock. Orig.", "FDC/Order Begin Clock. Orig.", "Line No.")
        {
        }
        key(Key5; Name, "Employee No.", "Current Date", "Line No.")
        {
        }
    }

    fieldgroups
    {
    }
}

