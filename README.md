# Airline management
My project models a database of an airline
![Airline ERD](https://github.com/user-attachments/assets/1d1747b5-8b8c-4cf6-8fb2-8ae8d7968f32)

## Query I think GPT did well

Question: What is the busiest time of day for departures?

### GPT SQL Response:

<pre>SELECT strftime('%H', departure_time) AS hour, COUNT(*) AS num_departures 
  FROM flight 
  GROUP BY hour 
  ORDER BY num_departures DESC 
  LIMIT 1; </pre>

SQL Result: [('08', 2)]
### Friendly Response: The busiest time for departures is 8 AM.

## Query GPT did not do well on

Question": Which airport has the most departures?

### GPT SQL Response:

<pre>SELECT a.airport_name, COUNT(f.id) AS departure_count 
  FROM airport a 
  JOIN flight f ON a.id = f.departure_airport_id 
  GROUP BY a.id 
  ORDER BY departure_count DESC 
  LIMIT 1;</pre> 

SQL Result: [('John F. Kennedy International Airport', 2)]
### Friendly Response: Hartsfield-Jackson Atlanta International Airport.

Even through in the SQL result, it gave the right answer as JFK is found twice as a departure airport, when it processed the result into a friendly response, it asnwered that Hartsfield-Jackson Atlanta International Airport is the airport with most spartures even though this airport is not even in my database.

## Conclusion
It seems that my databse is not that complicated so GPT was able to process most of the questions in the right way. However, whenevr there was a spelling mistake, that threw the system off when it processed from SQL to friendly response.
