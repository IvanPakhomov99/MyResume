package net.devstudy.resume.service.impl;

import net.devstudy.resume.component.NotificationContentResolver;
import net.devstudy.resume.exception.CantCompleteClientRequestException;
import net.devstudy.resume.model.NotificationMessage;
import net.devstudy.resume.service.NotificationTemplateService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.xml.XmlBeanDefinitionReader;
import org.springframework.core.io.PathResource;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.Collections;
import java.util.Map;

@Service
public class NotificationTemplateServiceImpl implements NotificationTemplateService {
    private static final Logger LOGGER = LoggerFactory.getLogger(NotificationTemplateServiceImpl.class);
    private Map<String, NotificationMessage> notificationTemplate;

    @Value("${notification.config.path}")
    private String notificationConfigPath;

    @Autowired
    private NotificationContentResolver contentResolver;

    @Override
    public NotificationMessage createNotificationMessage(String templateName, Object model) {
        NotificationMessage message = notificationTemplate.get(templateName);
        if(message == null){
            throw new CantCompleteClientRequestException("Notification template '" + templateName + "' not found");
        }
        String resolvedContent = contentResolver.resolve(message.getContent(), model);
        String resolvedSubject = contentResolver.resolve(message.getSubject(), model);
        return null;
    }

    @PostConstruct
    private void PostConstruct(){
        notificationTemplate = Collections.unmodifiableMap(getNotificationTemplate());
        if(notificationTemplate.size() != 1) {
            LOGGER.info("Loaded {} notification templates", notificationTemplate.size());
        }
        else LOGGER.info("Loaded {} notification template", notificationTemplate.size());
    }

    private Map<String, NotificationMessage> getNotificationTemplate(){
        DefaultListableBeanFactory beanFactory = new DefaultListableBeanFactory();
        XmlBeanDefinitionReader reader = new XmlBeanDefinitionReader(beanFactory);
        reader.setValidating(false);
        reader.loadBeanDefinitions(new PathResource(notificationConfigPath));
        return beanFactory.getBeansOfType(NotificationMessage.class);
    }
}
