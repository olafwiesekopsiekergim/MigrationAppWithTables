table 11102056 "OM - User"
{
    Caption = 'OM User';
    DataCaptionFields = "Code", Name;
    DataPerCompany = false;

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
            NotBlank = true;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "E-Mail"; Text[80])
        {
            Caption = 'E-Mail';
            ExtendedDatatype = EMail;
        }
        field(4; "Short User Id"; Code[50])
        {
            Caption = 'Short User Id';
            TableRelation = User;
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(5; "Assign Mode"; Option)
        {
            Caption = 'Assign Mode';
            OptionCaption = 'Save,,Active Project';
            OptionMembers = Save,,"Active Project";
        }
        field(6; "Active Project No."; Code[20])
        {
            Caption = 'Active Project';
            TableRelation = "OM - Project" WHERE ("Status Type" = CONST (Developing));
        }
        field(7; "Default Role"; Code[20])
        {
            Caption = 'Default Role';
            TableRelation = "OM - Role";
        }
        field(8; Initials; Code[20])
        {
            Caption = 'Initials';
        }
        field(9; "Repository Path"; Text[100])
        {
            Caption = 'Repository Path';
        }
        field(10; "Line Type"; Option)
        {
            Caption = 'Line Type';
            OptionCaption = ' ,Empty,Bold,Grey';
            OptionMembers = " ",Empty,Bold,Grey;
        }
        field(11; "My Objects Filter"; TableFilter)
        {
            Caption = 'My Objects Version List Filter';
        }
        field(12; "Capitalized User Id"; Text[132])
        {
            Caption = 'Capitalized User Id';
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
        key(Key2; "Short User Id")
        {
        }
        key(Key3; "Active Project No.")
        {
        }
    }

    fieldgroups
    {
    }
}

