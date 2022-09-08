table 5012502 Machine
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // PLANTMAIN:PMW15.00:19:1
    //   Object created
    // 
    // :PMW16.00:155:1
    //   Connections to sequence planning
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Machine';
    DataCaptionFields = "No.", Description;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Fixed Asset No."; Code[20])
        {
            Caption = 'Fixed Asset No.';
            TableRelation = "Fixed Asset"."No.";
        }
        field(3; Description; Text[30])
        {
            Caption = 'Description';
        }
        field(4; "Description 2"; Text[30])
        {
            Caption = 'Description 2';
        }
        field(5; "Serial No."; Text[30])
        {
            Caption = 'Serial No.';
        }
        field(6; "Search Description"; Code[30])
        {
            Caption = 'Search Description';
        }
        field(7; Blocked; Boolean)
        {
            Caption = 'Blocked';
        }
        field(8; "No. Series"; Code[10])
        {
            Caption = 'No. Series';
            TableRelation = "No. Series";
        }
        field(9; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            TableRelation = Resource."No.";
        }
        field(10; "Machine/Component"; Option)
        {
            Caption = 'Machine/Component';
            OptionCaption = 'Main Machine,Sub Machine,Component';
            OptionMembers = "Main Machine","Sub Machine",Component;
        }
        field(11; "Main Machine No."; Code[20])
        {
            Caption = 'Main Machine No.';
            TableRelation = Machine;
        }
        field(15; "Work Center No."; Code[20])
        {
            Caption = 'Work Center No.';
            TableRelation = "Work Center"."No." WHERE ("Sequence Planning" = CONST (true));
        }
        field(20; "Run Time"; Decimal)
        {
            Caption = 'Run Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(25; "Run Time Unit of Meas. Code"; Code[10])
        {
            Caption = 'Run Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(30; "Setup Time"; Decimal)
        {
            Caption = 'Setup Time';
            DecimalPlaces = 0 : 5;
            MinValue = 0;
        }
        field(35; "Setup Time Unit of Meas. Cod"; Code[10])
        {
            Caption = 'Setup Time Unit of Meas. Code';
            TableRelation = "Capacity Unit of Measure";
        }
        field(40; "Maintenance Job Type No."; Code[20])
        {
            Caption = 'Maintenance Job Type No.';
            TableRelation = "Maintenance-/Setup Job Type"."No.";
        }
        field(101; "Technical Note 01"; Text[30])
        {
            Caption = 'Technical Note 01';
        }
        field(102; "Technical Note 02"; Text[30])
        {
            Caption = 'Technical Note 02';
        }
        field(103; "Technical Note 03"; Text[30])
        {
            Caption = 'Technical Note 03';
        }
        field(104; "Technical Note 04"; Text[30])
        {
            Caption = 'Technical Note 04';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Main Machine No.")
        {
        }
    }

    fieldgroups
    {
    }
}

