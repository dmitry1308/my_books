package ru.schepin.spring_mvc.books.model;

import javax.persistence.*;

@Entity
@Table(name = "sale_points")
public class SalePoint {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "place")
    private String place;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "book_id",referencedColumnName = "id")
    private Book book;

    public SalePoint() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }
}
