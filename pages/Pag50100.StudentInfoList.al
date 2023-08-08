// Pag50100.studentdetailslist.al
page 50100 "Student Info List"
{
    Caption = 'Student Info List';
    PageType = List;
    SourceTable = "Student Info";
    CardPageId = "Student Info Card"; //This connects the card to the list


    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field(Age; Rec.Age)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Age field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
            }
        }
    }
}
