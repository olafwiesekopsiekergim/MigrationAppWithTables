table 205 "Resource Unit of Measure"
{
    // :DMW14.00:1:01 #new field 5013400 Type to schedule in Document BOM and Construction
    //  # new function TimeFactor
    // #DMW17.00.00.01:A0001 16.05.13 DEMSR.SSZ Code Review
    // 
    // #DMW18.00.01:T112 09.07.15 DEMSR.BKR Readd "Type" field to Resource Units of Measure field with new ID 5013400 after replacing FDC

    Caption = 'Resource Unit of Measure';

    fields
    {
        field(1; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            NotBlank = true;
            TableRelation = Resource;
        }
        field(2; "Code"; Code[10])
        {
            Caption = 'Code';
            NotBlank = true;
            TableRelation = "Unit of Measure";
        }
        field(3; "Qty. per Unit of Measure"; Decimal)
        {
            Caption = 'Qty. per Unit of Measure';
            DecimalPlaces = 0 : 5;
            InitValue = 1;
        }
        field(4; "Related to Base Unit of Meas."; Boolean)
        {
            Caption = 'Related to Base Unit of Meas.';
            InitValue = true;
        }
        field(5013400; Type; Option)
        {
            Caption = 'Type';
            Description = '#DMW18.00.01:T112';
            OptionCaption = ' ,100/Hour,Minutes,Hours,Days';
            OptionMembers = " ","100/Hour",Minutes,Hours,Days;
        }
    }

    keys
    {
        key(Key1; "Resource No.", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

