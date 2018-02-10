package edu.ben.service;

import edu.ben.dao.ListingDAO;
import edu.ben.dao.NotificationDAO;
import edu.ben.model.Notification;
import edu.ben.util.NotificationRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.management.Query;
import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class NotificationServiceImpl implements NotificationService {

    NotificationDAO notificationDAO;

    @Autowired
    public void setListingDAO(NotificationDAO notificationDAO) {
        this.notificationDAO = notificationDAO;
    }

    @Override
    public void save(Notification notification) {
        notificationDAO.save(notification);
        //NotificationRunner.update(notification.getUser().getUserID());
    }

    @Override
    public List<Notification> getAllActive() {
        return notificationDAO.getAllActive();
    }

    @Override
    public void deactivate(int notificationID) {
        notificationDAO.deactivate(notificationID);
    }

    @Override
    public List<Notification> getActiveByUserID(int userID) {
        return notificationDAO.getActiveByUserID(userID);
    }

    @Override
    public void markAsSent(List<Notification> notifications) {
        for (Notification n : notifications) {
            n.setSent(1);
            notificationDAO.update(n);
        }
    }
}
