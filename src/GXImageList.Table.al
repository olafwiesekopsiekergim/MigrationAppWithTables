table 5012806 "GX Image List"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #1-PRODMGT-09:200 24.11.09 DEMSR.CS
    //   Object created
    // 
    // :1-H-1-GX:117:1
    //   # Changes due to UI and programming standards
    // 
    // #GXW17.00:T100 04.09.12 DEMSR.IST
    //   File dialog changed
    // 
    // #GXW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding


    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'code';
            NotBlank = true;
        }
        field(5; "Scheme Code"; Code[20])
        {
            Caption = 'Scheme Code';
            NotBlank = true;
            TableRelation = "GX Basic Scheme".Code;
        }
        field(10; Filename; Text[250])
        {
            Caption = 'Filename';
        }
        field(20; Imagelist; BLOB)
        {
            Caption = 'Imagelist';
        }
        field(30; "Transparency Color"; Integer)
        {
            Caption = 'Transparency Color';
            InitValue = 16711935;
        }
    }

    keys
    {
        key(Key1; "Code", "Scheme Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

