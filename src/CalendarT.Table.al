table 5056322 "Calendar/T"
{
    Caption = 'Calendar';
    Description = 'GrCalendar';

    fields
    {
        field(1; "State No."; Option)
        {
            Caption = 'State No.';
            Description = 'OptionString Element 1 to 20 reserved for Germany';
            OptionCaption = ' ,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,SWISS,AUSTRIA,POL,ENG,FRA,ITA,ESP,TUN,CZ,USA,RUS,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50';
            OptionMembers = " ","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20",SWISS,AUSTRIA,POL,ENG,FRA,ITA,ESP,TUN,CZ,USA,RUS,"32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50";
        }
        field(2; "Current Date"; Date)
        {
            Caption = 'Current Date';
            NotBlank = true;
        }
        field(3; Source; Option)
        {
            Caption = 'Source';
            OptionCaption = 'Automatic,Manual';
            OptionMembers = Automatic,Manual;
        }
        field(4; Weekday; Text[10])
        {
            CalcFormula = Lookup (Date."Period Name" WHERE ("Period Type" = CONST (Date),
                                                           "Period Start" = FIELD ("Current Date")));
            Caption = 'Weekday';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; Holidayname; Text[50])
        {
            Caption = 'Holidayname';
        }
        field(7; Holidaytype; Option)
        {
            Caption = 'Holidaytype';
            OptionCaption = ' ,fix,moving';
            OptionMembers = " ",fix,moving;
        }
        field(10; "TA No. Public Holiday"; Code[10])
        {
            Caption = 'TA No. Public Holiday';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Public Holiday"));
        }
        field(11; "TA Descr. Public Holiday"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Public Holiday")));
            Caption = 'TA Descr. Public Holiday';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "TA Char. Public Holiday"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Public Holiday")));
            Caption = 'TA Char. Public Holiday';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "TA No. Public Holiday Indiv."; Code[10])
        {
            Caption = 'TA No. Public Holiday Indiv.';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Public Holiday"));
        }
        field(14; "TA Descr. Pub. Holiday Indiv."; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Public Holiday Indiv.")));
            Caption = 'TA Descr. Pub. Holiday Indiv.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "TA Char. Public Holiday Indiv."; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Public Holiday Indiv.")));
            Caption = 'TA Char. Public Holiday Indiv.';
            Editable = false;
            FieldClass = FlowField;
        }
        field(16; "TA No. Pub. Holiday Dummy"; Code[10])
        {
            Caption = 'TA No. Pub. Holiday Dummy';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Public Holiday"));
        }
        field(17; "TA Descr. Pub. Holiday Dummy"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Pub. Holiday Dummy")));
            Caption = 'TA Descr. Pub. Holiday Dummy';
            Editable = false;
            FieldClass = FlowField;
        }
        field(18; "TA Char. Pub. Holiday Dummy"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Pub. Holiday Dummy")));
            Caption = 'TA Char. Pub. Holiday Dummy';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "TA No. Special Day 1"; Code[10])
        {
            Caption = 'TA No. Special Day 1';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Special Day"));
        }
        field(20; "Description 1"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Special Day 1")));
            Caption = 'Description 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "TA Char. Special Day 1"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Special Day 1")));
            Caption = 'TA Char. Special Day 1';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "TA No. Special Day 2"; Code[10])
        {
            Caption = 'TA No. Special Day 2';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Special Day"));
        }
        field(23; "Description 2"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Special Day 2")));
            Caption = 'Description 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "TA Char. Special Day 2"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Special Day 2")));
            Caption = 'TA Char. Special Day 2';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "TA No. Special Day 3"; Code[10])
        {
            Caption = 'TA No. Special Day 3';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST ("Special Day"));
        }
        field(26; "Description 3"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Special Day 3")));
            Caption = 'Description 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "TA Char. Special Day 3"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Special Day 3")));
            Caption = 'TA Char. Special Day 3';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "TA No. Vac. Day"; Code[10])
        {
            Caption = 'TA No. Vac. Day';
            TableRelation = "Time Account/T"."No." WHERE ("Class (General)" = CONST (Holiday));
        }
        field(29; "TA Descr. Vac. Day"; Text[10])
        {
            CalcFormula = Lookup ("Time Account/T"."Description 2" WHERE ("No." = FIELD ("TA No. Vac. Day")));
            Caption = 'TA Descr. Vac. Day';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "TA Char. Vac. Day"; Text[1])
        {
            CalcFormula = Lookup ("Time Account/T".Character WHERE ("No." = FIELD ("TA No. Vac. Day")));
            Caption = 'TA Char. Vac. Day';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "State No.", "Current Date")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

