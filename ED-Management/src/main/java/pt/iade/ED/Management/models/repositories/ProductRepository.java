package pt.iade.ED.Management.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.ED.Management.models.Product;

public interface ProductRepository extends CrudRepository<Product, Integer>{
    
}
