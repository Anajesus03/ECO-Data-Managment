package pt.iade.ED.Management.models.repositories;

import org.springframework.data.repository.CrudRepository;

import pt.iade.ED.Management.models.Order;

public interface OrderRepository extends CrudRepository<Order, Integer> {
    
}
