table 5013806 "Search Checklist Line"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.02:64:01 #New object
    // :DMW16.00.00.01:6:01 #Changed some Captions
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Search Checklist Line';

    fields
    {
        field(1; "Search Checklist Code"; Code[10])
        {
            Caption = 'Search Checklist Code';
            NotBlank = true;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(10; "Search Field"; Option)
        {
            Caption = 'Search Field';
            OptionCaption = 'Variable,Description';
            OptionMembers = Variable,Description;
        }
        field(11; "Search Type"; Option)
        {
            Caption = 'Search Type';
            OptionCaption = 'Numerical,Alphanumerical';
            OptionMembers = Numerical,Alphanumerical;
        }
        field(12; "Variable/Description"; Text[50])
        {
            Caption = 'Variable/Description';
            TableRelation = IF ("Search Field" = CONST (Variable)) "Variable/Attribute Type";
        }
        field(13; "Filter Input"; Text[250])
        {
            Caption = 'Filter Input';
        }
    }

    keys
    {
        key(Key1; "Search Checklist Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

