report 50100 "Students Course Report"
{
    ApplicationArea = All;//
    Caption = 'Students Course Report';
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/StudentCourseLayout.rdl';
    // continuuuueee
    UsageCategory = Lists;
    dataset
    {
        dataitem("Student Course"; "Student Course")
        {
            //write the dataitems of the fields to be importeed to the report from the tsble 
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
