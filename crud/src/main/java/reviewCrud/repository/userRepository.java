package reviewCrud.repository;

import org.springframework.data.repository.CrudRepository;
import reviewCrud.entity.UserEntity;

public interface userRepository extends CrudRepository<UserEntity, String> {
    UserEntity findUserEntitiesByUserName(String username);

}
