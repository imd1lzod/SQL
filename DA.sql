select * from adult_train where Age = 20;

select AVG(age) from adult_train where Target = ' >50K';

select AVG(age) from adult_train where Target = ' <=50K';

--Find standard deviation
select AVG(age), SQRT(AVG(POWER(age - (select AVG(age) OVER() from adult_train where Target = ' <=50K'), 2))) as standart_deviation from adult_train where Target = ' <=50K'

select AVG(age), SQRT(AVG(POWER(age - (select AVG(age) OVER() from adult_train where Target = ' >50K'), 2))) as standart_deviation from adult_train where Target = ' >50K'