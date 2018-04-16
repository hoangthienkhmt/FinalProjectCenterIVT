package reviewCrud.repository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import reviewCrud.entity.BookEntity;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;


@Repository
public class Bookrepos {
    @Autowired BookRepository bookRepository;
    public static final int dataPerPage = 9;
    public List<BookEntity> bookEntityList;

    public List<BookEntity> getBooks(int page){
        bookEntityList= (List<BookEntity>) bookRepository.findAll();
        List<BookEntity> result = new ArrayList<>();
        int start = (page - 1) * dataPerPage;
        for (int i = start; i < start + dataPerPage; i++) {
            try{result.add(bookEntityList.get(i));}
            catch (Exception ex){
                break;
            }

        }
        return result;
    }
}
