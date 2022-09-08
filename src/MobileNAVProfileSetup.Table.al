table 42012834 "MobileNAV Profile Setup"
{
    // 2016-07-22 MNAD4.5.0.32 SZT
    //   Added missing call of SetConfigurationChanged() to OnRename.
    // 
    // 2018-04-11 MNAD4.8.0.12 SZT
    //   Advanced profile development.
    // 
    // 2018-05-14 MNAD4.8.0.16 SZT
    //   Fixed all known bugs.
    // 
    // 2018-05-17 MNAD4.8.0.19 SZT
    //   Now calls "set config change" when a user profile has deleted.
    // 
    // 2018-06-26 MNAD4.8.0.23 SZT
    //   Added new key: "Profile Type", Profile, Category, Order
    // 
    // 2018-06-29 MNAD4.8.0.24 SZT
    //   - New fields: "TEMP DisableStaging", DataKind.
    //   - Used SkipValidation.
    //   - New key: "Profile Type", Profile, Order.
    //   - New key: "Profile Type", "Order", "Display in Menu".
    //   - New key: "Profile Type", "Display in Menu", Profile
    // 
    // 2018-09-06 MNAD4.8.0.26 SZT
    //   Minimal refactoring caused by config export/import.
    // 
    // 2018-09-11 MNAD4.8.0.27 SZT
    //   - Added new helper fields for the UI. (IsFirst and IsLast).
    //   - Removed content of OnDelete().
    //   - Refactored and fixed ValidateDisplayInMenu(), RemoveAsParent() and RemoveAsRoot() functions.
    //   - Reordered "TEMP" fields
    //   - New fields: "Child Count", "TEMP Hierarcy Level".
    //   - New key: "TEMP Hierarchy Level", Parent.
    //   - Minor refactoring: implemented ValidateUseAsOnline() function.
    //   - New function: IsChildOfParent().
    //   - Fixed managing "Excluded by Parent" (GetExcludedByParent() function).
    // 
    // 2018-10-01 MNAD4.8.0.28 SZT
    //   - Fixed managing Visible, Editable and Staging.
    // 
    // 2018-10-11 MNAD4.8.0.32 SZT
    //   Minor fix at inserting record: InitRecEx() now keeps Category and Order fields.

    Caption = 'Profile Setup';

    fields
    {
        field(1; "Profile Type"; Option)
        {
            OptionMembers = User,"Page","Field","Parent Page","Root Page";
        }
        field(2; ID; Text[100])
        {
        }
        field(3; "Profile"; Code[30])
        {
            TableRelation = "MobileNAV Master Data".Code WHERE (Type = CONST (Profile));
        }
        field(4; Description; Text[50])
        {
            CalcFormula = Lookup ("MobileNAV Master Data".Description WHERE (Code = FIELD (Profile),
                                                                            Type = CONST (Profile)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Control ID"; Integer)
        {
            TableRelation = IF ("Profile Type" = CONST (Field)) "MobileNAV Service Setup".ControlID WHERE ("Service Name" = FIELD (ID),
                                                                                                        "Line Type" = CONST (Field));
        }
        field(6; "Field Name"; Text[75])
        {
            Editable = false;
        }
        field(7; Visible; Boolean)
        {
        }
        field(8; "Visible Inherited"; Boolean)
        {
        }
        field(9; Editable; Boolean)
        {
        }
        field(10; "Editable Inherited"; Boolean)
        {
        }
        field(11; "Display in Menu"; Boolean)
        {
        }
        field(12; Category; Code[20])
        {
            TableRelation = IF ("Profile Type" = CONST (Page)) "MobileNAV Master Data".Code WHERE (Type = CONST (Category));
        }
        field(13; "Category Description"; Text[50])
        {
            CalcFormula = Lookup ("MobileNAV Master Data".Description WHERE (Type = CONST (Category),
                                                                            Code = FIELD (Category)));
            FieldClass = FlowField;
        }
        field(14; "Order"; Integer)
        {
        }
        field(15; "Staging Enabled"; Boolean)
        {
        }
        field(16; "Staging Enabled Inherited"; Boolean)
        {
        }
        field(17; "Exclude from Profile"; Boolean)
        {
        }
        field(18; "Added by Relation"; Boolean)
        {
            Editable = false;
        }
        field(19; "Use as Online"; Boolean)
        {
        }
        field(20; "Has Parent"; Boolean)
        {
            CalcFormula = Exist ("MobileNAV Profile Setup" WHERE ("Profile Type" = CONST ("Parent Page"),
                                                                 ID = FIELD (ID),
                                                                 Profile = FIELD (Profile)));
            FieldClass = FlowField;
        }
        field(21; Parent; Text[100])
        {
        }
        field(23; "Exclude by Parent"; Boolean)
        {
            Editable = false;
        }
        field(24; "Table No."; Integer)
        {
            Editable = false;
        }
        field(25; "Page No."; Integer)
        {
            Editable = false;
        }
        field(26; "Lookup Only"; Boolean)
        {
        }
        field(27; "Page Type"; Option)
        {
            Editable = false;
            OptionMembers = ListCard,List,Card,"Report",Offline,OfflineCard;
        }
        field(28; "Page Update"; Boolean)
        {
            Editable = false;
        }
        field(29; "Page Insert"; Boolean)
        {
            Editable = false;
        }
        field(30; "Page Delete"; Boolean)
        {
            Editable = false;
        }
        field(31; "Has Profiled Fields"; Boolean)
        {
            CalcFormula = Exist ("MobileNAV Profile Setup" WHERE ("Profile Type" = CONST (Field),
                                                                 ID = FIELD (ID),
                                                                 Profile = FIELD (Profile)));
            FieldClass = FlowField;
        }
        field(32; "Has Root"; Boolean)
        {
            CalcFormula = Exist ("MobileNAV Profile Setup" WHERE ("Profile Type" = CONST ("Root Page"),
                                                                 Profile = FIELD (Profile),
                                                                 ID = FIELD (ID)));
            FieldClass = FlowField;
        }
        field(33; "Child Count"; Integer)
        {
            CalcFormula = Count ("MobileNAV Profile Setup" WHERE ("Profile Type" = CONST ("Parent Page"),
                                                                 Profile = FIELD (Profile),
                                                                 Parent = FIELD (ID)));
            FieldClass = FlowField;
        }
        field(91; "TEMP Hierarchy Level"; Integer)
        {
            Caption = 'Level';
            Description = 'used only in temporary rec';
        }
        field(92; "TEMP Hide"; Boolean)
        {
            Caption = 'Hide';
            Description = 'used only in temporary rec';
        }
        field(93; "TEMP ReadOnly"; Boolean)
        {
            Caption = 'Read Only';
            Description = 'used only in temporary rec';
        }
        field(94; "TEMP PageLineNo"; Integer)
        {
            Caption = 'Page Line No.';
            Description = 'used only in temporary rec';
        }
        field(95; "TEMP DisableStaging"; Boolean)
        {
            Description = 'used only in temporary rec';
        }
        field(96; IsFirst; Boolean)
        {
            Description = 'used only on the UI';
        }
        field(97; IsLast; Boolean)
        {
            Description = 'used only on the UI';
        }
        field(98; DataKind; Integer)
        {
            Description = 'used only on the UI';
        }
        field(99; SkipValidation; Boolean)
        {
            Description = 'used only on the UI';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "Profile Type", ID, "Profile", "Control ID")
        {
            Clustered = true;
        }
        key(Key2; "Profile Type", "Profile", Parent)
        {
        }
        key(Key3; "Profile", "Display in Menu", "Page Type")
        {
        }
        key(Key4; "Profile Type", "Profile", "Exclude from Profile")
        {
        }
        key(Key5; "Profile Type", "Profile", Category, ID)
        {
        }
        key(Key6; "TEMP PageLineNo")
        {
        }
        key(Key7; "Profile Type", "Profile", Category, "Order")
        {
        }
        key(Key8; "Profile Type", "Profile", "Order")
        {
        }
        key(Key9; "Profile Type", "Order", "Display in Menu")
        {
        }
        key(Key10; "Profile Type", "Display in Menu", "Profile")
        {
        }
        key(Key11; "TEMP Hierarchy Level", Parent)
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Profile", Description)
        {
        }
    }
}

