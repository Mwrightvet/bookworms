 
# Team Bookworms

## Proposal:  Books & Ratings Review Database
Team Members: 
* Ilya Fedotov, Shazeeye, Melissa Wright (Book Worms)
* Our data sources
#### Book Rating BY ISBN: https://data.world/divyanshj/users-books-dataset  (file: BX-Book Ratings dataset)
#### Book Listing by ISBN:https://github.com/zygmuntz/goodbooks-10k  (file: Books.csv)

### Our Reason Why: 

We were interested in learning about how some of our favorite books were rated because we are bookworms and we wanted to see what some of the best rated books lists were and we also wanted to see if our favorite books were ranked well. 


* An outline of your road map and individual tasks 
* Ilya Shazeeye and Melissa - Dataset Searching 
* Shazeeye - Testing for Merge-ability (Merging on ISBN)
* Melissa - Making the SQL Tables 
* Ilya - Extract
* Shazee - Transform 
* Melissa - Load 

### Keep in mind that we only had a few days to work on this!

* Repo for Team: https://github.com/Mwrightvet/bookworms

### Included: 
* notebook file bookworm_team_etl.ipynb
* Sequel Schema schema_bookworm.sql
* Resources Folder with 2 csv files: Book-Ratings.csv ; Books.csv

## Write up 

### Datasets:
We searched for two datasets that would include a list of books and a dataset of book ratings. In order to correlate them we had to find a shared element, and in this case it was ISBN (International Standard Book Number). We used the 10 digit and the the International or 13 digit ISBN for this study as that was the common ID between the two datasets. We created the database bookworm_db ( @localhost:5432/bookworm_db ) and a schema with tables to hold the data by bbooks_ratings" containing  "user_id" “isbn"  "book_rating"  "book_title"  and   "book_author". The most challenging part of getting the datasets was ensuring the datasets shared an ID that could be used to join the tables.

### Extracting: 
#### some challenges we faced below: 
- separating the Ratings file by ; as it was one csv column
- cleaning the data file as it has about 10 rows of corrupt data (not consistent with other rows) so it would upload to jupyter notebook

### Transforming:
#### some challenges were in setting up the two dataframes and making sure we knew where to join them
- doing an inner join so some data was lost given Books.csv had about 10,000 rows and Ratings.csv had 1,048,570 rows
- dropping duplicates
- understanding the data types to be able to transform them
- changing the encoding language to latin1
### Loading Data: 
We didn’t have any challenges in connecting and loading the datasets to PGAdmin to create an SQL database that could be used to do further manipulation like we found that 456  unique ISBNs received ratings from 9300 books when we merged the tables. Final table was the “books_ratings” table that included user-id and book rating from the ratings csv  and the book title, author and isbn from the book csv. Database is called bookworm_db.



Image below of a sample query and database
 # Reviewing the Database 
![Alt Text](https://github.com/Mwrightvet/bookworms/blob/master/img_db.png)

# Reviewing the Total number of books

![Alt Text](https://github.com/Mwrightvet/bookworms/blob/master/total_distinct_books.png)


 # Reviewing the Total Number of Ratings

![Alt Text](https://github.com/Mwrightvet/bookworms/blob/master/ratings_total_image.png)

 # Reviewing the Top Rated Books by count of ratings

![Alt Text](https://github.com/Mwrightvet/bookworms/blob/master/top_rated_by_count.png)

### Conclusion: 
Top 10 Rated Books of all time (according to this imbd dataset)

1. The Lost Boy by Dave Pelzer 
2.  The Cat in the Hat by Dr. Seus
3.  Bag of Bones by Stephen King
4.  Stones from the River by Ursula Hegi
5.  The Color of Water: A Black Man's Trubute to His White Mother
6.  Bridget Jone's Diary by Helen Fielding 
7.  The Firm by John Grisham
8.  A Child Called "It" by Dave Pelzer 
9.  The No. 1 Ladies' Detective Agency by Alexander McCall Smith 
10.  The Lost Boy by Dave Pelzer 

### Summary and Analysis: 

