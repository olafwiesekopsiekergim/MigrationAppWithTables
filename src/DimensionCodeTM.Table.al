table 5056270 "DimensionCode/TM"
{
    Caption = 'Dimension Code';
    Description = 'GrDimCode';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
        }
        field(5010; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5011; Description2; Text[30])
        {
            Caption = 'Description2';
        }
        field(5020; DimensionRefEmployeeTableOpt; Option)
        {
            Caption = 'DimensionRefEmployeeTableOpt';
            OptionCaption = ' ,Company,Department,Organization Unit 1,Organization Unit 2,Organization Unit 3,Organization Unit 4,Organization Unit 5,Organization Unit 6,Organization Unit 7,Organization Unit 8,Organization Unit 9,Organization Unit 10';
            OptionMembers = " ",Company,Department,"Organization Unit 1","Organization Unit 2","Organization Unit 3","Organization Unit 4","Organization Unit 5","Organization Unit 6","Organization Unit 7","Organization Unit 8","Organization Unit 9","Organization Unit 10";
        }
        field(5030; DimensionRefOrgFormTV; Option)
        {
            Caption = 'DimensionRefOrgFormTV';
            OptionCaption = ' ,Department,Division,Activity,Company,Pay Group,Group 1,Group 2,Group 3';
            OptionMembers = " ",Department,Division,Activity,Company,"Pay Group","Group 1","Group 2","Group 3";
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
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

