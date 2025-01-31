/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.ufjf.semana9.controller;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author gabdumal
 */
public class Listener1 implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println(">>> Context Initialized");
        ServletContext context = sce.getServletContext();
        context.setAttribute("numberLoggedUsers", 0);
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        ServletContext context = sce.getServletContext();
        context.removeAttribute("numberLoggedUsers");
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        System.out.println(">>> Session Created");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        System.out.println(">>> Session Destroyed");
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        HttpSession session = se.getSession();
        if (session != null) {
            String loggedIn = (String) session.getAttribute("loggedIn");
            if (loggedIn != null) {
                if (loggedIn.equals("TRUE")) {
                    ServletContext context = session.getServletContext();
                    int numberLoggedUsers = (int) (context.getAttribute("numberLoggedUsers"));
                    context.setAttribute("numberLoggedUsers", numberLoggedUsers - 1);
                }
            }
        }
    }

    private void handleLoggedInChange(HttpSessionBindingEvent event, boolean firstAdded) {
        System.out.println("+++++ Has attempted to login +++++");

        HttpSession session = event.getSession();
        ServletContext context = session.getServletContext();
//        String usuario = (String) session.getAttribute("usuario");

        String previousLoggedIn = "FALSE";
        if (!firstAdded) {
            previousLoggedIn = (String) event.getValue();
        }

        String currentLoggedIn = (String) session.getAttribute("loggedIn");

        System.out.println("previousLoggedIn: " + previousLoggedIn);
        System.out.println("currentLoggedIn: " + currentLoggedIn);
//        System.out.println("usuario: " + usuario);

        if (previousLoggedIn.equals("FALSE") && currentLoggedIn.equals("TRUE")) {
            int numberLoggedUsers = (int) (context.getAttribute("numberLoggedUsers"));
            context.setAttribute("numberLoggedUsers", numberLoggedUsers + 1);
        } else if (previousLoggedIn.equals("TRUE") && currentLoggedIn.equals("FALSE")) {
            int numberLoggedUsers = (int) (context.getAttribute("numberLoggedUsers"));
            context.setAttribute("numberLoggedUsers", numberLoggedUsers - 1);
        }
        System.out.println("===== Has attempted to login =====");
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        System.out.println(">>> Attribute Added: " + event.getName());
        String addedAttributeName = event.getName();
        if (addedAttributeName.equals("loggedIn")) {
//            HttpSession session = event.getSession();
//            String currentLoggedIn = (String) session.getAttribute("loggedIn");
//            if (currentLoggedIn.equals("TRUE")) {
//                ServletContext context = session.getServletContext();
//                int numberLoggedUsers = (int) (context.getAttribute("numberLoggedUsers"));
//                context.setAttribute("numberLoggedUsers", numberLoggedUsers + 1);
//            }
            this.handleLoggedInChange(event, true);
        }
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        System.out.println(">>> AttributeReplaced: " + event.getName());
        String addedAttributeName = event.getName();
        if (addedAttributeName.equals("loggedIn")) {
            this.handleLoggedInChange(event, false);
        }
    }
}
