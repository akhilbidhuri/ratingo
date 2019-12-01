printf "\n\n\t\t\tRATINGO Product Rating Service\n\n"

#request to get Token
printf "\n\nrequest to get Insert New Rating\n"
curl -X POST \
    'https://ratingo.herokuapp.com/newRating'\
    -H "Content-Type: application/json"\
    --data '{  "uid":"674jd", "rating":4, "comment":"very good", "pid": "1"}' \


#-------------------request to get Ratings for Catalogue page with avg Ratings and no of ratings for products------------------------#
printf "\n\n-------------------request to get Ratings for Catalogue page with avg Ratings and no of ratings for products------------------------"
#request with all correct details
printf "\n\nrequest with all correct details\n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=1&limit=5' \
  -H 'Cache-Control: no-cache' \

#request with wrong data
printf "\n\nrequest with wrong Params\n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=100&limit=5' \
  -H 'Cache-Control: no-cache' \

#request with missing data
printf "\n\nrequest with missing data\n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=100' \
  -H 'Cache-Control: no-cache' \



#-------------------request to get ratings for a specific product for the product page------------------------#
printf "\n\n-------------------request to get ratings for a specific product for the product page------------------------"
#request with everything correct 
printf "\n\nrequest with everything correct \n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=1&limit=5&pid=2' \
  -H 'Cache-Control: no-cache' \
#request with wrong input
printf "\n\nrequest with wrong input\n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=100&limit=5&pid=2' \
  -H 'token:'"$token" \
  -H 'Cache-Control: no-cache' \

#request with wrong input
printf "\n\nrequest with wrong input\n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=100&limit=5&pid=28989' \
  -H 'token:'"$token" \
  -H 'Cache-Control: no-cache' \

#request with missing  input
printf "\n\nrequest with missing input\n"
curl -X GET \
  'https://ratingo.herokuapp.com/getRating?offset=100&limit=5' \
  -H 'token:'"$token" \
  -H 'Cache-Control: no-cache' \