select First_Name, Last_Name, Age,
Case 
when Age > 30 Then 'Old'
else 'Young'
end
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
where age is not null
order by age asc

-- kasus case ini mirip dengan IF dan IF else
-- menambahkan kolom baru dan memberi informosi baru sesuai dengan perintah

select First_Name, Last_Name, Age,
Case 
when Age > 30 Then 'Old'
when Age Between 27 and 30 Then 'Young'
else 'Baby'
end
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
where age is not null
order by age asc

select First_Name, Last_Name, Age,
Case 
when Age = 38 Then 'Stanley'
when Age > 30 Then 'Old'
else 'Baby'
end
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
where age is not null
order by age asc
-- dalam penggunaan case urutkan yang paling tinggi dulu

select First_Name, Last_Name, Job_Title, Salary,
case
when job_title = 'salesman' Then salary + (Salary * .10)
when Job_Title = 'accountant' then salary + (Salary * .05)
when job_title = 'HR' then salary + (Salary * .000001)
else Salary + (Salary * .03)
end as salary_afterraise
from SQ_TutorialAlexAnalystYT..EmployeeDemographics
join SQ_TutorialAlexAnalystYT.. EmployeeSalary
on EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeId;
-- merupakan case dan gabungan perintah join
-- jadi bisa menggunakan join kedua tabel dulu 
-- lalu masuk dengan case yang diinginkan
-- ingat sebelum masuk case harus dikasih koma dulu