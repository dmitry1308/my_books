package ru.schepin.spring_mvc.books.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import ru.schepin.spring_mvc.books.dao.BookDao;
import ru.schepin.spring_mvc.books.model.Book;


import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    private BookDao bookDao;


    public void setBookDao(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    @Transactional
    public void addBook(Book book) {
        this.bookDao.addBook(book);
    }

    @Transactional
    public void deleteBook(Integer id) {
        this.bookDao.deleteBook(id);
    }

    @Transactional
    public Book getById(Integer id) {
        return this.bookDao.getById(id);
    }

    @Transactional
    public List<Book> getAllBooks() {
        return this.bookDao.getAllBooks();
    }

    @Transactional
    public void updateBook(Book book) {
        this.bookDao.updateBook(book);

    }
}
