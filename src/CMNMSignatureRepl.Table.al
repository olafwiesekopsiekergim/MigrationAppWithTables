table 5171712 "CMNM Signature Repl."
{

    fields
    {
        field(1; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = "User Setup";
            //This property is currently not supported
            //TestTableRelation = false;
            ValidateTableRelation = false;
        }
        field(2; "Signature Type"; Option)
        {
            Caption = 'Signature Type';
            OptionCaption = 'Company signature,Personal signature,Transmission Protocol';
            OptionMembers = Company,Personal,TransmissionProtocol;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
        }
        field(4; "Language Code"; Code[10])
        {
            Caption = 'Language Code';
            TableRelation = Language;
        }
        field(7; "Search Code"; Code[50])
        {
            Caption = 'Search Value';
            NotBlank = true;
        }
        field(8; "Replacement Type"; Option)
        {
            Caption = 'Replacement Type';
            OptionCaption = 'Variable,Table,Embedded Image';
            OptionMembers = Variable,"Table",EmbeddedImage;
        }
        field(9; "Variable Code"; Code[50])
        {
            Caption = 'Variable';
            TableRelation = "CMNM Quick Part".Key WHERE (Type = CONST (Macro));
        }
        field(10; "Embedded Image"; BLOB)
        {
            Caption = 'Embedded Image';
        }
        field(11; "Image Filename"; Text[50])
        {
            Caption = 'Image Filename';
        }
        field(13; "Source Table"; Option)
        {
            Caption = 'Table';
            OptionCaption = 'User Setup,Salesperson,Contact,Ressource';
            OptionMembers = UserSetup,Salesperson,Contact,Ressource;
        }
        field(14; "Source Table Field No."; Integer)
        {
            BlankZero = true;
            Caption = 'Table Field No.';
        }
    }

    keys
    {
        key(Key1; "Signature Type", "User ID", "Language Code", "Line No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

