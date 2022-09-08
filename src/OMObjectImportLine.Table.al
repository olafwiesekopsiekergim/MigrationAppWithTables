table 11102079 "OM - Object Import Line"
{
    Caption = 'Object Import Line';
    DataPerCompany = false;

    fields
    {
        field(1; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = 'Import Worksheet,Object Compare Sheet,Database Compare Sheet';
            OptionMembers = "Import Worksheet","Object Compare Sheet","Database Compare Sheet";
        }
        field(2; "Database Code"; Code[20])
        {
            Caption = 'Database Code';
            TableRelation = "OM - NAV Database";
        }
        field(3; Type; Option)
        {
            BlankZero = true;
            Caption = 'Type';
            OptionCaption = ',Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query';
            OptionMembers = ,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query";
        }
        field(4; "No."; Integer)
        {
            BlankZero = true;
            Caption = 'No.';
            TableRelation = Object.ID WHERE (Type = FIELD (Type),
                                             "Company Name" = FILTER (''));
        }
        field(5; Name; Text[30])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(6; Modified; Boolean)
        {
            Caption = 'Modified';
        }
        field(7; "Version List"; Text[248])
        {
            Caption = 'Version List';
        }
        field(8; "Object Date"; Date)
        {
            Caption = 'Object Date';
        }
        field(9; "Object Time"; Time)
        {
            Caption = 'Object Time';
        }
        field(10; Compiled; Boolean)
        {
            Caption = 'Compiled';
        }
        field(11; "C/AL Code"; BLOB)
        {
            Caption = 'C/AL Code';
        }
        field(12; "BLOB Reference"; BLOB)
        {
            Caption = 'BLOB Reference';
        }
        field(13; "Import Action"; Option)
        {
            Caption = 'Import Action';
            OptionCaption = ',Replace,Replace and Compile,Import Properties,Skip';
            OptionMembers = ,Replace,"Replace and Compile","Import Properties",Skip;
        }
        field(14; Updated; Option)
        {
            Caption = 'Updated';
            OptionCaption = 'Updated,Outdated,Error';
            OptionMembers = Updated,Outdated,Error;
        }
        field(20; "Existing Name"; Text[30])
        {
            Caption = 'Existing Name';
        }
        field(21; "Existing Modified"; Boolean)
        {
            Caption = 'Existing Modified';
        }
        field(22; "Existing Version List"; Text[248])
        {
            Caption = 'Existing Version List';
        }
        field(23; "Existing Date"; Date)
        {
            Caption = 'Existing Date';
        }
        field(24; "Existing Time"; Time)
        {
            Caption = 'Existing Time';
        }
        field(25; "Existing Compiled"; Boolean)
        {
            Caption = 'Existing Compiled';
        }
        field(30; "New Database Code"; Code[20])
        {
            Caption = 'New Database Code';
            TableRelation = "OM - NAV Database";
        }
        field(31; "New Object No."; Integer)
        {
            Caption = 'New Object No.';
        }
        field(32; "New Name"; Text[30])
        {
            Caption = 'New Name';
        }
        field(33; "New Modified"; Boolean)
        {
            Caption = 'New Modified';
        }
        field(34; "New Version List"; Text[248])
        {
            Caption = 'New Version No.';
        }
        field(35; "New Date"; Date)
        {
            Caption = 'New Date';
        }
        field(36; "New Time"; Time)
        {
            Caption = 'New Time';
        }
        field(37; "New Compiled"; Boolean)
        {
            Caption = 'New Compiled';
        }
        field(38; "New C/AL Code"; BLOB)
        {
            Caption = 'New C/AL Code';
        }
        field(39; "New Updated"; Option)
        {
            Caption = 'New Updated';
            OptionCaption = 'Updated,Outdated,Error';
            OptionMembers = Updated,Outdated,Error;
        }
        field(40; "Prev. Name"; Text[30])
        {
            Caption = 'Prev. Name';
        }
        field(42; "Prev. Version List"; Text[248])
        {
            Caption = 'Prev. Version No.';
        }
        field(43; "Prev. Date"; Date)
        {
            Caption = 'Prev. Date';
        }
        field(44; "Prev. Time"; Time)
        {
            Caption = 'Prev. Time';
        }
        field(60; "Object Changed"; Boolean)
        {
            Caption = 'Object Changed';
        }
        field(61; Conflicting; Boolean)
        {
            Caption = 'Conflicting';
        }
        field(62; "C/AL Code Present"; Boolean)
        {
            Caption = 'C/AL Code Present';
        }
        field(63; "Prev. C/AL Object Entry No."; Integer)
        {
            Caption = 'Prev. C/AL Object Entry No.';
            TableRelation = "OM - C/AL History Object";
        }
        field(64; Left; Option)
        {
            Caption = 'Left';
            OptionCaption = ' ,Older,Newer,Orphan';
            OptionMembers = " ",Older,Newer,Orphan;
        }
        field(65; Different; Boolean)
        {
            Caption = 'Different';
        }
        field(66; Right; Option)
        {
            Caption = 'Right';
            OptionCaption = ' ,Older,Newer,Orphan';
            OptionMembers = " ",Older,Newer,Orphan;
        }
        field(67; New; Option)
        {
            Caption = 'New';
            OptionCaption = ' ,New,Older,Newer';
            OptionMembers = " ",New,Older,Newer;
        }
    }

    keys
    {
        key(Key1; "Line Type", Type, "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

