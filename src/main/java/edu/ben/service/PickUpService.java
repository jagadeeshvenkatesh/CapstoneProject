package edu.ben.service;

import edu.ben.model.PickUp;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

public interface PickUpService {

    public PickUp getPickUpByListingID(int id);

    public PickUp getPickUpByPickUpID(int id);

    public void save(PickUp pickUp);

    public void update(PickUp pickUp);
}
