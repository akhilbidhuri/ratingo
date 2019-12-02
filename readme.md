Ratingo-

Data base has been designed and built only for manging and serving Ratings data. Database used is PostGreSQL.
Attributes of the Ratings table-
uid - user id, user who wrote the rating
pid - product id
rating - float value indicating rating(1-5)
comment - some text comment about the product
A VIEW called "avgratings" is created which has pid, avgrating, count of the products useful for catalogue page for fast serving of data.
Databse has been populated with 2000 ratings for 100 products using a python script.

AMQP-
RabbitMQ Queue is used when a rating is submitted so that the response is fast. A consumer picks up the data and pushes it into the database. This makes to system more scalable and able to handle high RPM.

Rating Service API Endpoints-
APIs repond with paginated or batches of data not the whole data.
1. /newRating -  to submit a new rating data expected: pid, rating, comment, uid. If a UID has made a rating for pid it won't be allowed to make a rating again.
2. /getRating - to get the pid, avgratings, count for the catalogue page.
3. /getRatings - to get ratings for a specific product on the product page.

Cache -
A cache can be added to the service to store most frequently asked product ratings this will reduce the response time. Cache has not been implemented in this task, but can be added as a further enhancement.

Backend -
Majorly the backend has been built and has been built using Node.js using REST.

Frontend -
Built for demo purpose and as a POC. Built using React.js. 

Testing -
A cURL script has been written and provided which can be used to test the APIs.

DEPLOYMENT -
Project has been deployed on Heroku and the development of the task was done taking free offerings of heroku in mind.
Links - 
https://ratingo.herokuapp.com/ (App can be opened on a Browser and used)

APIs(for postman or writing own cURL script, refer the provided cURL script for reference)-
https://ratingo.herokuapp.com/newRating - POST
https://ratingo.herokuapp.com/getRating - GET
https://ratingo.herokuapp.com/newRatings - GET

Additionaly the SQL script and python script(used to populate the database) are also provided.
Thanks
