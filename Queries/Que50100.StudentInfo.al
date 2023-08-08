query 50100 StudentInfo
{
    Caption = 'QyStudentInfo';
    QueryType = Normal;

    elements
    {
        dataitem(StudentInfo; "Student Info")
        {
            column(RegNo; "Reg. No")
            {
            }
            column(Name; Name)
            {
            }
            column(Gender; Gender)
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
