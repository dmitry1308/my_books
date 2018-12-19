package ru.schepin.spring_mvc.books.dao;

import ru.schepin.spring_mvc.books.model.Book;

import java.util.List;

public interface BookDao {
    void addBook(Book book);

    void deleteBook(Integer id);

    Book getById(Integer id);

    List<Book> getAllBooks();

    void updateBook(Book book);
}
