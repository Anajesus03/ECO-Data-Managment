package pt.iade.ED.Management.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.ED.Management.models.User;

public interface UserRepository extends CrudRepository<User, Integer>{}
