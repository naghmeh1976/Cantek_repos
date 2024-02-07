--create Book_Authors table 
		
drop table if exists Book_Authors cascade;
create table Book_Authors
             (
			 Author_ID serial primary Key not null,
		
			 Author_Name varchar(50) not null
			 )

--insert value into Book_Authors

insert into Book_Authors (Author_Name)
     values ('Migule de Carvantes'),
	        ( 'Lewis Carroll'),
			( 'Mark Twain'),
			( 'Robert Louis Stevenson'),
			( 'Jane Austen'),
			( 'Emily Bronte'),
			( 'Charlotte Bronte'),
			( 'Herman Melville'),
			( 'Nathaniel Hawthorne'),
			( 'Jonathan Swift'),
			('John Bunyan'),
			( 'Charles Dickens'),
			('Louisa May Alcott'),
			( 'J.R.R. Tolkien'),
			('Mary Shelley'),
			( 'Harriet Beecher Stowe'),
			( 'Fyodor Dostoyevsky'),
			( 'Gustave Flaubert'),
			( 'Bram Stoker'),
			( 'Alexandre Dumas'),
			( 'Aldous Huxley'),
			( 'Leo Tolstoy'),
			( 'Harper Lee'),
			( 'L. Frank Baum'),
			( 'Victor Hugo'),
			( 'Frances Hodgson Burnett'),
			( 'George Orwell'),
			( 'F. Scott Fitzgerald'),
			('Antoine de Saint-Exupéry'),
			( 'Jack London'),
			( 'Jules Verne'),
			( 'Kenneth Grahame'),
			( 'Oscar Wilde'),
			( 'John Steinbeck'),
			( 'James Fenimore Cooper'),
			( 'Thomas Hardy'),
			( 'J.K. Rowling'),
			('Johanna Spyri'),
			( 'James Joyce'),
			( 'Arthur Conan Doyle'),
			( 'Ernest Hemingway'),
			('Agatha Christie'),
			( 'william shakespeare');
			
select*from Book_Authors 


--create books table

drop table if exists Books CASCADE;
create table Books(
	Book_ID serial PRIMARY KEY,
	Book_Title varchar(100) not null,
	Author_ID int REFERENCES Book_Authors,
	Publisher_Name varchar(100)not null
);

--insert valye in books table

