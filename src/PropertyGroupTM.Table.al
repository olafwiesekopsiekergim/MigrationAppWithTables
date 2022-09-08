table 5056425 "PropertyGroup/TM"
{
    Caption = 'Property Group';
    Description = 'GrPropGroup';

    fields
    {
        field(1; PropertyGroupNo; Code[20])
        {
            Caption = 'PropertyGroupNo';
            NotBlank = true;
        }
        field(5000; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5010; Description2; Text[30])
        {
            Caption = 'Description2';
        }
        field(9990; RecordDateModify; Date)
        {
            Caption = 'RecordDateModify';
            Editable = false;
        }
        field(9991; RecordTimeModify; Time)
        {
            Caption = 'RecordTimeModify';
            Editable = false;
        }
        field(9992; RecordUserNoModify; Code[50])
        {
            Caption = 'RecordUserNoModify';
            Editable = false;
            TableRelation = "User Setup"."User ID";
            ValidateTableRelation = false;
        }
    }

    keys
    {
        key(Key1; PropertyGroupNo)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

