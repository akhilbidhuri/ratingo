import psycopg2
import uuid, random

r = {1:"very bad, worst experience, dont buy it ever",1.5:"bad big mistake purchasing it.", 2:"bad not below average", 2.5:"average product not that good", 3:"ok product not very good", 3.5:"above average can be better", 4:"Good product can go for it, but not excellent", 4.5:"Very good product i recommend it", 5:"Excellent product just go for it"}
try:
    connection = psycopg2.connect(  user="abidhuri",
                                    host="127.0.0.1",
                                    port="5432",
                                    database="ratingservice")
    cursor = connection.cursor()

    postgres_insert_query = """ INSERT INTO ratings (rid, uid, rating, comment, pid) VALUES (%s,%s,%s, %s, %s)"""
    n = 0
    for i in range(1,101):
        for j in range(1, 21):
            rating = random.choice(list(r.keys()))
            record_to_insert = (str(n) + str(uuid.uuid1())[:4], str(j) + str(uuid.uuid1())[:2], rating, r[rating], str(i))
            cursor.execute(postgres_insert_query, record_to_insert)
            n = n + 1
            connection.commit()
    
    count = cursor.rowcount
    print (count, "Record inserted successfully into ratings table")

except (Exception, psycopg2.Error) as error :
    if(connection):
        print("Failed to insert record into ratings table", error)