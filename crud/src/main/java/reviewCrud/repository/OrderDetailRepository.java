package reviewCrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import reviewCrud.entity.OrderDetailEntity;
import reviewCrud.entity.OrderEntity;
@Repository
public interface OrderDetailRepository extends CrudRepository<OrderDetailEntity,Integer> {

}
