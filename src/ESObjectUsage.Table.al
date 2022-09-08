table 14123534 "ES Object Usage"
{
    Caption = 'Object Usage';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
            TableRelation = "ES Object Information"."Object ID" WHERE ("Object Type" = FIELD ("Object Type"));
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(4; "Object Caption"; Text[249])
        {
            CalcFormula = Lookup ("ES Object Information"."Object Caption" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID")));
            Caption = 'Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; Objects; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object" WHERE (Type = FIELD ("Object Type"),
                                                   ID = FIELD ("Object ID")));
            Caption = 'Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Object Informations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Information" WHERE ("Object Type" = FIELD ("Object Type"),
                                                               "Object ID" = FIELD ("Object ID")));
            Caption = 'Object Informations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Restore Point Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Rest. Point Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                        "Object ID" = FIELD ("Object ID")));
            Caption = 'Restore Point Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Restore Point Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Restore Point Object" WHERE (Type = FIELD ("Object Type"),
                                                                 ID = FIELD ("Object ID")));
            Caption = 'Restore Point Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Restore Point Object Infos."; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Restore Point Object Info." WHERE ("Object Type" = FIELD ("Object Type"),
                                                                       "Object ID" = FIELD ("Object ID")));
            Caption = 'Restore Point Object Informations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Limited Access Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Limited License Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; Relations; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Recording Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Recording Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Recording Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(15; "Role Builder Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Builder Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                    "Object ID" = FIELD ("Object ID")));
            Caption = 'Builder Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(21; "Live Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (Permission WHERE ("Object Type" = FIELD ("Object Type"),
                                                  "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(22; "Live Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (Object WHERE (Type = FIELD ("Object Type"),
                                              ID = FIELD ("Object ID")));
            Caption = 'Live Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Live Object Informations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (AllObjWithCaption WHERE ("Object Type" = FIELD ("Object Type"),
                                                         "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Object Informations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(24; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                               "Object ID" = FIELD ("Object ID")));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(25; "Free Access Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(26; Variables; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable" WHERE ("Object Type" = FIELD ("Object Type"),
                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(27; "Live Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Variable" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(28; "Used as Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable" WHERE ("Variable Object Type" = FIELD ("Object Type"),
                                                     "Variable Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(29; "Used as Live Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Variable" WHERE ("Variable Object Type" = FIELD ("Object Type"),
                                                          "Variable Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Live Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(30; "Live Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(31; "Used as Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                     "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(32; "Used as Live Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                          "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Live Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(33; "FLADS Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level and Data Security Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(34; "Used as FLADS Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                           "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Field Level and Data Security Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(35; "FLADS Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Control" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level and Data Security Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(36; "Field Level Security Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Security Object" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                        "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level Security Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(37; "Data Security Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Object" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Data Security Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(38; "Field Level Security Fields"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Sec. Control" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level Security Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(39; "Data Security Fields"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Field" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                "Object ID" = FIELD ("Object ID")));
            Caption = 'Data Security Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Trace Events"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Trace Event" WHERE ("Object Type" = FIELD ("Object Type"),
                                                        "Object ID" = FIELD ("Object ID")));
            Caption = 'Trace Events';
            Editable = false;
            FieldClass = FlowField;
        }
        field(41; "Security Filter Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(42; "Limited User Included Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Objects';
            Editable = false;
            FieldClass = FlowField;
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

