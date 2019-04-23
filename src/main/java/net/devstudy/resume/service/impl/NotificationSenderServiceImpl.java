package net.devstudy.resume.service.impl;

import net.devstudy.resume.entity.Profile;
import net.devstudy.resume.model.NotificationMessage;
import net.devstudy.resume.service.NotificationSenderService;

public class NotificationSenderServiceImpl implements NotificationSenderService {
    @Override
    public void sendNotification(NotificationMessage message) {

    }

    @Override
    public String getDestinationAddress(Profile profile) {
        return null;
    }
}
