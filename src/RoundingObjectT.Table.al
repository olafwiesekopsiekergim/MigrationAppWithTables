table 5056311 "Rounding Object/T"
{
    Caption = 'Rounding Object';
    DataCaptionFields = "No.", Description;
    Description = 'GrRoundObj';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(3; "Description 2"; Text[10])
        {
            Caption = 'Description 2';
        }
        field(9; "Terminal No."; Code[10])
        {
            Caption = 'Terminal No.';
            TableRelation = "Org-Form/T"."Org-Form Code" WHERE ("Org-Form Type" = CONST (Terminal));
        }
        field(10; "Terminal Key"; Option)
        {
            Caption = 'Terminal Key';
            OptionCaption = ' ,Coming,Leaving,Errand,Department,Break Begin,Break End,Access,Order Begin,Order End,Info Begin,Info End';
            OptionMembers = " ",Coming,Leaving,Errand,Department,"Break Begin","Break End",Access,"Order Begin","Order End","Info Begin","Info End";
        }
        field(11; Relation; Option)
        {
            Caption = 'Relation';
            OptionCaption = ' ,once rel. Target,perm.outside Target,perm.within/outside Target,constant Target rounding,constant Orig.rounding,perm.within Target,perm.within/outside Target 1.Clocking,perm.within/outside Target last Clocking,perm.within/outside Target/Tolerance/g,Order end,Order begin/Coming,Coming/Order begin,Leaving/Coming from 2.Clocking,perm.1.Clocking,perm.last Clocking,constant Orig.1.to last rounding,constant Bandw. rounding';
            OptionMembers = " ","once rel. Target","perm.outside Target","perm.within/outside Target","constant Target rounding","constant Orig.rounding","perm.within Target","perm.within/outside Target 1.Clocking","perm.within/outside Target last Clocking","perm.within/outside Target/Tolerance/g","Order end","Order begin/Coming","Coming/Order begin","Leaving/Coming from 2.Clocking","perm.1.Clocking","perm.last Clocking","constant Orig.1.to last rounding","constant Bandw. rounding";
        }
        field(12; "Rounding up"; Integer)
        {
            Caption = 'Rounding up';
        }
        field(13; "Tolerance on Rounding up"; Integer)
        {
            Caption = 'Tolerance on Rounding up';
        }
        field(14; "Rounding off"; Integer)
        {
            Caption = 'Rounding off';
        }
        field(15; "Tolerance on Rounding off"; Integer)
        {
            Caption = 'Tolerance on Rounding off';
        }
        field(16; "Rounding to Actual Clocking"; Boolean)
        {
            Caption = 'Rounding to Actual Clocking';
        }
        field(17; "Rounding Inactive"; Option)
        {
            Caption = 'Rounding Inactive';
            OptionCaption = ' ,Coming Productive outside Target,Coming Productive inside/outside Target,Leaving Productive outside Target,Leaving Productive inside/outside Target';
            OptionMembers = " ","Coming Productive outside Target","Coming Productive inside/outside Target","Leaving Productive outside Target","Leaving Productive inside/outside Target";
        }
        field(18; "Rounding Inactive Info-TA"; Code[10])
        {
            Caption = 'Rounding Inactive Info-TA';
            TableRelation = "Time Account/T"."No.";
        }
        field(19; "Round. in Relation to Com-Act."; Boolean)
        {
            Caption = 'Round. in Relation to Com-Act.';
        }
        field(20; "Overtime Rounding TA No."; Code[10])
        {
            Caption = 'Overtime Rounding TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(22; "Absent Time Rounding TA No."; Code[10])
        {
            Caption = 'Absent Time Rounding TA No.';
            TableRelation = "Time Account/T"."No.";
        }
        field(24; "Begin Rounding Clocking"; Time)
        {
            Caption = 'Begin Rounding Clocking';
        }
        field(25; "Begin Rounding Reference"; Code[1])
        {
            Caption = 'Begin Rounding Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(26; "End Rounding Clocking"; Time)
        {
            Caption = 'End Rounding Clocking';
        }
        field(27; "End Rounding Reference"; Code[1])
        {
            Caption = 'End Rounding Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(28; "Result Clocking"; Time)
        {
            Caption = 'Result Clocking';
        }
        field(29; "Result Reference"; Code[1])
        {
            Caption = 'Result Reference';
            CharAllowed = 'VVFFvvff';
        }
        field(30; "From Minutes 1"; Integer)
        {
            Caption = 'From Minutes 1';
        }
        field(31; "To Minutes 1"; Integer)
        {
            Caption = 'To Minutes 1';
        }
        field(32; "Then Minutes 1"; Integer)
        {
            Caption = 'Then Minutes 1';
        }
        field(33; "From Minutes 2"; Integer)
        {
            Caption = 'From Minutes 2';
        }
        field(34; "To Minutes 2"; Integer)
        {
            Caption = 'To Minutes 2';
        }
        field(35; "Then Minutes 2"; Integer)
        {
            Caption = 'Then Minutes 2';
        }
        field(36; "From Minutes 3"; Integer)
        {
            Caption = 'From Minutes 3';
        }
        field(37; "To Minutes 3"; Integer)
        {
            Caption = 'To Minutes 3';
        }
        field(38; "Then Minutes 3"; Integer)
        {
            Caption = 'Then Minutes 3';
        }
        field(39; "From Minutes 4"; Integer)
        {
            Caption = 'From Minutes 4';
        }
        field(40; "To Minutes 4"; Integer)
        {
            Caption = 'To Minutes 4';
        }
        field(41; "Then Minutes 4"; Integer)
        {
            Caption = 'Then Minutes 4';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