INSERT INTO Books(Book_Title,Author_id,Publisher_Name) 
	VALUES ('Don Quixote',1,'Dover Publications'),
		('Alice''s adventures in wonderland',2,'Palazzo Editions Ltd'),
		('Adventures of Huckleberry Finn',3,'Norton'),
		('The adventures of Tom Sawyer',3,'Sterling'),
		('Treasure Island',4,'Scribner'),
		('Pride and prejudice',5,'Modern Library'),
		('Wuthering Heights',6,'Penguin Books'),
		('Jane Eyre',7,'Knopf : Distributed by Random House'),
		('Moby Dick',8,'Reader''s Digest Association, Inc.'),
		('The scarlet letter ',9,'Bedford Books of St. Martin''s Press'),
		('Gulliver''s travels',10,'Knopf : Distributed by Random House'),
		('The pilgrim''s progress from this world to that which is to come',11,'Clarendon Press'),
		('A Christmas carol',12,'HarperCollins Children''s Books'),
		('Charles Dickens''s David Copperfield',12,'Chelsea House Publishers'),
		('A tale of two cities',12,'Knopf : Distributed by Random House'),
		('Little women, or, Meg, Jo, Beth, and Amy',13,'Little, Brown and Company'),
		('Great expectations',12,'Alfred A. Knopf'),
		('The Hobbit, or, There and back again',14,'HarperCollinsPublishers'),
		('Frankenstein, or, The modern Prometheus',15,'University of California Press'),
		('Oliver Twist',12,'Knopf : Distributed by Random House'),
		('Uncle Tom''s Cabin',16,'A.A. Knopf'),
		('Crime and punishment',17,'Modern Library'),
		('Madame Bovary',18,'Bantam Books'),
		('The return of the king : being the third part of The lord of the rings',14,'Houghton Mifflin Co.'),
		('The new annotated Dracula',19,'W.W. Norton & Co.'),
		('The three musketeers',20,'Collector''s Library'),
		('rave new world',21,'Harper Perennial Modern Classics'),
		('War and peace',22,'The Modern Library'),
		('To kill a mockingbird',23,'Lippincott'),
		('The Wizard of Oz',24,'Holt'),
		('Les misérables',25,'The Modern Library'),
		('The secret garden',26,'Harper Collins'),
		('Animal farm',27,'Harcourt, Brace and Company'),
		('The great Gatsby',28,'Scribner'),
		('The little princ',29,'Harcourt'),
		('The call of the wild',30,'Baronet Books'),
		('20,000 leagues under the sea',31,'Sterling Children''s Books, an imprint of Sterling Publishing Co.'),
		('Anna Karenina',22,'Penguin Books'),
		('The wind in the willows',32,'Ariel Books : Holt, Rinehart and Winston'),
		('The picture of Dorian Gray',33,'Belknap Press of Harvard University Press'),
		('The grapes of wrath',34,'Penguin Books'),
		('Sense and sensibility',5,'Alfred A. Knopf'),
		('The last of the Mohicans',35,'Penguin Books'),
		('Tess of the D''Urbervilles',36,'Penguin Books'),
		('Harry Potter and the sorcerer''s stone',37,'Scholastic Inc.'),
		('Heidi',38,'North-South Books'),
		('Ulysses',39,'Modern Library'),
		('The complete Sherlock Holmes',40,'Doubleday & Company, Inc.'),
		('The Count of Monte Cristo',20,'Penguin Books'),
		('The old man and the sea',41,'Charles Scribner''s Sons'),
		('Murder on the Orient Express',42,'Bantam BooksToronto1983'),
		('Agatha Christie an autobiography',42,'New Star Bei jing2017'),
		('Agatha Christie Marple. Series 5. Vol. 1, The mirror crack',42,'Acorn Media'),
		('The ABC murders',42,'Anuman InteractiveMontreuil, France2016'),
		('Hercule Poirot, Book 1: The Mysterious Affair at Styles (Unabridged)',42,'Naxos Digital Services US Inc'),
		('Romeo and Juliet',43,'Cambridge University Press'),
		('Hamlet',43,'Barron Educational Series'),
		('Macbeth',43,'Armin Lear Press'),
		('A Midsummer Nights Dream',43,'Prestwick House, Inc'),
		('Othello',43,'Simon & Schuster; 1st edition');
		;
		 select * from Books;


--Create TABLE Book_Copies TABLE

drop table if EXISTS Book_Copies cascade

Create TABLE Book_Copies(
    Copies_id serial primary key,
    book_id int references Book not null, 
    branch_id INT  ,
    No_of_copies INT NOT NULL
)

--INSERT value INTO Book_Copies table

INSERT INTO Book_Copies (book_id, branch_id, No_of_copies)
    VALUES	(49,0136, 3),
			(93,0136, 4),
			(8,0418, 5),
			(60,0136, 4),
			(8,0136, 6),
			(2,0418, 6),
			(27,0429, 7),
			(22,0136, 7),
			(56,0418, 5),
			(15,0816, 5),
			(7,0639, 6),
			(46,0136, 4),
			(47,0136, 3),
			(11,0976, 8),
			(46,0417, 3),
			(56,0132, 6),
			(56,0136, 3),
			(35,0417, 6),
			(48,0429, 8),
			(19,0132, 7),
			(9,0976, 9),
			(10,0436, 7),
			(30,0424, 5),
			(39,0136, 4),
			(4,0429, 6),
			(5,0919, 4),
			(6,0926, 7),
			(13,0976, 7),
			(14,0429, 5),
			(53,0429, 3),
			(16,0429, 10),
			(17,0132, 4),
			(18,0112, 5),
			(19,0132, 8),
			(20,0976, 9),
			(55,0926, 9),
			(24,0418, 7),
			(52,0976, 9),
			(26,0132, 8),
			(27,0918, 7),
			(28,0429, 9),
			(51,0926, 10),
			(30,0436, 8),
			(54,0976, 7),
			(32,0218, 8),
			(33,0429, 9),
			(34,0218, 6),
			(35,0926, 8),
			(45,0136, 4),
			(46,0429, 9);

select * from Book_Copies




--Create  Library_Branches table

