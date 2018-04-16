package reviewCrud.entity;

import javax.persistence.*;

@Entity
@Table(name = "view")
public class ViewEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "viewID")
    private int viewID;

    @Column(name = "count")
    private int count;

    @ManyToOne
    @JoinColumn(name = "bookID")
    private BookEntity bookEntity;

    public ViewEntity() {
    }

    public int getViewID() {
        return viewID;
    }

    public void setViewID(int viewID) {
        this.viewID = viewID;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public BookEntity getBookEntity() {
        return bookEntity;
    }

    public void setBookEntity(BookEntity bookEntity) {
        this.bookEntity = bookEntity;
    }
}

