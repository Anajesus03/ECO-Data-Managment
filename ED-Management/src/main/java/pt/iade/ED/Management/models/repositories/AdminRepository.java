package pt.iade.ED.Management.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.ED.Management.models.Admin;

public interface AdminRepository extends CrudRepository<Admin, Integer>{
    
}
