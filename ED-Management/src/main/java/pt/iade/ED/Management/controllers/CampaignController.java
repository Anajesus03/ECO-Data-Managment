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

import pt.iade.ED.Management.models.Campaign;
import pt.iade.ED.Management.models.exceptions.NotFoundException;
import pt.iade.ED.Management.models.repositories.CampaignRepository;

@RestController
@RequestMapping(path = "api/campaigns")
public class CampaignController {
    private Logger logger = LoggerFactory.getLogger(CampaignRepository.class);
    @Autowired
    private CampaignRepository campRepository;

    @GetMapping(path = "", produces = MediaType.APPLICATION_JSON_VALUE)
    public Iterable<Campaign> getCampaign() {
        logger.info("Sending all campaingns");
        return campRepository.findAll();
    }

    @GetMapping(path = "/{id}", produces = MediaType.APPLICATION_JSON_VALUE)
    public Campaign getCampaing(@PathVariable int id) {
        logger.info("Sending campaign with id: "+id);
        Optional<Campaign> _campaign = campRepository.findById(id);
        if (_campaign.isEmpty())
            throw new NotFoundException(""+id,"campaign","id");
        else
            return _campaign.get();
    }
}
