//Tab50102.studentdetails  Table
table 50103 "Student Info"
{
    Caption = 'Student Info';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(2; "Reg. No"; Code[100])
        {
            Caption = 'Reg. No';
        }
        field(3; Gender; Option)
        {
            OptionMembers = " ",Male,Female;
            Caption = 'Gender';
        }
        field(4; Age; Integer)
        {
            Caption = 'Age';
        }
        field(5; "Id. No"; Code[50])
        {
            Caption = 'Id. No';
        }
    }
    keys
    {
        key(PK; "Reg. No")
        {
            Clustered = true;
        }
    }
}
