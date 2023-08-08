page 50102 "Student Course List"
{
    ApplicationArea = All;
    Caption = 'Student Course List';
    PageType = List;
    SourceTable = "Student Course";
    UsageCategory = Lists;
    CardPageId = "Student Course Card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Reg. No"; Rec."Reg. No")
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field(Marks; Rec.MarksStudent)
                {
                    ApplicationArea = All;
                }
                field(Grade; rec.Grade)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Reporting)
        {
            action("StudentCourse Report")
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    report.Run(Report::"Students Course Report");
                end;
            }
        }
    }
}
