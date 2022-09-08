table 5013808 "CTO Cue"
{
    // Copyright (Exclusive Rights): COSMO CONSULT Licensing GmbH, Sarnen, Switzerland
    // 
    // :DMW16.00:99:01 #Created because of Role Tailored Client
    // #DMW17.00:A001 18.06.12 DEMSR.SSZ
    //   #New Field 10
    //   #Changed FlowField filter in fields 2 and 3: '<Document BOM' was replaced because of error when opening the flowfield
    // #DMW17.10.00.02:T500 13.02.14 DEMSR.SSZ
    //   #Renamed "Enquiries" to "Inquiries"
    // #DMW17.10.00.02:T503 17.02.14 DEMSR.SSZ
    //   #Rename "Saw List" to "Work Package"
    // #DMW17.10.00.03:T100 31.07.14 DEMSR.IST - Rebranding
    // #DMW17.10.01:T107 15.09.2014 DEMSR.RST
    //   #Change Orders: New fields 11, 12, 13, 14

    Caption = 'CTO Cue';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "Construction Orders - Open"; Integer)
        {
            CalcFormula = Count ("Construction Header" WHERE ("Document Type" = FILTER (Quote | Order | Invoice | "Credit Memo" | "Blanket Order" | "Return Order" | "Service Line" | Job | Jobline),
                                                             Status = CONST (Open)));
            Caption = 'Construction Orders - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(3; "Construction Orders - Released"; Integer)
        {
            CalcFormula = Count ("Construction Header" WHERE ("Document Type" = FILTER (Quote | Order | Invoice | "Credit Memo" | "Blanket Order" | "Return Order" | "Service Line" | Job | Jobline),
                                                             Status = CONST (Released)));
            Caption = 'Construction Orders - Released';
            Editable = false;
            FieldClass = FlowField;
        }
        field(4; "Constr. Inquiries - Open"; Integer)
        {
            CalcFormula = Count ("Construction Header" WHERE ("Document Type" = CONST ("Document BOM"),
                                                             Status = CONST (Open)));
            Caption = 'Construction Inquiries - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(5; "Constr. Inquiries - Released"; Integer)
        {
            CalcFormula = Count ("Construction Header" WHERE ("Document Type" = CONST ("Document BOM"),
                                                             Status = CONST (Released)));
            Caption = 'Construction Inquiries - Released';
            Editable = false;
            FieldClass = FlowField;
        }
        field(6; "Firm Plan. Prod. Orders - All"; Integer)
        {
            CalcFormula = Count ("Production Order" WHERE (Status = CONST ("Firm Planned")));
            Caption = 'Firm Planned Production Orders - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; "Released Prod. Orders - All"; Integer)
        {
            CalcFormula = Count ("Production Order" WHERE (Status = CONST (Released)));
            Caption = 'Released Production Orders - All';
            Editable = false;
            FieldClass = FlowField;
        }
        field(8; "Work Packages - Open"; Integer)
        {
            CalcFormula = Count ("Work Package" WHERE (Status = CONST (Open)));
            Caption = 'Work Packages - Open';
            Editable = false;
            FieldClass = FlowField;
        }
        field(9; "Work Packages - Released"; Integer)
        {
            CalcFormula = Count ("Work Package" WHERE (Status = CONST (Released)));
            Caption = 'Work Packages - Released';
            Editable = false;
            FieldClass = FlowField;
        }
        field(10; "Work Packages - Finished"; Integer)
        {
            CalcFormula = Count ("Work Package" WHERE (Status = CONST (Finished)));
            Caption = 'Work Packages - Finished';
            Editable = false;
            FieldClass = FlowField;
        }
        field(11; "Change Orders - New"; Integer)
        {
            CalcFormula = Count ("Change Order" WHERE (Status = CONST (New)));
            Caption = 'Change Orders - New';
            Editable = false;
            FieldClass = FlowField;
        }
        field(12; "Change Orders - Read"; Integer)
        {
            CalcFormula = Count ("Change Order" WHERE (Status = CONST (Read)));
            Caption = 'Change Orders - Read';
            Editable = false;
            FieldClass = FlowField;
        }
        field(13; "Change Orders - Accepted"; Integer)
        {
            CalcFormula = Count ("Change Order" WHERE (Status = CONST (Accepted)));
            Caption = 'Change Orders - Accepted';
            Editable = false;
            FieldClass = FlowField;
        }
        field(14; "Change Orders - Rejected"; Integer)
        {
            CalcFormula = Count ("Change Order" WHERE (Status = CONST (Rejected)));
            Caption = 'Change Orders - Rejected';
            Editable = false;
            FieldClass = FlowField;
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

