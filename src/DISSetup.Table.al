table 5100900 "DIS - Setup"
{
    // cc|data integration suite - base (CCDIS)

    Caption = 'Data Integration Suite Setup';

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(4; "Assisted Setup Status"; Option)
        {
            Caption = 'Status';
            OptionCaption = 'Not Completed,Completed,Not Started,Seen,Watched,Read, ';
            OptionMembers = "Not Completed",Completed,"Not Started",Seen,Watched,Read," ";
        }
        field(30; "Sender Code"; Code[20])
        {
            Caption = 'Sender Code';
            TableRelation = "DIS - Partner";
        }
        field(31; "Sender Name"; Text[50])
        {
            Caption = 'Sender Name';
        }
        field(32; "Sender Mail"; Text[50])
        {
            Caption = 'Sender Mail';
        }
        field(35; "Message Double Click"; Option)
        {
            Caption = 'Message Double Click without Record';
            OptionCaption = 'Mapping Version,XML Message,XML Repository';
            OptionMembers = MappingVersion,XmlMessage,XmlRepository;
        }
        field(40; "Advanced Error Template"; BLOB)
        {
            Caption = 'Advanced Error Text Template';
        }
        field(45; "Hide First Column FlowFields"; Boolean)
        {
            Caption = 'Hide First Column FlowFields';
        }
        field(50; "Log Dtld. Mapping Entries"; Boolean)
        {
            Caption = 'Log Detailed Mapping Entries';
        }
        field(51; "Compress Dtld. Mapping Entries"; Boolean)
        {
            Caption = 'Compress Dtld. Mapping Entries';
        }
        field(55; "Edit Xml Application Path"; Text[250])
        {
            Caption = 'Edit XML Application Path';
        }
        field(60; "Mapping Entry Deletion Formula"; DateFormula)
        {
            Caption = 'Mapping Entry Deletion';
            InitValue = '-7D';
        }
        field(61; "Messages Deletion Formula"; DateFormula)
        {
            Caption = 'Messages Deletion';
            InitValue = '-7D';
        }
        field(62; "Email Queue Deletion Formula"; DateFormula)
        {
            Caption = 'Email Queue Deletion';
            InitValue = '-7D';
        }
        field(63; "Record Pool Deletion Formula"; DateFormula)
        {
            Caption = 'Record Pool Entry Deletion';
            InitValue = '-7D';
        }
        field(85; "System Variables"; Option)
        {
            Caption = 'System Variables (Read-only)';
            Description = 'Dot not translate';
            OptionMembers = COMPANYNAME,USERID,WORKDATE,TODAY,TIME,CURRENTDATETIME,GLOBALLANGUAGE,WINDOWSLANGUAGE,GUIALLOWED,GETLASTERRORTEXT;
        }
        field(90; "Global Variables"; Option)
        {
            Caption = 'Global Variables (Read-only)';
            Description = 'Dot not translate';
            OptionMembers = MappingCode,VersionNo,CurrentMappingCode,CurrentVersionNo,CurrentRepositoryCode,CurrentLineNo,CurrentGlobalConversionCode;
        }
        field(92; "Record Pool Variables"; Option)
        {
            Caption = 'Record Pool Variables (Read-only)';
            Description = 'Dot not translate';
            OptionMembers = RecordPoolCode,RecordPoolRepositoryType,RecordPoolTypeOfChange;
        }
        field(93; "RecRef Variables"; Option)
        {
            Caption = 'RecordRef Variables (Read-only)';
            Description = 'Dot not translate';
            OptionMembers = CurrentTableNo,CurrentFieldNo;
        }
        field(94; "Entry Variables"; Option)
        {
            Caption = 'Entry Variables (Read-only)';
            Description = 'Dot not translate';
            OptionMembers = EntryNo,PartnerCode,SequenceCode,SequenceLineNo,XmlRepositoryRecordCount;
        }
        field(95; "Entry Variables Editable"; Option)
        {
            Caption = 'Entry Variables (Writeable)';
            Description = 'Dot not translate';
            OptionMembers = EntryDescription,EntryWarningText;
        }
        field(96; "Codeunit Variables"; Option)
        {
            Caption = 'Codeunit Parameter Variables';
            Description = 'Dot not translate';
            OptionMembers = REOPEN,POST,ITEMTRACKING,DIMSETID,,,,,SETENTRYRECORD,BREAKLOOP,,,,COMMIT;
        }
        field(190; "Activity Monitor Interval"; Integer)
        {
            Caption = 'Activity Monitor Interval (min)';
            InitValue = 60;
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

