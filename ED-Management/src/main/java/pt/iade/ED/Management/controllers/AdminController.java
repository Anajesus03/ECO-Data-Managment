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

import pt.iade.ED.Management.models.Admin;
import pt.iade.ED.Management.models.exceptions.NotFoundException;
import pt.iade.ED.Management.models.repositories.AdminRepository;

@RestController
@RequestMapping(path = "api/admins")
public class AdminController {
    private Logger logger = LoggerFactory.getLogger(AdminController.class);
    @Autowired
    private AdminRepository aRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Admin> getClient() {
        logger.info("Sending all clients");
        return aRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Admin getClient(@PathVariable int id) {
        logger.info("Sending admin with id: "+id);
        Optional<Admin> _admin = aRepository.findById(id);
        if (_admin.isEmpty())
            throw new NotFoundException(""+id,"Admin","id");
        else
            return _admin.get();
    }
}