drop table if EXISTS Library_Branches
Create table Library_Branches(
	Branch_ID int ,
	Branch_Name varchar(20),
	Branch_Address varchar(90)
);

--Insert value into Library_Branches table

Insert into Library_Branches
  VALUES  	('0136', 'Agincourt', '155 Bonis Avenue, Toronto, ON  M1T 3W6'),
 	 	    ('0429', 'Jones',  '118 Jones Avenue, Toronto, ON  M4M 2Z9'),
 	 	    ('0976', 'Humberwood','850 Humberwood Boulevard, Toronto, ON  M9W 7A6'),
 	 	    ('0926', 'Humber Summit','2990 Islington Avenue,  Toronto, ON  M9L 2K6'),
 	 	    ('0132', 'Highland Creek','3550 Ellesmere Road, Toronto, ON  M1C 3Z2'),
 	 	    ('0218', 'Hillcrest','5801 Leslie Street, Toronto, ON  M2H 1J8'),
 	 	    ('0418', 'Leaside','165 McRae Drive, Toronto, ON  M4G 1S8'),
 	 	    ('0816', 'Long Branch','3500 Lake Shore Boulevard West, Toronto, ON  M8W 1N6'),
 	 	    ('0429', 'Main Street','137 Main Street, Toronto, ON  M4E 2V9'),
 	 	    ('0639', 'Swansea Memorial','95 Lavinia Avenue, Toronto, ON  M6S 3H9'),
 	 	    ('0417', 'Thorncliffe','48 Thorncliffe Park Drive, Toronto, ON  M4H 1J7'),
 	 	    ('0436', 'Todmorden Room','1081 Pape Avenue, Toronto, ON  M4K 3W6'),
 	 	    ('0424', 'Victoria Village','184 Sloane Avenue, Toronto, ON  M4A 2C4'),
 	 	    ('0919', 'Weston','2 King Street, Toronto, ON  M9N 1K9'),
 	 	    ('0112', 'Woodside Square','1571 Sandhurst Circle, Toronto, ON  M1V 1V2'),
 	 	    ('0918', 'Woodview Park','16 Bradstock Road, Toronto, ON  M9M 1M8')


select * from Library_Branches 



--Create  Books_Borrowers table
drop table if EXISTS Books_Borrowers cascade

Create table Books_Borrowers(
	Card_No int ,
	Borrower_Name varchar(60),
	Borrower_Address varchar(60),
	Borrower_Phone varchar(15)

);

--Insert value into Books_Borrowers table

