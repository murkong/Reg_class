codeunit 50101 "StudentCourse Codeunit"
{
    procedure FnCreateStudentCourse(CdRegNo: Code[30]; TxtName: Text; TxtUniversity: Text; TxtDepartnment: Text; TxtCourse: Text; IntMarks1: Integer; IntMarks2: Integer) return_value: Text
    begin
        ;
        return_value := 'False';
        TbStudentCourse.Reset();
        TbStudentCourse."Reg. No" := CdRegNo;
        TbStudentCourse.Department := TxtDepartnment;
        TbStudentCourse.Course := TxtCourse;
        TbStudentCourse.MarksStudent1 := IntMarks1;
        TbStudentCourse.MarksStudent2 := IntMarks2;
        IF TbStudentCourse.Insert() = true then
            return_value := 'Success';
    end;
    //Editing a record
    procedure FnEditStudentCourse(CdRegNo: Code[30]; TxtName: Text; TxtUniversity: Text; TxtDepartnment: Text; TxtCourse: Text; IntMarks1: Integer; IntMarks2: Integer) return_info: Text
    begin
        return_info := 'Unapplied';
        TbStudentCourse.Reset();
        TbStudentCourse.SetRange(TbStudentCourse."Reg. No", CdRegNo);
        if TbStudentCourse.FindFirst() then begin
            TbStudentCourse.Department := TxtDepartnment;
            TbStudentCourse.Course := TxtCourse;
            TbStudentCourse.MarksStudent1 := IntMarks1;
            TbStudentCourse.MarksStudent2 := IntMarks2;
            if TbStudentCourse.Modify() = true then
                return_info := 'Success!';
        end;
    end;
    //Deleting a record
    procedure FnDeletingStudentCourse(CdRegNo: Code[50]) IsSuccessful: Boolean
    Begin
        IsSuccessful := false;
        TbStudentCourse.Reset();
        TbStudentCourse.SetRange(TbStudentCourse."Reg. No", CdRegNo);
        if TbStudentCourse.FindFirst() then begin
            if TbStudentCourse.Delete() = true then
                IsSuccessful := true;
        end;
    End;

    var
        TbStudentCourse: Record "Student Course";
}