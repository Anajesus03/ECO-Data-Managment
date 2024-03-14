package pt.iade.ED.Management.controllers;

import org.springframework.web.bind.annotation.RestController;

import pt.iade.ED.Management.models.Product;
import pt.iade.ED.Management.models.exceptions.NotFoundException;
import pt.iade.ED.Management.models.repositories.ProductRepository;

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

@RestController
@RequestMapping(path = "api/products")
public class ProductController {
    private Logger logger = LoggerFactory.getLogger(ProductController.class);
    @Autowired
    private ProductRepository pRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Product> getProduct() {
        logger.info("Sending all products");
        return pRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Product getClient(@PathVariable int id) {
        logger.info("Sending order with id: "+id);
        Optional<Product> _product = pRepository.findById(id);
        if (_product.isEmpty())
            throw new NotFoundException(""+id,"Product","id");
        else
            return _product.get();
    }

    @PostMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Product saveProduct(@RequestBody Product product) {
        Product savedProduct = pRepository.save(product);
        logger.info("Saving product with id "+savedProduct.getId());
        return savedProduct;
    }

    
}
