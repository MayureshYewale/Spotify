CREATE DATABASE SPOTIFY;
USE SPOTIFY;
-- Creating Table Artists
Create Table Artists(
   artist_id Int Auto_Increment Primary Key,
   artist_name Varchar(20)
   );
   
   -- Creating Table Albums
   Create Table Albums(
   Album_id Int Auto_Increment Primary Key,
   Album_name Varchar(50),
   Artist_id Int,
   foreign Key (Artist_id) References Artists(artist_id)
   );
   
   -- Create Table Songs
   Create Table Songs(
   song_id Int Auto_increment Primary  Key,
   song_name Varchar(50),
   album_id Int,
   artist_id int,
    foreign Key (album_id) References  Albums(album_id),
    Foreign Key (artist_id) References Artists(artist_id)
    );
    
    -- Creating  Table Users
    Create Table Users(
    user_id int Auto_Increment Primary Key,
    name Varchar(20),
    email Varchar(50),
    password Varchar(8),
    date_of_birth Date
    );
    
    -- Creating Table Playlists
    create Table Playlists(
    playlist_id Int Auto_Increment Primary Key,
    playlist_name  varchar(60),
    user_id Int ,
    Foreign Key (user_id) References Users(user_id)
    );
    
    -- Creating Table User_Playlists_Songs
    Create Table User_Playlists_Songs(
    user_playlists_id Int Auto_Increment Primary Key,
    user_id Int,
    playlist_id Int ,
    song_id Int,
    Foreign Key (user_id) References Users(user_id),
    Foreign Key (playlist_id) References playlists(playlist_id),
    Foreign Key (song_id) References Songs(song_id)
    );
    
    insert into Artists values(1,'Arjit Singh');
    insert into artists(artist_name) values('Lata Mangeshkar'),
										   ('A.R.Rahman'),
                                           ('Neha Kakkar'),
                                           ('Kishor Kumar'),
                                           ('Ajay-Atul'),
                                           ('Shreya Ghoshal'),
                                           ('Udit Narayan'),
                                           ('Asha Bhosle'),
                                           ('Kumar Sonu'),
                                           ('Atif Aslam'),
                                           ('Alka Yagnik');
         select * from Artists;                                  
                                           

	insert into Albums values(1001,'Best of Arjit Singh',1);
    insert into Albums(album_name,artist_id) values('Golden hits of lata',2),
												   ('Top 20 of Lata Mangeshkar',2),
												   ('Classical  songs of Rahaman',3),
                                                   ('Neha Kakkar Hits',4),
                                                   ('Kishor Kumr classics',5),
                                                   ('Ajay- Atul hits',6),
                                                   ('Best of Shreya Ghoshal',7),
                                                   ('G.O.A.T. Udit Narayan',8),
                                                   ('Top songs of Asha Bhosle',9),
                                                   ('Top 25 of Kumar sonu',10),
                                                   ('Classic of Arjit Singh',1);
                                                   
	select * from Albums;
                                                   
                                         
	insert into Songs values(1,'Tum hi ho',1001,1);
    insert into Songs(song_name,album_id,artist_id) values('Agar tum Sath ho',1001,1),
												('Kabhi jo Badal Barse',1001,1),
                                                ('Lag ja Gale',1002,2),
                                                ('Tujhe dekha to ye jana',1002,2),
												('Ek pyaar ka naghma hai',1003,2),
                                                ('Jai ho',1004,3),
                                                ('Luka chuppi',1004,3),
                                                ('Mile ho Tum Hamko',1005,4),
                                                ('Kala Chasma',1005,4),
                                                ('Coca cola',1005,4),
                                                ('Roop Tera Mastana',1005,5),
                                                ('Bheegi Bheegi Raaton ne',1006,5),
                                                ('Gata Rahen Mera Dil',1006,5),
                                                ('Zingaat',1007,6),
                                                ('Apsara Ali',1007,6),
                                                ('Khel Mandala',1007,6);
                                                
                   insert into Songs(song_name,album_id,artist_id) values('Har Har Gange',1012,1);            
               select * from Songs;                    
                                   
                                   
                                   
                                   
insert into Users values(101,'Karan Singh','karansingh01@gmail.com','Karan123','1996-02-19');
insert into Users values(102,'Shweta Jadhav','shwetajadhav@gmail.com','shweta23','2002-10-22'),
						(103,'Nitin Prajapati','nitinprajapati01@gmail','nitin234','2001-03-11'),
						(104,'Devaki Baswat','dewakibaswat53@gmail.com','Dewaki53','2002-11-22'),
				        (105,'Gaurav Shinde','gauravshinde22@gmail.com','gaurav23','1998-06-14'),
					    (106,'Mukesh Sharma','shrmamukesh@gmail.com','sharma22','2000-12-23'),
						(107,'Khushi Gupta','khushigupta@gmail.com','khushi23','1997-12-25'),
						(108,'Javed sidhiqqui','javedsidhiqui22@gmail,com','javed21','2005-08-13'),
						(109,'Sultana Shaikh','sultanshaikh34@gmail.com','sultan11','2010-03-15'),
						(110,'Vishal Parihar','vishalsingh22@gmail,com','vishal64','2004-05-24');
				
                   select * from Users;     
                 
                         
                                              
                                              
                                              

