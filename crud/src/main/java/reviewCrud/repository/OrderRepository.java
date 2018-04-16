package reviewCrud.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import reviewCrud.entity.OrderEntity;
@Repository
public interface OrderRepository extends CrudRepository<OrderEntity,Integer>{

}
