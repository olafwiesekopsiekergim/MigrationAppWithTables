table 11102100 "OM - Developer Cue"
{
    Caption = 'Developer Cue';
    DataPerCompany = false;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(2; "User Id Filter"; Code[50])
        {
            Caption = 'User Id Filter';
            FieldClass = FlowFilter;
            TableRelation = "OM - User";
        }
        field(3; Modified; Boolean)
        {
            Caption = 'Modified';
            FieldClass = FlowFilter;
        }
        field(4; Date; Date)
        {
            Caption = 'Date';
            FieldClass = FlowFilter;
        }
        field(5; "My Type Filter"; Option)
        {
            Caption = 'My Type Filter';
            FieldClass = FlowFilter;
            OptionCaption = '0,1,2,3,4,5,6,7,8,9,10';
            OptionMembers = "0","1","2","3","4","5","6","7","8","9","10";
        }
        field(6; "My No. Filter"; Integer)
        {
            Caption = 'My No. Filter';
            FieldClass = FlowFilter;
        }
        field(7; "My Name Filter"; Text[100])
        {
            Caption = 'My Name Filter';
            FieldClass = FlowFilter;
        }
        field(8; "My Modified Filter"; Boolean)
        {
            Caption = 'My Modified Filter';
            FieldClass = FlowFilter;
        }
        field(9; "My Date Filter"; Date)
        {
            Caption = 'My Date Filter';
            FieldClass = FlowFilter;
        }
        field(10; "My Time Filter"; Time)
        {
            Caption = 'My Time Filter';
            FieldClass = FlowFilter;
        }
        field(11; "My Version List Filter"; Text[100])
        {
            Caption = 'My Version List Filter';
            FieldClass = FlowFilter;
        }
        field(12; "My Caption Filter"; Text[100])
        {
            Caption = 'My Caption Filter';
            FieldClass = FlowFilter;
        }
        field(13; "Locked User Id Filter"; Text[132])
        {
            Caption = 'Locked User Id Filter';
            FieldClass = FlowFilter;
        }
        field(100; Objects; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = FILTER (<> TableData),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(101; Tables; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (Table),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'Tables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(103; Reports; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (Report),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'Reports';
            Editable = false;
            FieldClass = FlowField;
        }
        field(105; Codeunits; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (Codeunit),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'Codeunits';
            Editable = false;
            FieldClass = FlowField;
        }
        field(106; XMLports; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (XMLport),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'XMLports';
            Editable = false;
            FieldClass = FlowField;
        }
        field(107; MenuSuites; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (MenuSuite),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'MenuSuites';
            Editable = false;
            FieldClass = FlowField;
        }
        field(108; Pages; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (Page),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'Pages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(109; Queries; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = CONST (Query),
                                              Modified = FIELD (Modified),
                                              Date = FIELD (Date)));
            Caption = 'Queries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(119; "My Objects"; Integer)
        {
            CalcFormula = Count (Object WHERE (Type = FIELD ("My Type Filter"),
                                              ID = FIELD ("My No. Filter"),
                                              Name = FIELD ("My Name Filter"),
                                              Modified = FIELD ("My Modified Filter"),
                                              Date = FIELD ("My Date Filter"),
                                              Time = FIELD ("My Time Filter"),
                                              "Version List" = FIELD ("My Version List Filter"),
                                              Caption = FIELD ("My Caption Filter")));
            Caption = 'My Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(160; "Object Locks"; Integer)
        {
            CalcFormula = Count ("OM - Object Lock");
            Caption = 'Object Locks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(161; "My Object Locks"; Integer)
        {
            CalcFormula = Count ("OM - Object Lock" WHERE ("Locked By" = FIELD ("Locked User Id Filter")));
            Caption = 'My Object Locks';
            Editable = false;
            FieldClass = FlowField;
        }
        field(200; "Open Modifications"; Integer)
        {
            CalcFormula = Count ("OM - Modification" WHERE (Status = CONST (Inserted)));
            Caption = 'Open Modifications';
            Editable = false;
            FieldClass = FlowField;
        }
        field(201; "My Modifications"; Integer)
        {
            CalcFormula = Count ("OM - Modification" WHERE (Status = CONST (Inserted),
                                                           "Inserted By" = FIELD ("User Id Filter")));
            Caption = 'My Modifications';
            Editable = false;
            FieldClass = FlowField;
        }
        field(300; "Open Projects"; Integer)
        {
            CalcFormula = Count ("OM - Project" WHERE (Transported = CONST (false)));
            Caption = 'Open Projects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(301; "My Projects"; Integer)
        {
            CalcFormula = Count ("OM - Project" WHERE (Transported = CONST (false),
                                                      "Active User" = FIELD ("User Id Filter")));
            Caption = 'My Projects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(400; "Open Transports"; Integer)
        {
            CalcFormula = Count ("OM - Transport" WHERE (Transported = CONST (false)));
            Caption = 'Open Transports';
            Editable = false;
            FieldClass = FlowField;
        }
        field(401; "My Transports"; Integer)
        {
            CalcFormula = Count ("OM - Transport" WHERE (Transported = CONST (false),
                                                        "Active User" = FIELD ("User Id Filter")));
            Caption = 'My Transports';
            Editable = false;
            FieldClass = FlowField;
        }
        field(600; "Where Used Objects"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object");
            Caption = 'Where Used Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(601; "Where Used Tables"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (Table)));
            Caption = 'Where Used Tables';
            Editable = false;
            FieldClass = FlowField;
        }
        field(603; "Where Used Reports"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (Report)));
            Caption = 'Where Used Reports';
            Editable = false;
            FieldClass = FlowField;
        }
        field(605; "Where Used Codeunits"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (Codeunit)));
            Caption = 'Where Used Codeunits';
            Editable = false;
            FieldClass = FlowField;
        }
        field(606; "Where Used XMLports"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (XMLport)));
            Caption = 'Where Used XMLports';
            Editable = false;
            FieldClass = FlowField;
        }
        field(607; "Where Used MenuSuites"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (MenuSuite)));
            Caption = 'Where Used MenuSuites';
            Editable = false;
            FieldClass = FlowField;
        }
        field(608; "Where Used Pages"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (Page)));
            Caption = 'Where Used Pages';
            Editable = false;
            FieldClass = FlowField;
        }
        field(609; "Where Used Queries"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = CONST (Query)));
            Caption = 'Where Used Queries';
            Editable = false;
            FieldClass = FlowField;
        }
        field(619; "My Where Used Objects"; Integer)
        {
            CalcFormula = Count ("OM - Where Used Object" WHERE ("Object Type" = FIELD ("My Type Filter"),
                                                                "Object No." = FIELD ("My No. Filter"),
                                                                Name = FIELD ("My Name Filter"),
                                                                "Object Modified" = FIELD ("My Modified Filter"),
                                                                "Object Date" = FIELD ("My Date Filter"),
                                                                "Object Time" = FIELD ("My Time Filter"),
                                                                "Version List" = FIELD ("My Version List Filter")));
            Caption = 'My Where Used Objects';
            Editable = false;
            FieldClass = FlowField;
        }
        field(620; Comments; Integer)
        {
            CalcFormula = Count ("OM - Check Guidelines Comment");
            Caption = 'Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(621; "New Comments"; Integer)
        {
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE ("Known Comment" = CONST (false)));
            Caption = 'New Comments';
            Editable = false;
            FieldClass = FlowField;
        }
        field(622; "Critical Comments"; Integer)
        {
            CalcFormula = Count ("OM - Check Guidelines Comment" WHERE (Critical = CONST (true)));
            Caption = 'Critical Comments';
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

