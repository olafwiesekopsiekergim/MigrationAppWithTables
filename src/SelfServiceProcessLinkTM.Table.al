table 5056417 "SelfServiceProcessLink/TM"
{
    Caption = 'SelfService Process Link';
    Description = 'GrSelfServiceLink';

    fields
    {
        field(1; GUID; Guid)
        {
        }
        field(1000; Confirmed; Boolean)
        {
        }
        field(2000; "Employee No."; Code[20])
        {
            Caption = 'Employee No.';
        }
        field(7000; PropertyType; Option)
        {
            Caption = 'PropertyType';
            OptionCaption = ' ,Job,Position,Function,Title,Profession,Denomination,Special Skill/Project,Equipment/Payment in Kind,Individual Perspective,Education,Qualification,Certificate,Activity,Institute,Contract,Status History,Attachment,Template,Assessment Level,Task,Location,Language,Professional Experience,Working Program,Favourites,Membership,Award,General Info Type,Budget/Compensation,Reason,Interview,General Info';
            OptionMembers = " ",Job,Position,"Function",Title,Profession,Denomination,"Special Skill/Project","Equipment/Payment in Kind","Individual Perspective",Education,Qualification,Certificate,Activity,Institute,Contract,"Status History",Attachment,Template,"Assessment Level",Task,Location,Language,"Professional Experience","Working Program",Favourites,Membership,Award,"General Info Type","Budget/Compensation",Reason,Interview,"General Info";
        }
        field(7001; PropertyNo; Code[20])
        {
            Caption = 'PropertyNo';
            TableRelation = "Rounding Group Line/T"."Rounding Group No.";
        }
        field(8990; RecordDateConfirm; Date)
        {
        }
        field(8991; RecordTimeConfirm; Time)
        {
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
            TableRelation = "User Line/T"."User No.";
        }
    }

    keys
    {
        key(Key1; GUID)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