Insert into Books_Borrowers
  VALUES  	(143090800, 'Ray Buck', '1216 - 1 Fountainhead Road, North York, ON M3J 1K6', '437-800-6565'),
          	(143090801, 'Linders Peters', '65 Chipwood Crescent, North York, ON M2J 3X6', '647-887-1234'),
		    (143090802, 'Kate Perry', '10 San Romanoway, North York, ON M3N 2Y2', '647-102-1419'),
		    (143090803, 'Paul Lin', '50 Norfinch Dr., North York, ON M3N 1X1', '647-444-1290'),
		    (143090804, 'Linda Hill', '30 Freshway Dr., Concord, ON L4K 1A7', '647-420-1137'),
		    (143090805, 'Paula Hamilton', '4700 Keele St., Toronto, ON M3J 1P0', '647-480-1077'),
		    (143090806, 'Palma Jones', '540 King St W., Toronto, ON M5V 1M3', '437-480-1041'),
		    (143090807, 'Williams Park', '321 Bloor St W., Toronto, ON M5S 1S5', '647-483-1011'),
		    (143090808, 'Roland Ngin', '211 Central Park Dr., Brampton, ON L6S 3L6', '647-400-1234'),
		    (143090809, 'Kate Hens', '1346 Danforth Rd., Scarborough, ON M1J 0A9', '647-556-7512'),
	    	(143090810, 'Kevin Duncan', '2267 Islington Ave., Etobicoke, ON M9W 3W6', '647-556-7712'),
    		(143090811, 'Caroline Angy', '1090 Don Mills Rd., North York, ON M3C 3R6', '647-506-5512'),
	     	(143090812, 'Andy Ray', '778 Broadview Ave., Toronto, ON M4K 2P7', '647-806-0062'),
		    (143090813, 'Hui Hoo', '6540 Falconer Dr., Mississauga, ON L5N 1M1', '437-856-1146'),
		    (143090814, 'Ammet Pri', '1020 Central Park Dr., Brampton, ON L6S 3J5', '647-856-1006'),
		    (143090815, 'Linda Oxlade', '678 Queen St EToronto, ON M4M 1G8', '437-998-1346'),
	    	(143090816, 'Curtis Anderson', '184 Leyton Ave., Scarborough, ON M1L 3V5', '647-009-2217'),
		    (143090817, 'Collins Holding', '910 High St., Peterborough, ON K9J 5R2', '647-384-5187'),
		    (143090818, 'Festus Holland', '320 Richmond St E., Toronto, ON M5A 2R3', '437-333-1215'),
		    (143090819, 'Hamstrong Petreson', '7234 Delmonte Crescent, Mississauga, ON L4T 3L3', '437-376-1015'),
		    (143090820, 'Amsta Hull', '651 Farmstead Dr., Milton, ON L9T 7P4', '647-180-8877'),
		    (143090821, 'Terry Gerard', '5418 Yonge St., North York, ON M2N 6X4', '647-777-8877'),
		    (143090822, 'Gary Neville', '1123 Leslie St., North York, ON M3C 2K5', '437-997-8877'),
		    (143090823, 'Steven Gerard', '1123 Leslie St., North York, ON M3C 2K5', '437-237-8877'),
		    (143090824, 'Dawin Nunez', '5000 Yonge St., North York, ON M2N 7E9', '647-100-1210'),
		    (143090825, 'Mohammed Ali', '1280 Finch Ave W., Toronto, ON M3J 3K6', '647-439-1349'),
		    (143090826, 'Robertson Carlos', '1280 Finch Ave W., Toronto, ON M3J 3K6', '647-400-1349'),
		    (143090827, 'Henderson Jordan', '1300 Finch Ave W., North York, ON M3J 3K2', '647-900-1318'),
		    (143090828, 'Patrick Doyle', '678 Sammon Ave., East York, ON M4C 2E2', '437-900-6518'),
		    (143090829, 'Patricia Campbell', '7768 Kennedy Rd., Markham, ON L3R 5K1', '437-900-6318'),
		    (143090830, 'Terry Gerard', '5612 Winston Churchill Blvd., Erin, ON N0B 1T0', '437-960-6518'),
		    (143090831, 'Victor Anderson', '893 Kennedy Rd., Scarborough, ON M1K 2G2', '437-778-0018'),
		    (143090832, 'Joseph Herold', '200 Consumers Rd., North York, ON M2J 4R4', '647-118-0120'),
		    (143090833, 'Pam Lin', '1899 Brock Rd., Pickering, ON L1V 6E4', '437-788-0660'),
		    (143090834, 'Mundi Ampiana', '1290 Rathburn Rd., WMississauga, ON L5C 4E4', '437-218-0680'),
		    (143090835, 'Collins Marina', '567 Kingston Rd., Toronto, ON M4E 1R2', '647-667-1390'),
		    (143090836, 'Marvis Ellin', '568 Lawrence Ave W., North York, ON M6A 1A7', '647-123-8716'),
	    	(143090837, 'Borris John', '411 Eglinton Ave E., Toronto, ON M4P 1M7', '647-673-8006'),
		    (143090838, 'Shola Ahmed', '431 McCowan Rd., Scarborough, ON M1J 1J1', '647-113-1236'),
		    (143090839, 'Pamela Lee', '538 Scotch Line Rd., Elmira, ON N3B 2Z2', '647-653-9951'),
		    (143090840, 'Jim Parlour', '127 Ava Rd., York, ON M6C 1W2', '647-800-4311'),
		    (143090841, 'Armanda Williams', '672 Dupont St., Toronto, ON M6G 1Z5', '647-612-7340'),
		    (143090842, 'Philip Martins', '7813 Mulhern St., Niagara Falls, ON L2H 1B7', '647-314-1240'),
		    (143090843, 'Pius Azedu', '7865 Lundys Ln., Niagara Falls, ON L2H 1H3', '647-675-2340'),
		    (143090845, 'Jewel Morrison', '1200 Bay St., Toronto, ON M4W 1J2', '437-005-1111'),
		    (143090846, 'Paul Hart', '1900 Bayview Ave., North York, ON M4G 0A6', '437-115-1781'),
		    (143090847, 'Felix Hall', '1400 Dixie Rd., Mississauga, ON L5E 3E1', '647-136-7834'),
		    (143090848, 'Denis Haaland', '1785 Baseline Rd., Keswick, ON L4P 3E9', '647-807-2020'),
		    (143090849, 'Jurgen Angels', '350 Red Maple Rd., Richmond Hill, ON L4C 0T5', '437-341-1693'),
		    (143090850, 'Bukayo Saka', '1000 Murray Ross PkwyNorth York, ON M3J 2P3', '437-006-1982')



