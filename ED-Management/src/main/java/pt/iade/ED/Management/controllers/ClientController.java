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

import pt.iade.ED.Management.models.Client;
import pt.iade.ED.Management.models.repositories.ClientRepository;
import pt.iade.ED.Management.models.exceptions.NotFoundException;

@RestController
@RequestMapping(path = "api/clients")
public class ClientController {
    private Logger logger = LoggerFactory.getLogger(ClientController.class);
    @Autowired
    private ClientRepository cRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Client> getClient() {
        logger.info("Sending all clients");
        return cRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Client getClient(@PathVariable int id) {
        logger.info("Sending client with id: "+id);
        Optional<Client> _client = cRepository.findById(id);
        if (_client.isEmpty())
            throw new NotFoundException(""+id,"Client","id");
        else
            return _client.get();
    }

}

