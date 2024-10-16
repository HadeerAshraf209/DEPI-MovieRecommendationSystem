-- Define primary keys
ALTER TABLE ratings
ADD CONSTRAINT PK_ratings PRIMARY KEY (userId, movieId);

ALTER TABLE movies
ADD CONSTRAINT PK_movies PRIMARY KEY (movieId);

ALTER TABLE DimUsers
ADD CONSTRAINT PK_Users PRIMARY KEY (User_ID);

-- Add Foreign Key from Ratings to Movies
ALTER TABLE Ratings
ADD CONSTRAINT FK_Ratings_MovieId FOREIGN KEY (movieId) REFERENCES movies(movieId);

-- Add Foreign Key from Ratings to Users
ALTER TABLE Ratings
ADD CONSTRAINT FK_Ratings_UserId FOREIGN KEY (userId) REFERENCES DimUsers(User_ID);
-----Average Ratings per Movie Query
SELECT m.title, 
       AVG(r.rating) AS avg_rating
FROM Ratings r
JOIN Movies m ON r.movieId = m.movieId
GROUP BY m.title;
-----User Ratings by Subscription Type Query
SELECT u.User_ID, 
       u.subscription_type, 
       COUNT(r.rating) AS total_ratings
FROM DimUsers u
JOIN Ratings r ON u.User_ID = r.userId
GROUP BY u.User_ID, u.subscription_type;