SELECT * from Books_Borrowers 


--create table Book_Loans table

drop table if exists Book_loans

create table Book_Loans 
	(Book_id int,
	Loans_id int  ,
	Branch_id int,
	Card_no int,
	Date_out date,
	Date_in date
); 

--insert value into Book_Loans table
 insert into Book_Loans  
	(Book_id,Loans_id, Branch_id,Card_no,Date_out, Date_in) values
	(14,1,0136, 143090801, '2022-12-30' , '2023-01-30' ),
	(55, 50, 0429, 143090801, '2022-11-10' , '2022-12-15'),
	(40, 49, 0429, 143090801, '2022-10-30' , '2022-11-30' ),
	(4, 48, 0136, 143090837, '2022-11-05' , '2023-01-30' ),
	(5, 47, 0926, 143090820, '2023-01-03' , '2023-02-10' ),
	(6, 46, 0429, 143090801, '2023-01-04' , '2023-01-18' ),
	(7, 45, 0136, 143090837, '2023-01-03' , '2023-01-22' ),
	(8, 44, 0418, 143090840, '2023-01-10' , '2023-01-30' ),
	(9, 43, 0816, 143090849, '2023-01-09' , '2023-02-05' ),
	(12, 42, 0429, 143090822,'2023-01-08' , '2023-02-09' ),
	(11, 41, 0639, 143090840,'2023-01-09' , '2014-07-30' ),
	(12, 40, 0417, 143090807, '2023-01-07' , '2023-01-18' ),
	(33, 39, 0429, 143090839, '2023-01-08' , '2023-02-15' ),
	(14, 38, 0424, 143090827, '2023-01-11' , '2023-01-29' ),
	(15, 37, 0919, 143090827, '2023-01-22' , '2023-01-28' ),
	(16, 36, 0112, 143090840, '2023-01-16' , '2023-02-12' ),
	(17, 35, 0918, 143090842, '2022-12-30' , '2023-01-30'),
	(18, 34, 0436, 143090821, '2022-11-10' , '2022-12-15' ),
	(29, 33, 0429, 143090805, '2022-10-30' , '2022-11-30' ),
	(20, 32, 0429, 143090805, '2022-11-05' , '2023-01-30' ),
	(21, 31, 0926, 143090840, '2023-01-03' , '2023-02-10'  ),
	(22, 30, 0132, 143090821, '2023-01-19' , '2023-01-30' ),
	(23, 29, 0429, 143090822, '2023-01-03' , '2023-01-22' ),
	(24, 28, 0136, 143090821, '2023-01-09' , '2023-02-05' ),
	(25, 27, 0816, 143090849, '2023-01-08' , '2023-02-09' ),
	(26, 26, 0429, 143090839, '2023-01-07' , '2023-01-28' ),
	(27, 25, 0639, 143090840, '2023-01-18' , '2023-02-15' ),
	(28, 24, 0417, 143090840, '2023-01-17' , '2023-01-29' ),
	(29, 23, 0417, 143090832, '2023-01-12' , '2023-01-20' ),
	(30, 22, 0436, 143090832, '2023-01-12' , '2023-01-28' ),
	(31, 21, 0436, 143090832, '2022-12-30' , '2023-01-30' ),
	(32, 20, 0424, 143090828, '2022-12-30' , '2023-01-30' ),
	(33, 19, 0424, 143090828, '2022-11-10' , '2022-12-15' ),
	(34, 18, 0436, 143090821, '2022-10-30' , '2022-11-30' ),
	(12, 17, 0919, 143090827, '2022-11-05' , '2023-01-30' ),
	(36, 16, 0919, 143090840, '2023-01-03' , '2023-02-10' ),
	(14, 15, 0919, 143090827, '2023-01-04' , '2023-01-20' ),
	(55, 14, 0919, 143090827, '2023-01-03' , '2023-01-22' ),
	(14, 13, 0112, 143090837, '2023-01-10' , '2023-01-30' ),
	(40, 12, 0112, 143090837, '2023-01-10' , '2023-01-30' ),
	(41, 11, 0112, 143090840, '2023-01-09' , '2023-02-05' ),
	(42, 10, 0112, 143090821, '2023-01-08' , '2023-02-09' ),
	(43, 9, 0918, 143090842, '2023-01-17' , '2023-01-28'  ),
	(44, 8, 0918, 143090826, '2023-01-08' , '2023-02-15' ),
	(45, 7, 0918, 143090826,  '2023-01-13' , '2023-02-20' ),
	(46, 6, 0918, 143090826, '2022-11-10' , '2022-12-15' ),
	(47, 5, 0429, 143090839, '2023-01-08' , '2023-02-15' ),
	(48, 4, 0429, 143090839, '2023-01-16' , '2023-01-20' ),
	(49, 3, 0976, 143090816, '2023-01-08' , '2023-02-09' ),
	(50, 2, 0976, 143090816, '2023-01-10' , '2023-01-17' );
 

