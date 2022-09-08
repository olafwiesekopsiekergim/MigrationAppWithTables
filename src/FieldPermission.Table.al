table 5060475 "Field Permission"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #RAW16.00:T100 03.08.11 DEMSR.BKR
    //   Create as separate module
    // 
    // #RAW17.00:T100 09.03.12 DEMSR.BKR
    //   Upgrade to NAV 7
    // 
    // #RAW17.00:T116 06.12.12 DEMSR.BKR
    //   Changes due to new User Management
    // 
    // #RAW17.00:T115 05.12.12 DEMSR.BKR
    //   Changes due to new Change Log
    //   Change Log no more necessary
    // 
    // #RAW17.00.00.01:T503 06.05.13 DEMSR.BKR
    //   Correct Control IDs, Field IDs,Variable IDs and delete unsused code and check development guide lines
    // 
    // #RAW17.10.00.01:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Field permission';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Type';
            OptionCaption = ' ,User,Role';
            OptionMembers = " ",User,Role;
        }
        field(2; ID; Code[50])
        {
            Caption = 'ID';
            Description = '#RAW17.00:T100';
            TableRelation = IF (Type = CONST (User)) User
            ELSE
            IF (Type = CONST (Role)) "Permission Set";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(3; "Table ID"; Integer)
        {
            Caption = 'Table ID';
            TableRelation = Object.ID WHERE (Type = CONST (Table));
        }
        field(4; "Field No."; Integer)
        {
            Caption = 'Field No.';
            TableRelation = Field."No." WHERE (TableNo = FIELD ("Table ID"));
        }
        field(10; "Modification Allowed"; Boolean)
        {
            Caption = 'Modification Allowed';
            InitValue = true;
        }
        field(30; "Table Caption"; Text[250])
        {
            CalcFormula = Lookup (AllObjWithCaption."Object Caption" WHERE ("Object Type" = CONST (Table),
                                                                           "Object ID" = FIELD ("Table ID")));
            Caption = 'Table Caption';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Field Caption"; Text[250])
        {
            CalcFormula = Lookup (Field."Field Caption" WHERE (TableNo = FIELD ("Table ID"),
                                                              "No." = FIELD ("Field No.")));
            Caption = 'Field Caption';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; Type, ID, "Table ID", "Field No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

