table 50101 "Student Course"
{
    Caption = 'Student Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reg. No"; Code[30])
        {

            // Caption = 'Reg. No';
            // DataClassification = ToBeClassified;
        }
        field(2; Course; Text[100])
        {
            Caption = 'Course';
            DataClassification = ToBeClassified;
        }
        field(3; Department; Text[100])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
        }
        field(4; School; Text[100])
        {
            Caption = 'School';
            DataClassification = ToBeClassified;
        }
        field(5; University; Text[100])
        {
            Caption = 'University';
            DataClassification = ToBeClassified;
        }
        field(6; MarksStudent1; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin

                FnCalculateGrades();

            end;
        }
        field(7; MarksStudent2; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(8; Grade; Text[10])
        {

            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Reg. No")
        {
            Clustered = true;
        }
    }
    // else 
    // Grade := GetLastErrorCode;  
    procedure FnCalculateGrades()
    begin
        TotalMarks := MarksStudent1 + MarksStudent2;
        AvgMarks := TotalMarks / 2;

        if AvgMarks >= 70.0 then
            if AvgMarks <= 100.0 then
                Grade := 'A'
            else
                if AvgMarks >= 60 then
                    Grade := 'B'
                else
                    if AvgMarks >= 40 then
                        Grade := 'D'
                    else
                        if AvgMarks >= 0 then
                            Grade := 'E'
                        else
                            Grade := 'INVALID';
    end;

    var
        TotalMarks: Integer;
        AvgMarks: Decimal;
    // AvgMarks := MarksStudent1 * MarksStudent2;
    // Grade: Code[5];


}

