/*
	DML
	insert C 데이터 추가
    select R 데이터 조회 
    update U 데이터 수정
    delete D 데이터 삭제

*/
/*------------------------insert----------------------------*/
set sql_safe_updates = 0;
select * from student_study_mst;

insert into student_study_mst
	(id, name, age)
    values
    (1,'정빈',20);
insert into student_study_mst(name, id, age) values('김규민', 2,17);
insert into student_study_mst(name, id) values('박경효',26);
insert into student_study_mst values(3, '김혜진',26);

insert into student_study_mst
value
	(5, '운도영', 25),
	(6, '홍석욱', 25),
	(7, '김경민', 32),
	(8, '장혜민', 26);
    
/*----------------------------update----------------------------------------*/

update student_study_mst
set
	name = '정순동',
    age = 22
where
	id = 6;

update student_study_mst
set
	age = age + 1
where
	id = 6;
    
/*----------------------------delete----------------------------------------*/

delete /*지우려는 모든 데이터는 key 값으로 한다. 중복 가능성이 있으므로.*/
from
	student_study_mst  /*여기까지만 쓰면 (where 안달면) DB내용 싹다 지워짐*/
where
	id =1;














