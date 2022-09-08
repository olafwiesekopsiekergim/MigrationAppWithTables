table 5013811 "Decision Table Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW16.00.01:21:01 #New table
    // #DMW16.00.02:A0004 #field Code must be 20
    // #DMW16.00.03.03:A003 11.07.12 DEMSR.SSZ
    //   #Increased length of the dimension fields from Code 10 to 50
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T110 07.10.14 DEMSR.SSZ
    //   #New fields, PrimaryKey and key to sort the record undependent from the dimension values
    //   #Increased Field length because now also filter expressions can be used

    Caption = 'Decision Table Line';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
            Description = '(PK)';
            TableRelation = "Decision Table Header";
        }
        field(2; "Value Code"; Code[10])
        {
            Caption = 'Value Code';
            Description = '(PK)';
        }
        field(3; "Dimension Value 1"; Code[250])
        {
            Caption = 'Dimension Value 1';
        }
        field(4; "Dimension Value 2"; Code[250])
        {
            Caption = 'Dimension Value 2';
        }
        field(5; "Dimension Value 3"; Code[250])
        {
            Caption = 'Dimension Value 3';
        }
        field(6; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            Description = '#DMW17.10.01:T110 (PK)';
            Editable = false;
        }
        field(10; Value; Text[50])
        {
            Caption = 'Value';
        }
        field(13; "Filter Dim 1 is alphanum."; Boolean)
        {
            Caption = 'Filter Dim 1 is alphanum.';
            Description = '#DMW17.10.01:T110';
        }
        field(14; "Filter Dim 2 is alphanum."; Boolean)
        {
            Caption = 'Filter Dim 2 is alphanum.';
            Description = '#DMW17.10.01:T110';
        }
        field(15; "Filter Dim 3 is alphanum."; Boolean)
        {
            Caption = 'Filter Dim 3 is alphanum.';
            Description = '#DMW17.10.01:T110';
        }
        field(23; "Dim Value 1 Dec."; Decimal)
        {
            Caption = 'Dim Value 1 Dec.';
            Description = '#DMW17.10.01:T110';
            Editable = false;
        }
        field(24; "Dim Value 2 Dec."; Decimal)
        {
            Caption = 'Dim Value 2 Dec.';
            Description = '#DMW17.10.01:T110';
            Editable = false;
        }
        field(25; "Dim Value 3 Dec."; Decimal)
        {
            Caption = 'Dim Value 3 Dec.';
            Description = '#DMW17.10.01:T110';
            Editable = false;
        }
        field(100; "Search Sequence"; Integer)
        {
            Description = '#DMW17.10.01:T110';
        }
    }

    keys
    {
        key(Key1; "Code", "Value Code", "Entry No.")
        {
            Clustered = true;
        }
        key(Key2; "Code", "Value Code", "Search Sequence")
        {
        }
    }

    fieldgroups
    {
    }
}

