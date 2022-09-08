table 5034642 "Stability Test Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW16.00.03:R462 12.08.11 DEMSR.KHS
    //   Object created
    // 
    // #QMW17.10.00.01:T100 25.11.13 DEMSR.KHS
    //   remove single PrimaryKey fields from TableRelations
    // 
    // #QMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Stability Test Line';

    fields
    {
        field(1; "Stability Test No."; Code[20])
        {
            Caption = 'Stability Test No.';
            NotBlank = true;
            TableRelation = "Stability Test Header";
        }
        field(5; "Line No."; Integer)
        {
            Caption = 'Line No.';
            NotBlank = true;
        }
        field(10; Scheduled; Boolean)
        {
            Caption = 'Scheduled';
            Editable = false;
        }
        field(15; Tested; Boolean)
        {
            Caption = 'Tested';
            Editable = false;
        }
        field(20; Cancel; Boolean)
        {
            Caption = 'Cancel';
        }
        field(25; "Test Plan No."; Code[20])
        {
            Caption = 'Test Plan No.';
            TableRelation = "Test Plan";
        }
        field(30; "Test Plan Version"; Code[20])
        {
            Caption = 'Test Plan Version';
        }
        field(35; "Separate Test Order"; Boolean)
        {
            Caption = 'Separate Test Order';
        }
        field(40; "Test Order No."; Code[20])
        {
            Caption = 'Test Order No.';
            Editable = false;
            TableRelation = "Test Order";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(45; "Date Formula"; DateFormula)
        {
            Caption = 'Date Formula';
        }
        field(50; "Test Date"; Date)
        {
            Caption = 'Test Date';
            Editable = false;
        }
        field(55; "Test Result"; Option)
        {
            Caption = 'Test Result';
            OptionCaption = ' ,OK,Not OK';
            OptionMembers = " ",OK,"Not OK";
        }
        field(60; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Stability Test No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "Test Order No.")
        {
        }
        key(Key3; "Test Date")
        {
        }
    }

    fieldgroups
    {
    }
}

