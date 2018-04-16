package reviewCrud.repository;

import org.springframework.data.repository.CrudRepository;
import reviewCrud.entity.ViewEntity;

import java.util.List;

public interface ViewRepository extends CrudRepository<ViewEntity,Integer> {

    ViewEntity findByBookEntity_Id(int id);
    List<ViewEntity> findTop3ByOrderByCountDesc();
    ViewEntity  findByBookEntity(int id);
}
