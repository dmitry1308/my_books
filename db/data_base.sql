DROP database IF EXISTS mybase;

create database mybase;
alter database mybase default char set cp1251;
use mybase;

create table my_books
	(
		id int auto_increment primary key,
        book_title varchar(45) not null,
        book_author varchar(45) not null,
        book_price varchar(45) not null
	)
    default character set=cp1251;
    
create table sale_points
	(
		id int auto_increment primary key,
        place varchar(45) not null,
        book_id int not null,
        foreign key (book_id) references my_books(id)
    )
			default character set=cp1251;
            
    
DELIMITER $$ 
 CREATE PROCEDURE prepare_my_books()
  BEGIN 
   DECLARE i INT DEFAULT 1; 
   declare count int default 10;
   WHILE i <= count DO 
   INSERT INTO my_books(BOOK_TITLE,BOOK_AUTHOR,BOOK_PRICE) 
   VALUES 
		(
			concat('Название - ', FLOOR(RAND()*(count-1+1))+1),
            concat('Автор - ',FLOOR(RAND()*(count-1+1))+1),
            (FLOOR((RAND()*(2000-1+1))/10)+1)*10
		); 
   SET i = i + 1; 
   END WHILE; 
END$$ category
DELIMITER ;

call  prepare_my_books();


DELIMITER $$ 
 CREATE PROCEDURE prepare_sale_points()
  BEGIN 
   DECLARE i INT DEFAULT 1;
   declare book_count int;
   set book_count=(select count(*) from my_books);
  
  WHILE i <= book_count DO 
   INSERT INTO sale_points(place,book_id) 
   VALUES 
		(
			concat('Место - ',i),
			FLOOR(RAND()*(book_count-1+1))+1
		); 
   SET i = i + 1; 
   END WHILE; 
END$$ category
DELIMITER ;

call  prepare_sale_points();






		