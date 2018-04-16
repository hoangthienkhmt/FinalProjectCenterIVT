package reviewCrud.entity;

import javax.persistence.*;
import javax.xml.soap.Name;
import java.util.List;

@Entity
@Table(name = "image")
public class ImageEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "imageID")
    private  int id;

    @Column(name = "name")
    private String name;

    @ManyToOne
    @JoinColumn(name="BookId")
    private BookEntity book;

    public ImageEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BookEntity getBook() {
        return book;
    }

    public void setBook(BookEntity book) {
        this.book = book;
    }
}
