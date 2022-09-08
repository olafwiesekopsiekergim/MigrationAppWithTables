table 5012709 "Manufacturing Dimension"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PXW16.00:106 29.01.09 DEMSR.IG
    //   Object created
    // 
    // #PXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // 
    // :PMW16.00:167:1
    //   Option of field "Fixed Field Allocation" expanded with "Main Tool"
    // 
    // :PMW16.00:152:1
    //   Option of field "Fixed Field Allocation" expanded with "Production Structure"

    Caption = 'Manufacturing Dimension';
    DataCaptionFields = "Code", Name;

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[30])
        {
            Caption = 'Name';
        }
        field(3; "Default Priority"; Integer)
        {
            BlankZero = true;
            Caption = 'Default Priority';
            MinValue = 0;
        }
        field(4; "Value Prioritization"; Option)
        {
            Caption = 'Value Prioritization';
            OptionCaption = 'Priority,Value Ascending,Value Descending';
            OptionMembers = Priority,"Value Ascending","Value Descending";
        }
        field(5; "Numeric Value"; Boolean)
        {
            Caption = 'Numeric Value';
        }
        field(6; "Fixed Field Allocation"; Option)
        {
            Caption = 'Fixed Field Allocation';
            OptionCaption = ' ,Due Date,Item,Production Structure,Production BOM,Routing,Main Tool';
            OptionMembers = " ","Due Date",Item,"Production Structure","Production BOM",Routing,"Main Tool";
        }
        field(7; "Code Caption"; Text[30])
        {
            Caption = 'Code Caption';
        }
        field(8; "Filter Caption"; Text[30])
        {
            Caption = 'Filter Caption';
        }
        field(9; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Default Priority")
        {
        }
    }

    fieldgroups
    {
    }
}

