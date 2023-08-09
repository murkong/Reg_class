page 50103 "Student Course Card"
{
    Caption = 'Student Course Card';
    PageType = Card;
    SourceTable = "Student Course";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Reg. No"; Rec."Reg. No")
                {
                    ApplicationArea = All;
                }
                field(University; Rec.University)
                {
                    ApplicationArea = All;
                }
                field(School; Rec.School)
                {
                    ApplicationArea = All;
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                }
                field(Course; Rec.Course)
                {
                    ApplicationArea = All;
                }
                field(Marks1; Rec.MarksStudent1)
                {
                    ApplicationArea = All;
                }
                field(Marks2; Rec.MarksStudent2)
                {
                    ApplicationArea = All;
                }
                field(Grade; Rec.Grade)
                {
                    Editable = false;
                    ApplicationArea = All;
                }
            }
        }
    }
}
