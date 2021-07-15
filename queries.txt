USE friendshipdb;

-- After adding users to the database and creating some relationships, your results should look like below:

-- INSERTING USERS INTO USER TABLE
-- Query: Create 6 new users

-- user 1
-- INSERT INTO users (first_name, last_name) 
-- VALUES('Amy', 'Giver'); 

-- user 2
-- INSERT INTO users (first_name, last_name) 
-- VALUES('Eli', 'Byers'); 

-- user 3
-- INSERT INTO users (first_name, last_name) 
-- VALUES('Marky', 'Mark'); 

-- user 4
-- INSERT INTO users (first_name, last_name) 
-- VALUES('Big', 'Bird'); 

-- user 5
-- INSERT INTO users (first_name, last_name) 
-- VALUES('Kermit', 'The Frog'); 

-- INSERTING FRIENDSHIPS INTO FRIENDSHIP TABLE

-- amy to eli
-- INSERT INTO friendships (user_id, user_id1) 
-- VALUES('1', '2'); 

-- amy to big bird
-- INSERT INTO friendships (user_id, user_id1) 
-- VALUES('1', '4'); 

-- amy to kermit
-- INSERT INTO friendships (user_id, user_id1) 
-- VALUES('1', '5'); 

-- eli to kermit
-- INSERT INTO friendships (user_id, user_id1) 
-- VALUES('2', '5'); 

-- eli to marky
-- INSERT INTO friendships (user_id, user_id1) 
-- VALUES('2', '3'); 

-- marky to big bird
-- INSERT INTO friendships (user_id, user_id1) 
-- VALUES('3', '4'); 

-- Your actual query will look something similar to this:
-- Query: Display the relationships create as shown in the above image
SELECT * FROM users 
JOIN friendships ON users.id = friendships.user_id  
LEFT JOIN users as user2 ON friendships.user_id1 = user2.id;

-- NINJA Query: Return all users who are friends with the first user, make sure their names are displayed in results.
SELECT * FROM users 
JOIN friendships ON users.id = friendships.user_id  
LEFT JOIN users as user2 ON friendships.user_id1 = user2.id
WHERE users.id = 1;

-- NINJA Query: Return the count of all friendships
-- SELECT COUNT(friendships.id)
-- FROM users
-- JOIN friendships ON users.id = friendships.users_id
-- GROUP BY friendships.id;






























