table 5034571 "Sample Occurrence"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #QMW18.00.01:T103 08.05.15 DEMSR.KHS
    //   Object created

    Caption = 'Sample Occurrence';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "No. Series"; Code[20])
        {
            Caption = 'No. Series';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(10; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(20; "Sample Taking Instruction"; Text[250])
        {
            Caption = 'Sample Taking Instruction';
        }
        field(30; "Sample Handling Instruction"; Text[250])
        {
            Caption = 'Sample Handling Instruction';
        }
        field(40; "Sample Location"; Text[250])
        {
            Caption = 'Sample Location';
            TableRelation = Location;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(50; "Test Order per each (Units)"; Decimal)
        {
            Caption = 'Test Order per each (Units)';
        }
        field(60; "Absolute No. of Test Orders"; Integer)
        {
            Caption = 'Absolute No. of Test Orders';
        }
        field(70; Status; Option)
        {
            Caption = 'Status';
            OptionCaption = 'New,Under Development,Certified,Closed';
            OptionMembers = New,"Under Development",Certified,Closed;
        }
        field(100; "External Document"; BLOB)
        {
            Caption = 'External Document';
        }
        field(110; "External Document Path"; Text[250])
        {
            Caption = 'External Document Path';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

