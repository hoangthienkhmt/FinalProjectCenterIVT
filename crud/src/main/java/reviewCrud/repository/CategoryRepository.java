package reviewCrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import reviewCrud.entity.CategoryEntity;
@Repository
public interface CategoryRepository  extends CrudRepository<CategoryEntity,Integer> {

}
