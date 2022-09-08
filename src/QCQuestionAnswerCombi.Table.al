table 5012606 "QC Question/Answer Combi."
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // #PMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding

    Caption = 'QC Question/Answer Combi.';

    fields
    {
        field(10; Question; Code[20])
        {
            Caption = 'Question';
            NotBlank = true;
            TableRelation = "QC Question";
        }
        field(20; Answer; Code[20])
        {
            Caption = 'Answer';
            NotBlank = true;
            TableRelation = "QC Answer";
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