select *from Book_Loans 




--A view to show all the books available by the author William Shakespeare.

create view william as 
select books.Book_ID, books.Book_Title , Book_Authors.Author_Name from 
	books join Book_Authors
		on Books.Author_ID=Book_Authors.Author_ID
			where Book_Authors.Author_Name ilike  'William Shakespeare'



--A view to see how many copies of the book titled “Romeo and Juliet" are owned by each library branch?

create view romeo as 
select Books.Book_Title, Library_Branches.Branch_Name, Book_Copies.No_of_copies from 
	Books  join Book_Copies 
		on Books.Book_ID=Book_Copies.book_id
			join library_branches on Book_Copies.branch_id=Library_Branches.Branch_ID
				where book_title ilike ('Romeo and Juliet');



--Retrieving the names, addresses, and number of books checked out for all borrowers who have more than four books checked out

select borrower_Name, borrower_Address, COUNT(BORROWER_NAME) AS NO_OF_BOOK_BORROWED
 FROM Books_Borrowers join Book_Loans
    on Books_Borrowers.Card_No = Book_Loans.Card_no
    GROUP by Borrower_Name, Borrower_Address
    HAVING (count(Borrower_Name)) > 4


	

--A view to see all the details about the books, their publisher address and publisher phone which have been borrowed in the past 2 days.

create view books2days as 	
select Books.Book_ID,Books.Book_Title, Books.Publisher_Name, Publisher.P_Address , Publisher.P_Phone ,Book_Loans.Date_out from 
	 Books  join Publisher 
		on Books.Publisher_Name=Publisher.P_Name
			join Book_Loans on Book_Loans.Book_id=Books.Book_ID
					where DATEDIFF(day,date_out,getdate()) <= 2 and  DATEDIFF(day,date_out,getdate()) >= 0;
					

--A view to see the percentage of total books in each branch that have been borrowed.


create view PERCENTAGE_of_books as

SELECT Book_Copies.branch_id,count(Book_Loans.Loans_id) * 100 / sum(Book_Copies.No_of_copies)  as PERCENTAGE_of_books_borrowed
	from Book_copies 
	inner join book_loans 
	on Book_Copies.branch_id=Book_Loans.Branch_id
	group by Book_Copies.branch_id;



--Showing all the books and borrowers information borrowed from Branch number 417	

select bl.Branch_id,b.Book_Title,b.Publisher_Name,bl.Loans_id,bb.Borrower_Name,bb.Borrower_Address,bb.Borrower_Phone,bl.Date_out
	from Book_Loans bl join Books_Borrowers bb
		on bl.Card_no=bb.Card_No
			join Books b
				on b.Book_ID=bl.Book_id
				where bl.Branch_id=417
		order by bl.Date_out desc,b.Book_Title asc





