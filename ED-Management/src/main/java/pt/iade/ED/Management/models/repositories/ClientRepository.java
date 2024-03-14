package pt.iade.ED.Management.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.ED.Management.models.Client;

public interface ClientRepository extends CrudRepository<Client, Integer>{
    

}