insert into Playlists values(1,'My Favorite Songs',101),
				   (2,'Workout Songs',102),
				   (3,'Chill Vibes',101),
				   (4,'Road trp',103),
				   (5,'Study Playlist',105),
				   (6,'Party Hits',102),
				   (7,'Romantic Melodies',104),
				   (8,'Hindi Classics',101),
				   (9,'Special Anthems',106),
				   (10,'80s Songs',107),
				   (11,'90s Special Songs',105);
		select * from Playlists;
    
                                                   
                                                   
insert into user_playlists_songs(user_id,playlist_id,song_id) values(101,1,1),
																   (101,1,2),
                                                                   (101,3,3),
                                                                   (102,2,4),
                                                                   (103,4,5),
                                                                   (103,4,6),
                                                                   (104,5,7),
                                                                   (104,5,7),
                                                                   (105,5,8),
                                                                   (106,6,9),
                                                                   (107,7,11),
                                                                   (107,6,10),
                                                                   (108,9,13),
                                                                   (108,9,14),
                                                                   (109,9,15);
	select * from user_playlists_songs;
    
    
    SELECT * FROM SONGS;
    SELECT * FROM SONGS WHERE artist_id=1;
    delete from songs where song_id=19;
    
						
    
    
    
    
    -- Name the artist whose artist_id=4
    select * from Artists where artist_id=4;
    
    -- Give Artist name whose start from 'A'
    select * from Artists
    where artist_name like 'A%';
    
    -- giving artist of  whose song id=1
    select a.* from
    Artists a
    join Songs s 
    on a.artist_id=s.artist_id
    where song_id=5;
    
    select * from Songs;
     select * from User_Playlists_Songs;
    

    --  display the count of playlist_id=1 as total songs;
    SELECT COUNT(*) AS total_songs
    FROM User_Playlists_Songs
    WHERE playlist_id = 1;
    
    
    select * from user_playlists_songs;
    
    
 select * from artists;
 select * from albums;
 
 -- displaying the  album names from 1003 to 1007
 select Album_id,Album_name
 from  Albums
 where Album_id between 1003 and 1007;
 
 
 
 --  Find the album  names  which containing "HIts":
 select * from Albums
 where album_name like '%Hits%';
 
 
 -- Find the user who born after 2000-01-01
 select * from Users
 where date_of_birth >'2000-01-01';
 
 
 
 -- Returns the total  songs on each playlist
select playlist_id ,count(song_id) as total_songs
from user_playlists_songs
Group by playlist_id;

-- Update the password OF user_id = 101
update Users
 set password = '123KARAN' 
 where user_id = 101;
 select * from Users
 where user_id =101;
 
 
 select * from Playlists;
 
 -- insert a new playlist whose playlist_name='My Choice' and user_id=103
 insert into Playlists (playlist_name, user_id) values ('My Choice', 103);
 select * from Playlists 
 where  playlist_name='My Choice';




select * from Playlists;

--  find the songs within the 'Romantic Melodies'
select count(*) 
from User_Playlists_songs
where playlist_id=(select playlist_id from playlists where playlist_name='Romantic Melodies');

-- Query to display the position of gs in playlist_name as playlist_name1
select instr(playlist_name,'gs')  as Playlist_name1
from playlists
order by playlist_name1 desc;


-- Query to Display user name after 3 character
select substr(name,3) from Users;


--  This query will return a list of users and their  playlists
select u.name ,p.playlist_name
from users u
inner join playlists p
on u.user_id=p.user_id;


-- Query to  display a list of artists and their albums with songs
select a.artist_name,al.album_name,s.song_name
from Artists a
left join albums al
on a.artist_id=al.artist_id
left join songs s
on al.album_id=s.album_id;

-- Query to display playlist and all songs of user id is 101
select p.playlist_name,count(ups.song_id)
from playlists p
left join user_playlists_songs ups
on p.playlist_id=ups.playlist_id
where p.user_id=101
group by p.playlist_id;



-- Query to display  artists who have album
select * from artists
where artist_id in (select distinct artist_id from albums);


-- query to display name of song in 'Best of Arjit Singh'
select song_name
from songs
where album_id=(select album_id from albums where album_name='Best of Arjit Singh');

-- Query to Display  the user name and email who created 'Party Hits'

select name,email 
from users
where user_id=(select user_id from playlists where playlist_name='Party Hits');

-- 
select * from playlists;
select * from songs;



-- query to display name of songs in 'My favorite Songs' playlist
select song_name
from songs
where song_id in(select song_id from user_playlists_songs where playlist_id=1);

-- query to display top songs
select  s.song_name,count(usp.song_id) as playlist_count
from songs s
left join user_playlists_songs usp
on s.song_id=usp.song_id 
group by s.song_id
order by playlist_count desc;


-- query to display top 1 songs
select  s.song_name,count(usp.song_id) as playlist_count
from songs s
left join user_playlists_songs usp
on s.song_id=usp.song_id 
group by s.song_id
order by playlist_count desc
limit 1;


















select a.artist_id ,a.artist_name 
from Artists a
left join
Albums al
on a.artist_id=al.artist_id
where album_id is  null;

select song_id,count(song_name) as song_count
from  songs
order by song_count;








 
 
 


    
   






