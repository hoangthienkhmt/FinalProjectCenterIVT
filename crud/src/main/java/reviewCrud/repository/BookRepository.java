package reviewCrud.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import reviewCrud.entity.BookEntity;

import java.util.List;
@Repository
public interface BookRepository extends CrudRepository<BookEntity,Integer> {

   List<BookEntity> findByNameContaining(String name);
   List<BookEntity> findByCategory_Id(int id);

   //List Sản phẩm by danh mục
   @Query(value = "select * from book where categoryId=?; ", nativeQuery = true)
   public List<BookEntity> listbookBycategory (int categoryId);


}
