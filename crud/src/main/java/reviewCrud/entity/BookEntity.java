package reviewCrud.entity;

import javax.persistence.*;
import java.util.List;
@Entity
@Table(name = "book")
public class BookEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "bookID")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "author")
    private String author;

    @Column(name = "description")
    private String description;
    @Column(name="image")
    private String img;
    @Column(name = "price")
    private double price;


    @OneToMany(mappedBy = "bookEntity",fetch = FetchType.EAGER)
    List<ViewEntity> viewList;

    @OneToMany(mappedBy = "book",fetch = FetchType.EAGER)
    List<OrderDetailEntity> orderItermList;

    @OneToMany(mappedBy = "book",fetch =FetchType.EAGER)
    List<CommentEntity> commentList;

    @ManyToOne
    @JoinColumn(name = "categoryId")
    private  CategoryEntity category;
    public BookEntity() {
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public List<ViewEntity> getViewList() {
        return viewList;
    }

    public void setViewList(List<ViewEntity> viewList) {
        this.viewList = viewList;
    }

    public List<OrderDetailEntity> getOrderItermList() {
        return orderItermList;
    }

    public void setOrderItermList(List<OrderDetailEntity> orderItermList) {
        this.orderItermList = orderItermList;
    }

    public List<CommentEntity> getCommentList() {
        return commentList;
    }

    public void setCommentList(List<CommentEntity> commentList) {
        this.commentList = commentList;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public CategoryEntity getCategory() {
        return category;
    }

    public void setCategory(CategoryEntity category) {
        this.category = category;
    }
}
