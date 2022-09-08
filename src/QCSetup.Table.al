table 5012600 "QC Setup"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :PMW14.02:20:1
    //   # Field 20 "QC Header No. Series" renamed to "QC Test No. Serie"
    // 
    // #PMW16.00.01:100 04.11.09 DEMSR.IST
    //   New field 40 "Question Status All Right"
    //   New field 41 "Question Status Restriction"
    //   New field 42 "Question Status Blocked"
    //   New field 43 "Check QC Lot Test"
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Setup';

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(20; "QC Test No. Series"; Code[10])
        {
            Caption = 'QC Test No. Series';
            TableRelation = "No. Series";
        }
        field(21; "QC Template No. Series"; Code[10])
        {
            Caption = 'QC Template No. Series';
            TableRelation = "No. Series";
        }
        field(22; "QC Template Version No. Series"; Code[10])
        {
            Caption = 'QC Template Version No. Series';
            TableRelation = "No. Series";
        }
        field(30; "QC Question No. Series"; Code[10])
        {
            Caption = 'QC Question No. Series';
            TableRelation = "No. Series";
        }
        field(31; "QC Answer No. Series"; Code[10])
        {
            Caption = 'QC Answer No. Series';
            TableRelation = "No. Series";
        }
        field(40; "Question Status All Right"; Code[10])
        {
            Caption = 'Question Status All Right';
            Description = '#PMW16.00.01:100';
            TableRelation = "Data Control Colors".Code;
        }
        field(41; "Question Status Restriction"; Code[10])
        {
            Caption = 'Question Status Restriction';
            Description = '#PMW16.00.01:100';
            TableRelation = "Data Control Colors".Code;
        }
        field(42; "Question Status Blocked"; Code[10])
        {
            Caption = 'Question Status Blocked';
            Description = '#PMW16.00.01:100';
            TableRelation = "Data Control Colors".Code;
        }
        field(43; "Check QC Lot Test"; Boolean)
        {
            Caption = 'Check QC Lot Test';
            Description = '#PMW16.00.01:100';
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

