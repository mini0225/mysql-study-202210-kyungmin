/*----------------------------select----------------------------------------*/
/*보기좋게 아래양식으로 변경 select id, `name`, age from `student_study_mst` where id=4;*/ /*id 를 써줌으로써 내가 원하는 DB에서 columm을 선택해서 볼수있다. 여러개 가능, 전체는* 하면됨. */ 
/*name 의 색깔이 다른경우(예약어)는 이미 sql에서 사용하는 언어라는 뜻이므로 충돌을 방지하기 위해서 백커터로 감싸준다.*/
/*예약어가 아닌경우에는 백커터 안해도됨.*/

select
	id, 
    `name`, 
    age 
from 
	`student_study_mst` 
where 
	/* age >25; 이런거도 가능*/
    `name` like '%경%' /*'김% - 김 씨 성 찾기  // %경% - 중간이름 경 찾기*/
/* and `name` like '김%' -> 경을 포함하면서 김씨성찾기*/
or `name` like '김%'; /*경 또는 김 찾기*/  /*조건추가 계속 가능*/

select
	*
from
	student_study_mst
where
/*	age >= 25
and
	age <= 30; */
	age between 25 and 30; /*위의 이상이하와 같은 표현*/

select
	*
from
	student_study_mst
where
/*	 age not between 25 and 30
and
    not age = 23 -> not 이 앞에 붙는다.*/

	age is not null;
    
    
    
    
    