/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.loginForm.dao;

import com.loginForm.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Stuti
 */
public class CustomerDao {
private SessionFactory factory;

    public CustomerDao(SessionFactory factory)
    {
        this.factory = factory;
    }
    public boolean saveCustomer(Customer customer)
    {
        boolean b = false;
        try
        {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(customer);
                tx.commit();
                session.close();
                b = true;
        }
        catch(Exception e)
        {
            b = false;
            e.printStackTrace();
        }
        return b;
    }
    public Customer getCustomerByEmailAndPassword(String email, String password)
    {
        Customer customer = null;
        try
        {
            String query = "from Customer where email=:e and password =:p";
            Session session = this.factory.openSession();
            Query q = session.createQuery(query);
            q.setParameter("e",email);
            q.setParameter("p", password);
            customer=(Customer)q.uniqueResult();
            session.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return customer;
    }
    
}



