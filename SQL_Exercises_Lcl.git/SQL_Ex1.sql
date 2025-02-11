CREATE TABLE 
SALES_DATA
(
PRODUCT_NAME VARCHAR2(100),
CATEGORY VARCHAR2(100),
SALES DECIMAL(10,7)
)
;

ALTER TABLE SALES_DATA MODIFY(SALES NUMBER(10,6)); 

select * from core.SALES_DATA; 

INSERT ALL 
INTO SALES_DATA VALUES('Product AA','Category 1', 1000.00)
INTO SALES_DATA VALUES('Product BB','Category 2', 2000.00)
INTO SALES_DATA VALUES('Product CC','Category 3', 3000.00)
INTO SALES_DATA VALUES('Product DD','Category 4', 4000.00)
SELECT 1 FROM DUAL;

select * from (
select product_name, sales, lag(sales) over (order by sales ) as next_salary
from sales_data) a 
where rownum<=2; -- This is new line
