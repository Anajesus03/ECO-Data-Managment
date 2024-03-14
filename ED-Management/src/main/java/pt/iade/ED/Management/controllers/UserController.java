package pt.iade.ED.Management.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.ED.Management.models.User;
import pt.iade.ED.Management.models.exceptions.NotFoundException;
import pt.iade.ED.Management.models.repositories.UserRepository;

@RestController
@RequestMapping(path = "api/users")
public class UserController {
    private Logger logger = LoggerFactory.getLogger(UserController.class);
    @Autowired
    private UserRepository uRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<User> getUser() {
        logger.info("Sending all users");
        return uRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public User getClient(@PathVariable int id) {
        logger.info("Sending client with id: "+id);
        Optional<User> _user = uRepository.findById(id);
        if (_user.isEmpty())
            throw new NotFoundException(""+id,"User","id");
        else
            return _user.get();
    }

}
