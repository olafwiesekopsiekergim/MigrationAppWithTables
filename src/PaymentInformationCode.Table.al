table 5157894 "Payment Information Code"
{
    // -----------------------------------------------------
    // (c) gbedv, OPplus, All rights reserved
    // 
    // No.  Date       changed
    // -----------------------------------------------------
    // PMT  01.11.08   OPplus Payment
    //                 - Object created
    // -----------------------------------------------------

    Caption = 'Payment Information Code';

    fields
    {
        field(1; Type; Option)
        {
            Caption = 'Payment Information Code';
            NotBlank = true;
            OptionCaption = ' ,Bank Branch Code,BIC,Clearing System';
            OptionMembers = " ","Bank Branch Code","Bank Identifier Code","Clearing System";
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(3; "Bank Branch Code"; Code[20])
        {
            Caption = 'Bank Branch Code';
        }
        field(4; "Short Description"; Text[27])
        {
            Caption = 'Short Description';
        }
        field(5; "Bank Identifier Code"; Code[20])
        {
            Caption = 'BIC';
        }
        field(6; "Post Code"; Code[10])
        {
            Caption = 'Post Code';
        }
        field(7; City; Text[50])
        {
            Caption = 'City';
        }
        field(8; "Bank Name"; Text[60])
        {
            Caption = 'Bank Name';
        }
        field(9; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            TableRelation = "Country/Region";
        }
        field(10; "Check Sum Method"; Code[2])
        {
            Caption = 'Check Sum Method';
        }
        field(11; "Follow Up Code"; Code[10])
        {
            Caption = 'Follow Up Code';
        }
        field(12; "Branch Office"; Code[20])
        {
            Caption = 'Branch Office';
        }
    }

    keys
    {
        key(Key1; Type, "Code")
        {
            Clustered = true;
        }
        key(Key2; Type, "Bank Branch Code")
        {
        }
        key(Key3; Type, "Bank Identifier Code")
        {
        }
        key(Key4; Type, City)
        {
        }
        key(Key5; Type, "Country Code", "Bank Branch Code")
        {
        }
        key(Key6; Type, "Country Code", "Bank Identifier Code")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "Bank Branch Code", "Bank Identifier Code", "Bank Name")
        {
        }
    }
}

