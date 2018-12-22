package ru.schepin.spring_mvc.books.model;

import javax.persistence.*;
import java.util.List;


@Entity
@Table(name = "my_books")
public class Book {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "BOOK_TITLE")
    private String bookTitle;

    @Column(name = "BOOK_AUTHOR")
    private String bookAuthor;

    @Column(name = "BOOK_PRICE")
    private int price;


    @OneToMany(mappedBy = "book", fetch = FetchType.LAZY,
            cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SalePoint> points;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBookTitle() {
        return bookTitle;
    }

    public void setBookTitle(String bookTitle) {
        this.bookTitle = bookTitle;
    }

    public String getBookAuthor() {
        return bookAuthor;
    }

    public void setBookAuthor(String bookAuthor) {
        this.bookAuthor = bookAuthor;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public List<SalePoint> getPoints() {
        return points;
    }

    public void setPoints(List<SalePoint> points) {
        this.points = points;
    }


    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", bookTitle='" + bookTitle + '\'' +
                ", bookAuthor='" + bookAuthor + '\'' +
                ", price=" + price +
                ", points=" + points +
                '}';
    }
}

