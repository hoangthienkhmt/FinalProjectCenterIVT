package reviewCrud.entity;

import javax.persistence.*;

@Entity
@Table(name ="roles")
public class RoleEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "role")
    private String role;

    @ManyToOne
    @JoinColumn(name = "username")
    private UserEntity userEntity;

    public RoleEntity() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public UserEntity getUserEntity() {
        return userEntity;
    }


    public void setUserEntity(UserEntity userEntity) {
        this.userEntity = userEntity;
    }

}
