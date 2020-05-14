select *, CURRENT_DATE-SALEDATE as DAYS_PASSED from PETSALE order by DAYS_PASSED;

select ANIMAL, count(ANIMAL) as COUNT from PETSALE group by ANIMAL;

select * from PETSALE where ANIMAL='Dog' order by SALEDATE;

select SALEPRICE/QUANTITY as ITEM_VALUE from PETSALE;

select * from PETSALE;