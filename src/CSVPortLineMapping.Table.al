table 5157818 "CSV Port Line Mapping"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.11.08   Extended Application
    //                 - Object created
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001462  27.01.2017  gbedv.hs    Increase Values of "Old Value" and "New Value" to 50

    Caption = 'CSV Port Line Mapping';

    fields
    {
        field(1; "CSV Port Code"; Code[20])
        {
            Caption = 'CSV Port Code';
            NotBlank = true;
            TableRelation = "CSV Port";
        }
        field(2; "CSV Port Line No."; Integer)
        {
            Caption = 'CSV-Port Line No.';
            NotBlank = true;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Old Value"; Text[50])
        {
            Caption = 'Old Value';
        }
        field(5; "New Value"; Text[50])
        {
            Caption = 'New Value';
        }
        field(6; Fieldlinking; Boolean)
        {
            Caption = 'Used for Fieldlink';
        }
        field(7; NewOldValue; Option)
        {
            Caption = 'New or Old Value';
            OptionCaption = ' ,old Value,new Value';
            OptionMembers = " ",Old,New;
        }
        field(8; Condition; Option)
        {
            Caption = 'Condition';
            OptionCaption = ' ,=,<,>,<>';
            OptionMembers = " ","=","<",">","<>";
        }
        field(9; Value1; Text[250])
        {
            Caption = 'Value 1';
        }
        field(10; ThenRow; Integer)
        {
            Caption = 'Then Row';
        }
        field(11; Value2; Text[250])
        {
            Caption = 'Value 2';
        }
        field(12; ValueFromColumn; Integer)
        {
            Caption = 'Value from Row';
        }
        field(13; StoreOldNewValue; Option)
        {
            Caption = 'Value to write';
            OptionCaption = ' ,original Value,mapped Value';
            OptionMembers = " ",Old,New;
        }
    }

    keys
    {
        key(Key1; "CSV Port Code", "CSV Port Line No.", "Line No.")
        {
            Clustered = true;
        }
        key(Key2; "CSV Port Code", "CSV Port Line No.", "Old Value")
        {
        }
    }

    fieldgroups
    {
    }
}

