table 5157813 "Pmt. Import Directory"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // EA   01.01.11   Extended Application
    //                 - Object created
    // -----------------------------------------------------
    // 
    // Change-ID   Date        Developer   Description
    // ==============================================================================================================================
    // CHG_001438  22.12.2016  gbedv.ast   integrate sleep to unzip camt archives

    Caption = 'Pmt. Import Directory';

    fields
    {
        field(1; "No."; Integer)
        {
            Caption = 'No.';
        }
        field(2; "File Type"; Option)
        {
            Caption = 'File Type';
            OptionCaption = ' ,MT940,CSV Port,CREMUL,BESR,REMADV,Credit Card,CAMT';
            OptionMembers = "None",MT940,"CSV Port",CREMUL,BESR,REMADV,"Credit Card",CAMT;
        }
        field(3; Path; Text[250])
        {
            Caption = 'Path';
        }
        field(4; "Backup Path"; Text[250])
        {
            Caption = 'Backup Path';
        }
        field(5; "File Mask"; Text[30])
        {
            Caption = 'File Mask';
        }
        field(6; "CSV Port"; Code[20])
        {
            Caption = 'CSV Port';
            TableRelation = "CSV Port";
        }
        field(7; "Unzip CAMT Archive"; Boolean)
        {
            Caption = 'Unzip CAMT Archive';
        }
        field(8; "CAMT Archive File Mask"; Text[30])
        {
            Caption = 'CAMT Archive File Mask';
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "File Type")
        {
        }
    }

    fieldgroups
    {
    }
}

