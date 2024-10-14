# Movie Recommendation System

This project aims to design and implement a personalized movie recommendation system based on machine learning techniques, leveraging collaborative filtering and data analysis. The system predicts user preferences and recommends movies accordingly.

## Team Members
- [@Mariam Mahmoud](https://github.com/mariam573)
- [@Hanin Hossam](https://github.com/Haninhossam)
- [@Hadeer Ashraf](https://github.com/HadeerAshraf209)
- [@Perihane Tarek](https://github.com/CyPerry)

## Supervised By
- Eng. [@Ahmed Essam Azab](https://github.com/ahmedazab1235)

## Overview
The Netflix recommendation system is designed to provide users with personalized movie suggestions based on their viewing history and ratings. By utilizing collaborative filtering, the system enhances user engagement by offering a tailored experience. It integrates Natural Language Processing (NLP), machine learning, and data science to understand user preferences and predict ratings.

## 1. Data Management and ETL Process

### 1.1 Data Warehouse and Schema Design
The project employs a structured data warehouse in SQL Server, organized using a star schema with fact and dimension tables for efficient querying and analytics.

- **Fact Table**: `FactRatings` - Contains the ratings provided by users for different movies.
- **Dimension Tables**:
  - `DimUsers`: Stores user details like demographic data.
  - `DimMovies`: Information about movies such as titles, genres, and release dates.

### 1.2 Data Collection and Preprocessing
The dataset includes user ratings for thousands of movies. The data was extracted from CSV files, transformed into a structured format, and loaded into the SQL database.

### 1.3 ETL Process
Data was extracted from CSV files, transformed using data cleaning techniques, and then loaded into the appropriate SQL tables using SQL scripts.

## 2. Machine Learning Model

### 2.1 Model Selection
The system utilizes collaborative filtering with matrix factorization to predict user preferences based on movie ratings.

### 2.2 Training the Model
The model was trained using historical user ratings and a collaborative filtering approach to detect similarities between users and movies.

### 2.3 Model Architecture
- **Embedding Layers**: Convert user and movie IDs into vectors.
- **Interaction Layer**: Learns relationships between user and movie features through matrix factorization.
- **Output Layer**: Predicts movie ratings on a continuous scale.

### 2.4 Model Evaluation
The model's performance was evaluated using Mean Squared Error (MSE) and Root Mean Squared Error (RMSE).

## 3. Personalized Recommendations

### 3.1 How the Recommendation Works
- **User Input**: The system collects user ratings for a subset of movies.
- **Prediction**: It predicts ratings for movies the user hasn’t seen using collaborative filtering.
- **Recommendations**: Movies with the highest predicted ratings are recommended.

## 4. Deployment

### 4.1 Model Deployment Using Azure
The trained machine learning model was deployed on Azure using the Streamlit framework, allowing users to interact with the model through a user-friendly web interface.

### 4.2 User Interface Design
- **Input Field**: Users can enter their user ID.
- **Recommendation Button**: Triggers the model to fetch recommendations.
- **Output**: Displays the list of recommended movies.

## 5. Benefits for Users
- **Personalized Experience**: Tailored movie recommendations based on individual preferences.
- **Improved User Engagement**: Relevant recommendations encourage users to explore more content.
- **Continuous Improvement**: The model is fine-tuned with new data for better accuracy.

## 6. Implementation Steps
1. Data collection and preprocessing from CSV files.
2. Building and training the collaborative filtering model.
3. Evaluating the model using appropriate metrics.
4. Deploying the model using Streamlit on Azure.
5. Testing the deployment and making final adjustments.

## 7. Conclusion
The Netflix Movie Recommendation System combines machine learning and collaborative filtering to offer a personalized and dynamic user experience. It provides accurate recommendations, boosting user engagement and satisfaction.
