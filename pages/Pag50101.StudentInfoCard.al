// Card Pag50101.studentdetailscard.al
page 50101 "Student Info Card"
{
    Caption = 'Student Info Card';
    PageType = Card;
    SourceTable = "Student Info";
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Reg. No"; Rec."Reg. No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reg. No field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field("Id. No"; Rec."Id. No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
            }
            group("Student Course Card"){
                
            }
        }
    }
}
