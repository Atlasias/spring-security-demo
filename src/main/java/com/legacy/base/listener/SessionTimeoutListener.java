package com.legacy.base.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
@WebListener
public class SessionTimeoutListener implements HttpSessionListener {
    @Override
    public void sessionCreated(HttpSessionEvent event) {
        System.out.println("==== Session is created ====");
        event.getSession().setMaxInactiveInterval(60 * 60);
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent event) {
        // do nothing
        System.out.println("==== Session is destroyed ====");
    }
}