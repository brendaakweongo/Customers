create database customers;

use customers;

#Displaying the data
select * from customers;

#Total number of customers
select count(*) from customers;

#Number of customers by gender
select gender, count(*) as number_of_customers from customers
group by gender;

#High spending customers---Customers with spending score greater than or equal to 95
select * from customers
where SpendingScore >= 95;

#Total Youthful Customers 
select count(*) from customers
where age <=35;

#Total of high spending customers by spending score
select spendingscore, count(*) as Total_of_high_spending_customers from customers
where spendingscore >= 95
group by spendingscore;

#Ages that have the highest spending customers
select spendingscore,age,count(age) as total_customers from customers
where spendingscore >= 95
group by age,spendingscore
order by spendingscore desc;

#Profession with customers that patronize the business more
select profession, count(*) as total_number_of_customers from customers
group by profession
order by total_number_of_customers desc;

#Spending score of customers with high annual incomes
select annualincome,spendingscore from customers
order by annualincome desc;