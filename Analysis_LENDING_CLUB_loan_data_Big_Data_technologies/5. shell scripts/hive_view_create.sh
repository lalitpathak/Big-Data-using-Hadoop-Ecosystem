hive -e "create view if not exists customer1.monthwise_loan as select count(loan_amnt),month from customer1.loan_data group by month;"
hive -e "create view if not exists customer1.lon_amt as select count(*),loan_amnt from customer1.loan_data group by loan_amnt;"
hive -e "create view if not exists customer1.funded_amnt as select count(*),funded_amnt from customer1.loan_data group by funded_amnt;"
hive -e "create view if not exists customer1.loan_purpose as select count(loan_amnt), purpose from  customer1.loan_data group by purpose;"
hive -e "create view if not exists customer1.application_type as select distinct application_type customer1.from customer1.loan_data;"
hive -e "create view if not exists customer1.avg_int_rate as select avg(int_rate),term from customer1.loan_data group by term;"
hive -e "create view if not exists annual_inc_by_state as "select avg(annual_inc),adress_state from (SELECT annual_inc, b.adress_state FROM customer1.loan_data a JOIN customer1.customer b ON (b.Member_ID = a.member_id))c group by c.adress_state;"
hive -e "create view if not exists avg_int_rate_by_state as "select avg(int_rate),adress_state from (SELECT int_rate, b.adress_state FROM customer1.loan_data a JOIN customer1.customer b ON (b.Member_ID = a.member_id))c group by c.adress_state;"
