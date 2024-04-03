package ua.andrey.repos;
import org.springframework.transaction.annotation.Transactional;
import ua.andrey.domain.Message;
import org.springframework.data.repository.CrudRepository;
import ua.andrey.domain.User;

import java.util.List;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);
    @Transactional
    void deleteByAuthor(User author);
}
