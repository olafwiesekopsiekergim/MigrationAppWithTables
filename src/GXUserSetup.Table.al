table 5012801 "GX User Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00:T100 04.05.12 DEMSR.IST
    //   "User ID" expanded to Code50
    //   Obsolet field 11 deleted
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'GX User Setup';

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            NotBlank = true;
            TableRelation = User."User Name";
            //This property is currently not supported
            //TestTableRelation = true;
            ValidateTableRelation = true;
        }
        field(2; "Scheme Code"; Code[20])
        {
            Caption = 'Scheme Code';
            TableRelation = "GX Basic Scheme".Code;
        }
        field(3; "Scheme Description"; Text[50])
        {
            CalcFormula = Lookup ("GX Basic Scheme".Description WHERE (Code = FIELD ("Scheme Code")));
            Caption = 'Scheme Description';
            Editable = false;
            FieldClass = FlowField;
        }
        field(40; "Display Mode (Classic Client)"; Option)
        {
            Caption = 'Display Mode (Classic Client)';
            OptionCaption = 'Single Screen,Multiple Screens,Embedded';
            OptionMembers = "Single Screen","Multiple Screens",Embedded;
        }
    }

    keys
    {
        key(Key1; "User ID")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

