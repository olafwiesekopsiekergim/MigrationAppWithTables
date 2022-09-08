table 14123527 "ES Login"
{
    Caption = 'Login';
    DataCaptionFields = "User ID", "User Name";

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            NotBlank = true;
            OptionCaption = ' ,Database,Windows';
            OptionMembers = " ",Database,Windows;
        }
        field(2; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
        }
        field(3; "User Name"; Text[208])
        {
            Caption = 'User Name';
            Editable = false;
        }
        field(4; "Login SID"; Guid)
        {
            Caption = 'User Security ID';
            Editable = false;
        }
        field(8; "Permissions as Type"; Option)
        {
            Caption = 'Permissions as Type';
            OptionCaption = ' ,Database,Windows';
            OptionMembers = " ",Database,Windows;
        }
        field(9; "Permissions as User ID"; Code[50])
        {
            Caption = 'Permissions as User ID';
            TableRelation = "ES Login"."User ID" WHERE (Type = FIELD ("Permissions as Type"));
        }
        field(10; "Permissions as User Name"; Text[208])
        {
            CalcFormula = Lookup ("ES Login"."User Name" WHERE (Type = FIELD ("Permissions as Type"),
                                                               "User ID" = FIELD ("Permissions as User ID")));
            Caption = 'Permissions as User Name';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; Roles; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Login Type" = FIELD (Type),
                                                                 "Login User ID" = FIELD ("User ID"),
                                                                 "Role Type" = CONST (Role)));
            Caption = 'Permission Sets';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Role Groups"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Login Type" = FIELD (Type),
                                                                 "Login User ID" = FIELD ("User ID"),
                                                                 "Role Type" = CONST (Group)));
            Caption = 'Permission Groups';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "No Permissions"; Boolean)
        {
            Caption = 'No Permissions';
        }
        field(14; "Deleted Live Login"; Boolean)
        {
            Caption = 'Deleted Live Login';
            Editable = false;
        }
        field(15; "Login Updated Date Time"; DateTime)
        {
            Caption = 'Login Updated Date Time';
            Editable = false;
        }
        field(16; "Windows Group"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Group Member" WHERE ("Group SID" = FIELD ("Login SID"),
                                                                 "Group Login User ID" = FILTER (<> '')));
            Caption = 'Windows Group';
            Editable = false;
            FieldClass = FlowField;
        }
        field(17; "Member of Windows Group"; Boolean)
        {
            CalcFormula = Exist ("ES Windows Group Member" WHERE ("Member SID" = FIELD ("Login SID"),
                                                                 "Group Login User ID" = FILTER (<> ''),
                                                                 "Member Login User ID" = FILTER (<> '')));
            Caption = 'Member of Windows Group';
            Editable = false;
            FieldClass = FlowField;
        }
        field(19; "Windows Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Windows Access Control" WHERE ("Login SID" = FIELD ("Login SID")));
            Caption = 'User Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(20; "Access Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Login Type" = FIELD (Type),
                                                                 "Login User ID" = FIELD ("User ID")));
            Caption = 'Access Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Access Controls (No Perm.)"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Login Access Control" WHERE ("Login Type" = FIELD (Type),
                                                                 "Login User ID" = FIELD ("User ID"),
                                                                 "No Permissions" = CONST (true)));
            Caption = 'Access Controls (No Perm.)';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE (Type = FILTER ("Database Login" | "Windows Login"),
                                                               Code = FIELD ("User ID")));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Expiry Date"; Date)
        {
            Caption = 'Expiry Date';
        }
        field(24; "Exported Date Time"; DateTime)
        {
            Caption = 'Exported Date Time';
            Editable = false;
        }
        field(25; "Imported Date Time"; DateTime)
        {
            Caption = 'Imported Date Time';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Type, "User ID")
        {
            Clustered = true;
        }
        key(Key2; "Login Updated Date Time")
        {
        }
        key(Key3; "Expiry Date")
        {
        }
        key(Key4; "Login SID")
        {
        }
    }

    fieldgroups
    {
    }
}

