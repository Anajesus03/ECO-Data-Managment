package pt.iade.ED.Management.controllers;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import pt.iade.ED.Management.models.Order;
import pt.iade.ED.Management.models.exceptions.NotFoundException;
import pt.iade.ED.Management.models.repositories.OrderRepository;

@RestController
@RequestMapping(path = "api/orders")
public class OrderController {
    private Logger logger = LoggerFactory.getLogger(OrderRepository.class);
    @Autowired
    private OrderRepository oRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Order> getOrder() {
        logger.info("Sending all orders");
        return oRepository.findAll();
    }
    
    @PostMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Order saveOrder(@RequestBody Order order) {
        Order savedOrder = oRepository.save(order);
        logger.info("Saving order with id"+savedOrder.getId());
        return savedOrder;
    }

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Order getClient(@PathVariable int id) {
        logger.info("Sending order with id: "+id);
        Optional<Order> _order = oRepository.findById(id);
        if (_order.isEmpty())
            throw new NotFoundException(""+id,"Order","id");
        else
            return _order.get();
    }

}
