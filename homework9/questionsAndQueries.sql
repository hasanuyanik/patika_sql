-- 1 - city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT CITY.city, COUNTRY.country FROM CITY
INNER JOIN COUNTRY ON COUNTRY.country_id = CITY.country_id;

-- 2 - customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT PAYMENT.payment_id, CUSTOMER.first_name, CUSTOMER.last_name FROM CUSTOMER
INNER JOIN PAYMENT ON PAYMENT.customer_id = CUSTOMER.customer_id;

-- 3 - customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.
SELECT RENTAL.rental_id, CUSTOMER.first_name, CUSTOMER.last_name FROM CUSTOMER
INNER JOIN RENTAL ON RENTAL.customer_id = CUSTOMER.customer_id;