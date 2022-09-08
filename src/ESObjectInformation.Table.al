table 14123509 "ES Object Information"
{
    Caption = 'Object Information';
    DataCaptionFields = "Object Type", "Object ID", "Object Caption";

    fields
    {
        field(1; "Object Type"; Option)
        {
            Caption = 'Object Type';
            OptionCaption = 'TableData,Table,,Report,,Codeunit,XMLport,MenuSuite,Page,Query,System';
            OptionMembers = TableData,"Table",,"Report",,"Codeunit","XMLport",MenuSuite,"Page","Query",System;
        }
        field(3; "Object ID"; Integer)
        {
            Caption = 'Object ID';
        }
        field(4; "Object Name"; Text[30])
        {
            Caption = 'Object Name';
        }
        field(20; "Object Caption"; Text[249])
        {
            Caption = 'Object Caption';
        }
        field(1003; "Source/DataItem Table ID"; Integer)
        {
            BlankZero = true;
            CalcFormula = Lookup ("ES Relation"."Relation Object ID" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                           "Object ID" = FIELD ("Object ID"),
                                                                           Type = FILTER ("Source Table" | "Data Item")));
            Caption = 'Source/DataItem Table ID';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1004; "Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID")));
            Caption = 'Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1005; "Limited Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1006; "Limited License Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1007; "Read Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Read Permission" = FILTER (<> " ")));
            Caption = 'Read Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1008; "Insert Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Insert Permission" = FILTER (<> " ")));
            Caption = 'Insert Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1009; "Modify Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Modify Permission" = FILTER (<> " ")));
            Caption = 'Modify Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1010; "Delete Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Delete Permission" = FILTER (<> " ")));
            Caption = 'Delete Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1011; "Execute Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Execute Permission" = FILTER (<> " ")));
            Caption = 'Execute Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1012; "Free Access Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (false),
                                                            "Limited License Object" = CONST (false)));
            Caption = 'Free Access Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1013; Relations; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1014; Variables; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable" WHERE ("Object Type" = FIELD ("Object Type"),
                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1015; "Live Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1016; "Live Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Variable" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1017; "Used as Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Variable" WHERE ("Variable Object Type" = FIELD ("Object Type"),
                                                     "Variable Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1018; "Used as Live Variables"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Variable" WHERE ("Variable Object Type" = FIELD ("Object Type"),
                                                          "Variable Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Live Variables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1019; "Security Filter Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1020; Objects; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object" WHERE (Type = FIELD ("Object Type"),
                                                   ID = FIELD ("Object ID")));
            Caption = 'Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1021; "Limited Access Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Object Level Permissions" = CONST (true)));
            Caption = 'Limited Access Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1022; "Limited License Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited License Object" = CONST (true)));
            Caption = 'Limited License Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1023; "Recording Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Recording Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Recording Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1024; "Role Builder Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Role Builder Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                    "Object ID" = FIELD ("Object ID")));
            Caption = 'Builder Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1025; "Live Role Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (Permission WHERE ("Object Type" = FIELD ("Object Type"),
                                                  "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1026; "Live Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (Object WHERE (Type = FIELD ("Object Type"),
                                              ID = FIELD ("Object ID")));
            Caption = 'Live Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1027; "Live Object Informations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count (AllObjWithCaption WHERE ("Object Type" = FIELD ("Object Type"),
                                                         "Object ID" = FIELD ("Object ID")));
            Caption = 'Live Object Informations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1028; "Summary Permissions"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Summary Permission" WHERE ("Object Type" = FIELD ("Object Type"),
                                                               "Object ID" = FIELD ("Object ID")));
            Caption = 'Summary Permissions';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1029; "Free Access Objects"; Integer)
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
        field(1030; "Used as Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                     "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1031; "Used as Live Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Live Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                          "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Live Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1032; "FLADS Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Relation" WHERE ("Object Type" = FIELD ("Object Type"),
                                                           "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level and Data Security Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1033; "Used as FLADS Relations"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Relation" WHERE ("Relation Object Type" = FIELD ("Object Type"),
                                                           "Relation Object ID" = FIELD ("Object ID")));
            Caption = 'Used as Field Level and Data Security Relations';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1034; "FLADS Controls"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES FLADS Control" WHERE ("Object Type" = FIELD ("Object Type"),
                                                          "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level and Data Security Controls';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1035; "Field Level Security Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Security Object" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                        "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level Security Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1036; "Data Security Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Object" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                 "Object ID" = FIELD ("Object ID")));
            Caption = 'Data Security Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1037; "Field Level Security Fields"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Field Level Sec. Control" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                     "Object ID" = FIELD ("Object ID")));
            Caption = 'Field Level Security Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1038; "Data Security Fields"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Data Security Field" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                "Object ID" = FIELD ("Object ID")));
            Caption = 'Data Security Fields';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1039; "Trace Events"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Trace Event" WHERE ("Object Type" = FIELD ("Object Type"),
                                                        "Object ID" = FIELD ("Object ID")));
            Caption = 'Trace Events';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1040; "Security Filter Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Security Filter Table" = CONST (true)));
            Caption = 'Security Filter Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1041; "Limited User Included Object"; Boolean)
        {
            CalcFormula = Exist ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Object';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1042; "Limited User Included Objects"; Integer)
        {
            BlankZero = true;
            CalcFormula = Count ("ES Object Property" WHERE ("Object Type" = FIELD ("Object Type"),
                                                            "Object ID" = FIELD ("Object ID"),
                                                            "Limited User Table Access" = CONST (Included)));
            Caption = 'Limited User Included Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(1043; "Quick Security Type"; Option)
        {
            CalcFormula = Lookup ("ES Object Property"."Quick Security Type" WHERE ("Object Type" = FIELD ("Object Type"),
                                                                                   "Object ID" = FIELD ("Object ID")));
            Caption = 'Quick Security Type';
            Editable = false;
            FieldClass = FlowField;
            OptionCaption = ' ,Read Only,No Access';
            OptionMembers = " ","Read Only","No Access";
        }
    }

    keys
    {
        key(Key1; "Object Type", "Object ID")
        {
            Clustered = true;
        }
        key(Key2; "Object Type", "Object Name")
        {
        }
        key(Key3; "Object Name")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Object Type", "Object ID", "Object Caption")
        {
        }
    }
}

