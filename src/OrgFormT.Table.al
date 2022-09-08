table 5056316 "Org-Form/T"
{
    Caption = 'Organisation Form';
    DataCaptionFields = "Org-Form Code", "Org-Form Type", Description;
    Description = 'GrOrgForm';

    fields
    {
        field(1; "Org-Form Code"; Code[30])
        {
            Caption = 'Organisation Form Code';
            NotBlank = true;
        }
        field(2; "Org-Form Type"; Option)
        {
            Caption = 'Org-Form Type';
            OptionCaption = 'Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Terminal,Key Reference,Employee Field,Access Group';
            OptionMembers = Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3",Terminal,"Key Reference","Employee Field","Access Group";
        }
        field(3; Description; Text[80])
        {
            Caption = 'Description';
        }
        field(4; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
            NotBlank = false;
        }
        field(5; Active; Boolean)
        {
            Caption = 'Active';
        }
        field(6; "Key Reference No."; Code[10])
        {
            Caption = 'Key Reference No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Key Reference"));
        }
        field(8; "Main-Department"; Code[10])
        {
            Caption = 'Main-Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(9; "Dept.Output Export Presence"; Boolean)
        {
            Caption = 'Dept.Output Export Presence';
        }
        field(10; "Dept.Minimum Capacity"; Decimal)
        {
            Caption = 'Dept.Minimum Capacity';
            NotBlank = false;
        }
        field(11; "Terminal Entry"; Code[10])
        {
            Caption = 'Terminal Entry';
        }
        field(20; "Bonus Percent Factor"; Decimal)
        {
            Caption = 'Bonus Percent Factor';
        }
        field(21; "Bonus Time Account Source"; Code[10])
        {
            Caption = 'Bonus Time Account Source';
            TableRelation = "Time Account/T"."No.";
        }
        field(22; "Bonus Time Account Destination"; Code[10])
        {
            Caption = 'Bonus Time Account Destination';
            TableRelation = "Time Account/T"."No.";
        }
        field(30; "Split-Time Multiplier (Bonus)"; Decimal)
        {
            Caption = 'Split-Time Multiplier (Bonus)';
        }
        field(31; "Sum Target Times (Bonus)"; Decimal)
        {
            Caption = 'Sum Target Times (Bonus)';
        }
        field(50; "M1.Minimum Code"; Decimal)
        {
            Caption = 'M1.Minimum Code';
        }
        field(51; "M1.Maximum Code"; Decimal)
        {
            Caption = 'M1.Maximum Code';
        }
        field(52; "M1.Bonus Value"; Decimal)
        {
            Caption = 'M1.Bonus Value';
        }
        field(55; "M2.Minimum Code"; Decimal)
        {
            Caption = 'M2.Minimum Code';
        }
        field(56; "M2.Maximum Code"; Decimal)
        {
            Caption = 'M2.Maximum Code';
        }
        field(57; "M2.Bonus Value"; Decimal)
        {
            Caption = 'M2.Bonus Value';
        }
        field(60; "M3.Minimum Code"; Decimal)
        {
            Caption = 'M3.Minimum Code';
        }
        field(61; "M3.Maximum Code"; Decimal)
        {
            Caption = 'M3.Maximum Code';
        }
        field(62; "M3.Bonus Value"; Decimal)
        {
            Caption = 'M3.Bonus Value';
        }
        field(65; "M4.Minimum Code"; Decimal)
        {
            Caption = 'M4.Minimum Code';
        }
        field(66; "M4.Maximum Code"; Decimal)
        {
            Caption = 'M4.Maximum Code';
        }
        field(67; "M4.Bonus Value"; Decimal)
        {
            Caption = 'M4.Bonus Value';
        }
        field(70; "M5.Minimum Code"; Decimal)
        {
            Caption = 'M5.Minimum Code';
        }
        field(71; "M5.Maximum Code"; Decimal)
        {
            Caption = 'M5.Maximum Code';
        }
        field(72; "M5.Bonus Value"; Decimal)
        {
            Caption = 'M5.Bonus Value';
        }
        field(75; "M6.Minimum Code"; Decimal)
        {
            Caption = 'M6.Minimum Code';
        }
        field(76; "M6.Maximum Code"; Decimal)
        {
            Caption = 'M6.Maximum Code';
        }
        field(77; "M6.Bonus Value"; Decimal)
        {
            Caption = 'M6.Bonus Value';
        }
        field(80; "M7.Minimum Code"; Decimal)
        {
            Caption = 'M7.Minimum Code';
        }
        field(81; "M7.Maximum Code"; Decimal)
        {
            Caption = 'M7.Maximum Code';
        }
        field(82; "M7.Bonus Value"; Decimal)
        {
            Caption = 'M7.Bonus Value';
        }
        field(85; "M8.Minimum Code"; Decimal)
        {
            Caption = 'M8.Minimum Code';
        }
        field(86; "M8.Maximum Code"; Decimal)
        {
            Caption = 'M8.Maximum Code';
        }
        field(87; "M8.Bonus Value"; Decimal)
        {
            Caption = 'M8.Bonus Value';
        }
        field(90; "M9.Minimum Code"; Decimal)
        {
            Caption = 'M9.Minimum Code';
        }
        field(91; "M9.Maximum Code"; Decimal)
        {
            Caption = 'M9.Maximum Code';
        }
        field(92; "M9.Bonus Value"; Decimal)
        {
            Caption = 'M9.Bonus Value';
        }
        field(95; "M10.Minimum Code"; Decimal)
        {
            Caption = 'M10.Minimum Code';
        }
        field(96; "M10.Maximum Code"; Decimal)
        {
            Caption = 'M10.Maximum Code';
        }
        field(97; "M10.Bonus Value"; Decimal)
        {
            Caption = 'M10.Bonus Value';
        }
        field(100; "M.Bonus Code processed"; Decimal)
        {
            Caption = 'M.Bonus Code processed';
        }
        field(101; "M.Bonus Value processed"; Decimal)
        {
            Caption = 'M.Bonus Value processed';
        }
        field(102; "M.Date processed"; Date)
        {
            Caption = 'M.Date processed';
        }
        field(500; "Inferior to Department"; Code[10])
        {
            Caption = 'Inferior to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(510; "Inferior to Division"; Code[10])
        {
            Caption = 'Inferior to Division';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(520; "Inferior to Activity"; Code[10])
        {
            Caption = 'Inferior to Activity';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(530; "Inferior to Company"; Code[10])
        {
            Caption = 'Inferior to Company';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(540; "Inferior to Pay Group"; Code[10])
        {
            Caption = 'Inferior to Pay Group';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(550; "Inferior to Group 1"; Code[10])
        {
            Caption = 'Inferior to Group 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(560; "Inferior to Group 2"; Code[10])
        {
            Caption = 'Inferior to Group 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(570; "Inferior to Group 3"; Code[10])
        {
            Caption = 'Inferior to Group 3';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(1004; "Main-Division"; Code[10])
        {
            Caption = 'Main-Division';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division));
        }
        field(1005; "Div.Output Export Presence"; Boolean)
        {
            Caption = 'Div.Output Export Presence';
        }
        field(1009; "Div.Minimum Capacity"; Decimal)
        {
            Caption = 'Div.Minimum Capacity';
            NotBlank = false;
        }
        field(2004; "Main-Activity"; Code[10])
        {
            Caption = 'Main-Activity';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity));
        }
        field(2005; "Activ.Output Export Presence"; Boolean)
        {
            Caption = 'Activ.Output Export Presence';
        }
        field(2006; "Empl-Demand Main-Activity"; Boolean)
        {
            Caption = 'Empl-Demand Main-Activity';
        }
        field(2007; "Status Shift Classification"; Text[3])
        {
            Caption = 'Status Shift Classification';
        }
        field(2020; "Bonus Calculation"; Boolean)
        {
            Caption = 'Bonus Calculation';
        }
        field(2021; "Bonus Factor 1"; Decimal)
        {
            Caption = 'Bonus Factor 1';
        }
        field(2022; "Bonus Divisor 1"; Decimal)
        {
            Caption = 'Bonus Divisor 1';
        }
        field(2023; "Bonus from Date 1"; Date)
        {
            Caption = 'Bonus from Date 1';
        }
        field(2024; "Bonus until Date 1"; Date)
        {
            Caption = 'Bonus until Date 1';
        }
        field(2025; "Bonus Multiplicator 1"; Decimal)
        {
            Caption = 'Bonus Multiplicator 1';
            DecimalPlaces = 2 : 5;
        }
        field(2031; "Bonus Factor 2"; Decimal)
        {
            Caption = 'Bonus Factor 2';
        }
        field(2032; "Bonus Divisor 2"; Decimal)
        {
            Caption = 'Bonus Divisor 2';
        }
        field(2033; "Bonus from Date 2"; Date)
        {
            Caption = 'Bonus from Date 2';
        }
        field(2034; "Bonus until Date 2"; Date)
        {
            Caption = 'Bonus until Date 2';
        }
        field(2035; "Bonus Multiplicator 2"; Decimal)
        {
            Caption = 'Bonus Multiplicator 2';
            DecimalPlaces = 2 : 5;
        }
        field(2040; Qualification; Option)
        {
            Caption = 'Qualification';
            OptionCaption = ' ,Level 1,Level 2,Level 3,Level 4,Level 5,Level 6,Level 7,Level 8,Level 9,Level 10,Level 11,Level 12,Level 13,Level 14,Level 15,Level 16,Level 17,Level 18,Level 19,Level 20';
            OptionMembers = " ","Level 1","Level 2","Level 3","Level 4","Level 5","Level 6","Level 7","Level 8","Level 9","Level 10","Level 11","Level 12","Level 13","Level 14","Level 15","Level 16","Level 17","Level 18","Level 19","Level 20";
        }
        field(2041; "Status Qualified"; Boolean)
        {
            Caption = 'Status Qualified';
        }
        field(3004; "Main-Company"; Code[10])
        {
            Caption = 'Main-Company';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company));
        }
        field(3005; "Comp.Output Export Presence"; Boolean)
        {
            Caption = 'Comp.Output Export Presence';
        }
        field(4004; "Main-Pay Group"; Code[10])
        {
            Caption = 'Main-Pay Group';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"));
        }
        field(4005; "Pay-G.Output Export Presence"; Boolean)
        {
            Caption = 'Pay-G.Output Export Presence';
        }
        field(4010; "Begin current Period"; Date)
        {
            Caption = 'Begin current Period';
        }
        field(4011; "End current Period"; Date)
        {
            Caption = 'End current Period';
        }
        field(4012; "Enter Period Date + 1"; Boolean)
        {
            Caption = 'Enter Period Date + 1';
        }
        field(5004; "Main-Group 1"; Code[10])
        {
            Caption = 'Main-Group 1';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"));
        }
        field(5005; "Grp1.Output Export Presence"; Boolean)
        {
            Caption = 'Grp1.Output Export Presence';
        }
        field(6004; "Main-Group 2"; Code[10])
        {
            Caption = 'Main-Group 2';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"));
        }
        field(6005; "Grp2.Output Export Presence"; Boolean)
        {
            Caption = 'Grp2.Output Export Presence';
        }
        field(7004; "Main-Group 3"; Code[10])
        {
            Caption = 'Main-Group 3';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"));
        }
        field(7005; "Grp3.Output Export Presence"; Boolean)
        {
            Caption = 'Grp3.Output Export Presence';
        }
        field(8010; "Group Address (A..Z)"; Code[1])
        {
            Caption = 'Group Address (A..Z)';
        }
        field(8011; "Device Address (A..Z)"; Code[1])
        {
            Caption = 'Device Address (A..Z)';
        }
        field(8012; "Group No. (1..9)"; Integer)
        {
            Caption = 'Group No. (1..9)';
        }
        field(8013; "Device No. (1..9)"; Integer)
        {
            Caption = 'Device No. (1..9)';
        }
        field(8014; "Terminal Key"; Text[30])
        {
            Caption = 'Terminal Key';
        }
        field(8015; "Group Address (Alphanum.)"; Text[1])
        {
            Caption = 'Group Address (Alphanum.)';
        }
        field(8016; "Device Address (Alphanum.)"; Text[1])
        {
            Caption = 'Device Address (Alphanum.)';
        }
        field(8019; "File Record Check (Star)"; Boolean)
        {
            Caption = 'File Record Check (Star)';
        }
        field(8020; "Bedas 9290"; Boolean)
        {
            Caption = 'Bedas 9290';
        }
        field(8021; "Status Access Control"; Text[50])
        {
            Caption = 'Status Access Control';
        }
        field(8022; "Rec.Type Access (A0) in Change"; Option)
        {
            Caption = 'Rec.Type Access (A0) in Change';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Coming (B1)/Leaving (B2)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Coming (B1)/Leaving (B2)";
        }
        field(8023; "Rec. Type Def."; Option)
        {
            Caption = 'Rec. Type Def.';
            OptionCaption = ' ,Break Begin,Break End';
            OptionMembers = " ","Break Begin","Break End";
        }
        field(8024; "Destination File Filesend.Dat"; Option)
        {
            Caption = 'Destination File Filesend.Dat';
            OptionCaption = 'Filesend.Dat1,Filesend.Dat2,Filesend.Dat3';
            OptionMembers = "Filesend.Dat1","Filesend.Dat2","Filesend.Dat3";
        }
        field(8026; "Access Clocking End Term-No."; Code[10])
        {
            Caption = 'Access Clocking End Term-No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(8029; "Access protected area"; Boolean)
        {
            Caption = 'Access protected area';
        }
        field(8030; "Access (A0) Copy"; Option)
        {
            Caption = 'Access (A0) Copy';
            OptionCaption = ' ,Coming (B1),Leaving (B2)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)";
        }
        field(8031; "Access Org-Form"; Option)
        {
            Caption = 'Access Org-Form';
            OptionCaption = 'All,Employee,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3,Time Object';
            OptionMembers = All,Employee,Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3","Time Object";
        }
        field(8032; "Access Org-Val. from"; Code[20])
        {
            Caption = 'Access Org-Val. from';
            TableRelation = IF ("Access Org-Form" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Access Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Access Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Access Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Access Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Access Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Access Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Access Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Access Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Access Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
            ValidateTableRelation = false;
        }
        field(8033; "Access Org-Val. until"; Code[20])
        {
            Caption = 'Access Org-Val. until';
            TableRelation = IF ("Access Org-Form" = CONST (Employee)) "Employee/T"."No."
            ELSE
            IF ("Access Org-Form" = CONST (Department)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department))
            ELSE
            IF ("Access Org-Form" = CONST (Division)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Division))
            ELSE
            IF ("Access Org-Form" = CONST (Activity)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Activity))
            ELSE
            IF ("Access Org-Form" = CONST (Company)) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Company))
            ELSE
            IF ("Access Org-Form" = CONST ("Pay Group")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Pay Group"))
            ELSE
            IF ("Access Org-Form" = CONST ("Group 1")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 1"))
            ELSE
            IF ("Access Org-Form" = CONST ("Group 2")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 2"))
            ELSE
            IF ("Access Org-Form" = CONST ("Group 3")) "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST ("Group 3"))
            ELSE
            IF ("Access Org-Form" = CONST ("Time Object")) "Time Object/T"."No.";
            ValidateTableRelation = false;
        }
        field(8034; "Access Org-Group No."; Code[20])
        {
            Caption = 'Access Org-Group No.';
            TableRelation = "Organization Group/T"."No.";
        }
        field(8035; "Access Org-Form NOT"; Boolean)
        {
            Caption = 'Access Org-Form NOT';
        }
        field(8036; "Access Coming+Dept. optional"; Code[10])
        {
            Caption = 'Access Coming+Dept. optional';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8037; "Access Leaving optional"; Boolean)
        {
            Caption = 'Access Leaving optional';
        }
        field(8039; "Coming (B1)+Department (B4)"; Boolean)
        {
            Caption = 'Coming (B1)+Department (B4)';
        }
        field(8040; "TP/Rounding Inactive"; Boolean)
        {
            Caption = 'TP/Rounding Inactive';
        }
        field(8041; "Ref. Department (B4)"; Code[10])
        {
            Caption = 'Ref. Department (B4)';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8042; "P1 Ref. from Department"; Code[10])
        {
            Caption = 'P1 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8043; "Q1 Ref. to Department"; Code[10])
        {
            Caption = 'Q1 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8044; "P2 Ref. from Department"; Code[10])
        {
            Caption = 'P2 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8045; "Q2 Ref. to Department"; Code[10])
        {
            Caption = 'Q2 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8046; "P3 Ref. from Department"; Code[10])
        {
            Caption = 'P3 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8047; "Q3 Ref. to Department"; Code[10])
        {
            Caption = 'Q3 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8048; "P4 Ref. from Department"; Code[10])
        {
            Caption = 'P4 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8049; "Q4 Ref. to Department"; Code[10])
        {
            Caption = 'Q4 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8050; "P5 Ref. from Department"; Code[10])
        {
            Caption = 'P5 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8051; "Q5 Ref. to Department"; Code[10])
        {
            Caption = 'Q5 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8052; "P6 Ref. from Department"; Code[10])
        {
            Caption = 'P6 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8053; "Q6 Ref. to Department"; Code[10])
        {
            Caption = 'Q6 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8054; "P7 Ref. from Department"; Code[10])
        {
            Caption = 'P7 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8055; "Q7 Ref. to Department"; Code[10])
        {
            Caption = 'Q7 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8056; "P8 Ref. from Department"; Code[10])
        {
            Caption = 'P8 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8057; "Q8 Ref. to Department"; Code[10])
        {
            Caption = 'Q8 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8058; "P9 Ref. from Department"; Code[10])
        {
            Caption = 'P9 Ref. from Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8059; "Q9 Ref. to Department"; Code[10])
        {
            Caption = 'Q9 Ref. to Department';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Department));
        }
        field(8060; "Ref. Department (Own)"; Boolean)
        {
            Caption = 'Ref. Department (Own)';
        }
        field(8070; "First Break/Coming to Access"; Boolean)
        {
            Caption = 'First Break/Coming to Access';
        }
        field(8071; "Last Break/Leaving to Access"; Boolean)
        {
            Caption = 'Last Break/Leaving to Access';
        }
        field(8072; "First/Last Break to Access"; Boolean)
        {
            Caption = 'First/Last Break to Access';
        }
        field(8080; "Soft-Terminal allocation check"; Boolean)
        {
            Caption = 'Soft-Terminal allocation check';
        }
        field(9010; "If Terminal Key 1"; Option)
        {
            Caption = 'If Terminal Key 1';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2),Parallel Begin (PC),Parallel End (QC),13,14,15,Amount (FM),17,Scrap (FO)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)","Parallel Begin (PC)","Parallel End (QC)","13","14","15","Amount (FM)","17","Scrap (FO)","Parallel End + Amount (RC)";
        }
        field(9011; "Comp. Operator 1"; Option)
        {
            Caption = 'Comp. Operator 1';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(9012; "Comp. Clocking 1"; Time)
        {
            Caption = 'Comp. Clocking 1';
        }
        field(9013; "Then Reference 1"; Code[1])
        {
            Caption = 'Then Reference 1';
            CharAllowed = 'VVFFvvff';
        }
        field(9014; "If Terminal Key 2"; Option)
        {
            Caption = 'If Terminal Key 2';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2),Parallel Begin (PC),Parallel End (QC),13,14,15,Amount (FM),17,Scrap (FO)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)","Parallel Begin (PC)","Parallel End (QC)","13","14","15","Amount (FM)","17","Scrap (FO)","Parallel End + Amount (RC)";
        }
        field(9015; "Comp. Operator 2"; Option)
        {
            Caption = 'Comp. Operator 2';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(9016; "Comp. Clocking 2"; Time)
        {
            Caption = 'Comp. Clocking 2';
        }
        field(9017; "Then Reference 2"; Code[1])
        {
            Caption = 'Then Reference 2';
            CharAllowed = 'VVFFvvff';
        }
        field(9018; "If Terminal Key 3"; Option)
        {
            Caption = 'If Terminal Key 3';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2),Parallel Begin (PC),Parallel End (QC),13,14,15,Amount (FM),17,Scrap (FO)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)","Parallel Begin (PC)","Parallel End (QC)","13","14","15","Amount (FM)","17","Scrap (FO)","Parallel End + Amount (RC)";
        }
        field(9019; "Comp. Operator 3"; Option)
        {
            Caption = 'Comp. Operator 3';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(9020; "Comp. Clocking 3"; Time)
        {
            Caption = 'Comp. Clocking 3';
        }
        field(9021; "Then Reference 3"; Code[1])
        {
            Caption = 'Then Reference 3';
            CharAllowed = 'VVFFvvff';
        }
        field(9022; "If Terminal Key 4"; Option)
        {
            Caption = 'If Terminal Key 4';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2),Parallel Begin (PC),Parallel End (QC),13,14,15,Amount (FM),17,Scrap (FO)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)","Parallel Begin (PC)","Parallel End (QC)","13","14","15","Amount (FM)","17","Scrap (FO)","Parallel End + Amount (RC)";
        }
        field(9023; "Comp. Operator 4"; Option)
        {
            Caption = 'Comp. Operator 4';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(9024; "Comp. Clocking 4"; Time)
        {
            Caption = 'Comp. Clocking 4';
        }
        field(9025; "Then Reference 4"; Code[1])
        {
            Caption = 'Then Reference 4';
            CharAllowed = 'VVFFvvff';
        }
        field(9026; "If Terminal Key 5"; Option)
        {
            Caption = 'If Terminal Key 5';
            OptionCaption = ' ,Coming (B1),Leaving (B2),Errand (B3),Department (B4),Break (B5),Access (A0),Inquiry (A1),Info (A2),Orderbegin (F1),Orderend (F2),Parallel Begin (PC),Parallel End (QC),13,14,15,Amount (FM),17,Scrap (FO)';
            OptionMembers = " ","Coming (B1)","Leaving (B2)","Errand (B3)","Department (B4)","Break (B5)","Access (A0)","Inquiry (A1)","Info (A2)","Orderbegin (F1)","Orderend (F2)","Parallel Begin (PC)","Parallel End (QC)","13","14","15","Amount (FM)","17","Scrap (FO)";
        }
        field(9027; "Comp. Operator 5"; Option)
        {
            Caption = 'Comp. Operator 5';
            OptionCaption = ' ,equal,unequal,smaller,smaller/equal,greater,greater/equal';
            OptionMembers = " ",equal,unequal,smaller,"smaller/equal",greater,"greater/equal";
        }
        field(9028; "Comp. Clocking 5"; Time)
        {
            Caption = 'Comp. Clocking 5';
        }
        field(9029; "Then Reference 5"; Code[1])
        {
            Caption = 'Then Reference 5';
            CharAllowed = 'VVFFvvff';
        }
        field(9050; "Com/L.auto.if Com/prev.greater"; Time)
        {
            Caption = 'Com/L.auto.if Com/prev.greater';
        }
        field(9051; "Com/Leave auto.Break Distance"; Integer)
        {
            Caption = 'Com/Leave auto.Break Distance';
        }
        field(9052; "Le.to Prev.if Com/prev.greater"; Time)
        {
            Caption = 'Le.to Prev.if Com/prev.greater';
        }
        field(9053; "Ref. auto. by Day Object"; Boolean)
        {
            Caption = 'Ref. auto. by Day Object';
        }
        field(9054; "Ref. auto.Com/L.prev./follow."; Boolean)
        {
            Caption = 'Ref. auto.Com/L.prev./follow.';
        }
        field(9055; "Ref. auto. Break Bef./Follow."; Boolean)
        {
            Caption = 'Ref. auto. Break Bef./Follow.';
        }
        field(9056; "Ref. Com/Leav.Prev.Day Limit"; Time)
        {
            Caption = 'Ref. Com/Leav.Prev.Day Limit';
        }
        field(9057; "Ref. Com/Leav.Follow.Day Limit"; Time)
        {
            Caption = 'Ref. Com/Leav.Follow.Day Limit';
        }
        field(9058; "Ref. Break Prev. Day Limit"; Time)
        {
            Caption = 'Ref. Break Prev. Day Limit';
        }
        field(9059; "Ref. Break Follow. Day Limit"; Time)
        {
            Caption = 'Ref. Break Follow. Day Limit';
        }
        field(9060; "DObj. Com/Day bef.Tolerance"; Integer)
        {
            Caption = 'DObj. Com/Day bef.Tolerance';
        }
        field(9061; "DObj. Com/Day foll.Tolerance"; Integer)
        {
            Caption = 'DObj. Com/Day foll.Tolerance';
        }
        field(9062; "DObj. Leave/Day bef.Tolerance"; Integer)
        {
            Caption = 'DObj. Leave/Day bef.Tolerance';
        }
        field(9063; "DObj. Leave/Day foll.Tolerance"; Integer)
        {
            Caption = 'DObj. Leave/Day foll.Tolerance';
        }
        field(9064; "Ref. auto.Dept/L.prev./follow."; Boolean)
        {
            Caption = 'Ref. auto.Dept/L.prev./follow.';
        }
        field(9065; "Ref. Dept.Prev.Day Limit"; Time)
        {
            Caption = 'Ref. Dept.Prev.Day Limit';
        }
        field(9066; "Ref. Dept.Follow.Day Limit"; Time)
        {
            Caption = 'Ref. Dept.Follow.Day Limit';
        }
        field(9067; "Ref. Break Follow. Round/Min"; Integer)
        {
            Caption = 'Ref. Break Follow. Round/Min';
        }
        field(9068; "And dist. last Leav. smaller"; Integer)
        {
            Caption = 'And distance last Leaving smaller';
        }
        field(9070; "Ref. Coming Day following"; Option)
        {
            Caption = 'Ref. Coming Day following';
            OptionCaption = ' ,always Day following,only Day following if Leaving on Day following';
            OptionMembers = " ","always Day following","only Day following if Leaving on Day following";
        }
        field(9071; "Coming-Limit for Nightshift"; Time)
        {
            Caption = 'Coming-Limit for Nightshift';
        }
        field(9072; "Ref. auto. Access Bef./Follow."; Boolean)
        {
            Caption = 'Ref. auto. Access Bef./Follow.';
        }
        field(9080; "Coming Day before w/o equal"; Boolean)
        {
            Caption = 'Coming Day before w/o equal';
        }
        field(9081; "Errand Day before w/o equal"; Boolean)
        {
            Caption = 'Errand Day before w/o equal';
        }
        field(9082; "Dept. Day before w/o equal"; Boolean)
        {
            Caption = 'Dept. Day before w/o equal';
        }
        field(9083; "Break Day before w/o equal"; Boolean)
        {
            Caption = 'Break Day before w/o equal';
        }
        field(9084; "Access Day before w/o equal"; Boolean)
        {
            Caption = 'Access Day before w/o equal';
        }
        field(9085; "Info Day before w/o equal"; Boolean)
        {
            Caption = 'Info Day before w/o equal';
        }
        field(9086; "Order Day before w/o equal"; Boolean)
        {
            Caption = 'Order Day before w/o equal';
        }
        field(9087; "O-PAR Beg.Day before w/o equal"; Boolean)
        {
            Caption = 'O-PAR Beg.Day before w/o equal';
        }
        field(9088; "O-PAR End.Day before w/o equal"; Boolean)
        {
            Caption = 'O-PAR End.Day before w/o equal';
        }
    }

    keys
    {
        key(Key1; "Org-Form Code", "Org-Form Type")
        {
            Clustered = true;
        }
        key(Key2; "Org-Form Type", "Org-Form Code")
        {
        }
        key(Key3; "Group Address (A..Z)", "Device Address (A..Z)")
        {
        }
    }

    fieldgroups
    {
    }
}

