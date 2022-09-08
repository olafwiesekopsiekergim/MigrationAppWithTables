table 5013675 "Checkl. Question/Answer Comb."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW15.01:59:01 #filled in KeyGroups
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'Checkl. Question/Answer Comb.';
    DataCaptionFields = Question, Answer;

    fields
    {
        field(10; Question; Code[20])
        {
            Caption = 'Question';
            NotBlank = true;
            TableRelation = "Checklist Question";
        }
        field(20; Answer; Code[20])
        {
            Caption = 'Answer';
            NotBlank = true;
            TableRelation = "Checklist Answer";
        }
    }

    keys
    {
        key(Key1; Question, Answer)
        {
            Clustered = true;
        }
        key(Key2; Answer, Question)
        {
        }
    }

    fieldgroups
    {
    }
}

