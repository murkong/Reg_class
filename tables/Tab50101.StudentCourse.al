table 50101 "Student Course"
{
    Caption = 'Student Course';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reg. No"; Code[30])
        {
             trigger OnValidate()
          begin
               
                FnCalculateGrades();
                
            end;
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
        field(6; MarksStudent; Integer)
         { 
             DataClassification = ToBeClassified;
        }
        field(7; Grade; Text[10])
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
        if MarksStudent >= 90 then
            SGrade := 'A'
        else
            if MarksStudent >= 80 then
                SGrade := 'B'
            else
                if MarksStudent >= 70 then
                    SGrade := 'C'
                else
                    if MarksStudent >= 60 then
                        SGrade := 'D'
                    else
                        if MarksStudent >= 40 then
                            SGrade := 'E'
                        else
                            if MarksStudent >= 0 then
                                SGrade := 'F'
                            else
                                SGrade := 'NULL';
    end;
    
    var
        // Grade: Code[5];
        SGrade: Code [10];


}

