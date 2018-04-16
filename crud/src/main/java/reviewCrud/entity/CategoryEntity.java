package reviewCrud.entity;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "category")
public class CategoryEntity
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private  int id;

    @Column(name = "nameCategory")
    private String nameCategory;

    @OneToMany(mappedBy = "category",fetch = FetchType.EAGER)
    private List<BookEntity> bookList;

  @OneToMany(mappedBy = "categoryEntity",fetch = FetchType.EAGER)
 private List<PromotionEntity> promotion;

    public CategoryEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNameCategory() {
        return nameCategory;
    }

    public void setNameCategory(String nameCategory) {
        this.nameCategory = nameCategory;
    }

    public List<PromotionEntity> getPromotion() {
        return promotion;
    }

    public void setPromotion(List<PromotionEntity> promotion) {
        this.promotion = promotion;
    }

    public List<BookEntity> getBookList() {
        return bookList;
    }

    public void setBookList(List<BookEntity> bookList) {
        this.bookList = bookList;
    }
}
