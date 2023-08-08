codeunit 50100 "StudentInfo Codeunit"
{
    //Creating a new record or insert a record
    procedure FnCreateStudentInfo(TxtName: Text; CdRegNo: Code[50]; CdAge: Integer; OpGender: Option "",Male,Female) return_value: Boolean
    //Try Changingthe order of the values passed
    begin
        return_value := false;
        TbStudentInfo.Reset();
        TbStudentInfo.Reset();
        TbStudentInfo.Name := TxtName;
        TbStudentInfo."Reg. No" := CdRegNo;
        TbStudentInfo.Age := CdAge;
        TbStudentInfo.Gender := OpGender;
        if TbStudentInfo.Insert() = true then
            return_value := true;

    end;
    //Editing or modifying a record
    procedure FnEditStudentInfo(TxtName: Text; CdRegNo: Code[50]; IntAge: Integer; OpGender: option " ",Male,Female) IsSuccessful: Boolean
    begin
        IsSuccessful := false;
        TbStudentInfo.Reset();
        TbStudentInfo.SetRange(TbStudentInfo."Reg. No", CdRegNo);
        if TbStudentInfo.FindFirst() then begin
            TbStudentInfo.Name := TxtName;
            TbStudentInfo.Age := IntAge;
            TbStudentInfo.Gender := OpGender;
            if TbStudentInfo.Modify() = true then
                IsSuccessful := true;
        end
    end;

    var
        TbStudentInfo: record "Student Info";
}

