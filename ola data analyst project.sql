 create database ola;
use ola;

###1. retrive all successful bookings:
create view sucessful_bookings as
select * from olabookings 
where booking_status="Success";

###1. retrive all successful bookings:
select * from sucessful_bookings;

#2. selet average ride distance for each vehicle_type:
create view ride_distance_for_each_vehcile as
select vehicle_type, avg(ride_distance)
as avg_distance from olabookings
group by vehicle_type;

#2. selet average ride distance for each vehicle_type:
select * from ride_distance_for_each_vehcile;

#3. get the total numbers of bookings canceled by customers:
create view canceled_by_customers as
select count(*) from olabookings
where booking_status = "canceled_by_customer";

#3.get the total numbers of bookings canceled by customers:
select * from canceled_by_customers;

#4. list top 5 customers who booked the highest numbers of rides:
create view top_5_customers as
select customer_id, count(booking_ID) as total_rides
from olabookings
group by customer_id
order by total_rides desc limit 5;

#4. list top 5 customers who booked the highest numbers of rides:
select * from top_5_customers;

#5.get the numbers of rides canceled by drivers due to personal resons or car_related issues:
create view rides_canceled_by_riders as
select count(*) from olabookings
where Canceled_Rides_by_Driver = "personal & car related issue";

#5.get the numbers of rides canceled by drivers due to personal resons or car_related issues:
select * from rides_canceled_by_riders;

#6.find the maximum and minimum driver rating for prime sedan:
create view max_min_driver_rating as
select max(Driver_Ratings) as max_rating,
min(Driver_Ratings) as min_rating
from olabookings where Vehicle_Type = "Prime Sedan";

#6.find the maximum and minimum driver rating for prime sedan:
select * from max_min_driver_rating;

#7.retrive all rides where payment was made by upi:
create view upi_payment as
select * from olabookings
where Payment_Method = "UPI";

#7.retrive all rides where payment was made by upi:
select * from upi_payment;

#8.find the average customer rating per vehicle type:
create view avg_customer_rating as
select Vehicle_Type, avg(Customer_Rating) as avg_customer_rating
from olabookings
group by Vehicle_Type;

#8.find the average customer rating per vehicle type:
select * from avg_customer_rating;

#9.calculate total booking value of rides completed successfully:
create view success as
select sum(Booking_Value) as Total_successfull_value
from olabookings
where Booking_Value="Success";


#9.calculate total booking value of rides completed successfully:
select * from success;

#10.list all incomplete rides along with the reson:
create view incomplete_rides_reason as
select Booking_ID, Incomplete_Rides_Reason from
olabookings 
where Incomplete_Rides = "yes";

#10.list all incomplete rides along with the reson:
select * from incomplete_rides_reason;


###1. retrive all successful bookings:
select * from sucessful_bookings;

#2. selet average ride distance for each vehicle_type:
select * from ride_distance_for_each_vehcile;

#3.get the total numbers of bookings canceled by customers:
select * from canceled_by_customers;

#4. list top 5 customers who booked the highest numbers of rides:
select * from top_5_customers;

#5.get the numbers of rides canceled by drivers due to personal resons or car_related issues:
select * from rides_canceled_by_riders;

#6.find the maximum and minimum driver rating for prime sedan:
select * from max_min_driver_rating;

#7.retrive all rides where payment was made by upi:
select * from upi_payment;

#8.find the average customer rating per vehicle type:
select * from avg_customer_rating;

#9.calculate total booking value of rides completed successfully:
select * from success;

#10.list all incomplete rides along with the reson:
select * from incomplete_rides_reason;





